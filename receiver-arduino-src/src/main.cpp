// Settings
#define DEBUG 0                  // 1 = less logging to not affect performance, 2 = extra logging for every key, less performance, 3 = even more
#define PLAYER_CHEAT_DELAY_MS 60 // when the same key is received within this delay, don't send repeated key as long as subsequent keys are below this delay (prevent spamming, cheating and backlog floods)
#define KEYPRESS_MAX_TIME_MS 50  // nominal time between the keydown-keyup event. Must be smaller than PLAYER_DELAY_MS to allow time between keyup and the next keydown.
#define KEYPRESS_MIN_TIME_MS 20  // when MAX_KEYS_SAME_TIME is reached, the keypress time can be shortened to make place for the new key. New key presses are discarded (KEYPRESS_BUFFER 0) or delayed (KEYPRESS_BUFFER 1) to ensure KEYPRESS_MIN_TIME_MS
#define KEYPRESS_BUFFER 1        // 1 = do not discard new keypresses when the max capacity for MAX_KEYS_SAME_TIME is reached but send delayed. Important to keep games like flappy bird running when everyone presses at about the same time
#define KEYPRESS_DELAY_MS 1      // 1 = wait at least this time between sending keys to host
#define SAME_KEY_DELAY_MS 40     // wait at least this time between sending the same key to host (scratch will miss the key if pressed within 32ms)
#define MAX_KEYS_SAME_TIME 6     // maximum keys pressed at the same time (USB Limit). Max rate = 1000 * MAX_KEYS_SAME_TIME / KEYPRESS_MIN_TIME_MS keys/sec
#define MULTI_BUTTON_MODE_DEFAULT false    // multiple buttons per player support when letters are prefixed with 0..9, with only 1ms keydown/keyup. For specific scratch multiplayer game purpose (allow 11 keys per player: a 0a 1a 2a 3a 4a 1b 2b 3b)....
#define KEY_DOWN_UP_EVENT_MODE true // + and - prefixes send separate keydown/keyup events instead of combined keypress. numbers prefixed with + - also are send as numbers even if multibuttonmode key is anabled
#define KEY_DOWN_UP_MAX_TIME_MS 10000  // if no keyup is received, release key after this time
#define KB_LAYOUT1 KeyboardLayout_fr_FR_numpad
#define KB_LAYOUT2 KeyboardLayout_en_US_numpad
#define LONG_PRESS_TIME 500
#define FROM_KEY 26              // 26=enter, 27=esc, 28=up, 29=down, 30=left, 31=right, 32=space, ...
#define TILL_KEY_EXCL 128
#define KEY_DOWN_PREFIX '\x0E'
#define KEY_UP_PREFIX '\x0F'

// LED's and buttons on interface circuit board
#define LED_RED 8   // atmel PB4  Indicates when paused (supress keystrokes)
#define LED_GREEN 9 // atmel PB5  Show receiving data
#define BUTTON1 18  // atmel PF7  Send single char 'a' to keyboard (to test qwerty / azerty)
#define BUTTON2 19  // atmel PF6  Send 30 keys/sec a..z (2x each)
#define BUTTON3 20  // atmel PF5  Send 300 keys/sec a..z (20x each)
#define BUTTON4 21  // atmel PF4  Pause / Resume

// Includes
#include <Arduino.h>
#include <Keyboard.h>
#include <CustomKeyboardLayouts.h>

// Global Variables
bool First = true;
bool Paused = false;
bool MultiButtonMode = MULTI_BUTTON_MODE_DEFAULT;
signed char FastNumPrefix = -1;     // for MultiButtonMode=true: number received to send with next character with only 1ms down/up delay
signed char KeyUpDownPrefix = -1; // current received + or - prefix when KEY_DOWN_UP_EVENT_MODE == true
unsigned long LastKbSendTimeMs = 0;   // last millis() a char press or release was sent to the keyboard, to wait for the next millisecond (send max 1000 events / sec)
unsigned long LastRedLedOnTimeMs = 0; // last millis() the red led was turned on, for off delay
unsigned long LastSerialReceiveTimeMs = 0; // last millis() a char was received from serial
unsigned long LastKbSendTimePerKey[TILL_KEY_EXCL - FROM_KEY]; // last time when this key was sent to the computer
unsigned long LastSerialReceiveTimePerKey[TILL_KEY_EXCL - FROM_KEY]; // last time when this key was received from serial (excluding number prefixed keys when SPECIAL_NUMBER_MODE)
unsigned char KeyState[TILL_KEY_EXCL - FROM_KEY]; // 0=not pressed, 1=pressed, 2=pressed&hold
unsigned char NrKeysDown = 0;
unsigned char SimulateButton = 0;
unsigned char CurrentKbLayout = 1;

signed char DelayedFastNumKeys[TILL_KEY_EXCL - FROM_KEY]; // buffer for prefixed num keys as numbers can easily exceed SAME_KEY_DELAY_MS they are send later
unsigned char ScanBufferIndex;

#if DEBUG > 0
    // only 2kb ram, save space for non debug to have more stack space
    unsigned long NrSendPerKey[TILL_KEY_EXCL - FROM_KEY]; // times a character was sent to the kb
    unsigned long NrSupressedPerKey[TILL_KEY_EXCL - FROM_KEY]; // times a character was supressed

    unsigned long ShortestKeypress; // for debug
    unsigned char MaxKeysDown; // for debug
#endif

#if KEYPRESS_MIN_TIME_MS > KEYPRESS_MAX_TIME_MS
    #error Illegal values
#endif

#if DEBUG > 0
    #warning Debug mode. Avoid using this in real time
#endif

template <class T> void LogNumber(T value, unsigned char digits = 0, char multiplier = 0)
{
    unsigned char revbuf[10];
    unsigned char ctr = 0;

    // avoid printing 0000
    if (multiplier > 0 && value == 0)
        multiplier = 0;

    // make sure digits at at least 1 larger as #decimals (example 0.000)
    if (digits <= -multiplier)
        digits = 1 - multiplier;

    // store number with minimum nr of digits and at least 1 digit
    while (value || !ctr)
    {
        revbuf[ctr++] = (value % 10) + '0';
        value /= 10;
        if (digits > 0)
          digits--;
    }

    // at this point: digits = remaining leading zeros, ctr = actual digits in buffer
    char decimalPos = ctr + digits + multiplier; // position to write the decimal point (# digits before)

    while (digits--)
    {
        if (decimalPos-- == 0)
            Serial.write('.');

        Serial.write('0');
    }

    while (ctr)
    {
        if (decimalPos-- == 0)
            Serial.write('.');

        Serial.write(revbuf[--ctr]);
    }

    while (decimalPos-- > 0)
        Serial.write('0');
}

void LogNumber(long value, unsigned char digits = 0, char multiplier = 0)
{
    if (value < 0)
    {
        Serial.write('-');
        value = -value;
    }

    LogNumber<unsigned long>(value, digits, multiplier);
}

void LogNumber(unsigned long value, unsigned char digits = 0, char multiplier = 0)
{
    LogNumber<unsigned long>(value, digits, multiplier);
}

void LogPStr(const char* pstr)
{
    while (char c = pgm_read_byte(pstr++))
        Serial.write(c);
}

void LogChar(char c)
{
    Serial.write(c);
}

void SetLedR(bool state)
{
    digitalWrite(LED_RED, state ? 1 : 0);
}

void SetLedG(bool state)
{
    digitalWrite(LED_GREEN, state ? 1 : 0);
}

void BlinckLeds()
{
    for (unsigned char i = 0; i < 10; i++)
    {
        delay(100);
        SetLedR(i % 2 == 0);
        SetLedG(i % 2 == 1);
    }
    
    SetLedR(Paused);
    SetLedG(MultiButtonMode);
}

void ClearTimers()
{
    LastKbSendTimeMs = 0;
    LastSerialReceiveTimeMs = 0;
    LastRedLedOnTimeMs = 0;
    for (unsigned char i = 0; i < (TILL_KEY_EXCL - FROM_KEY); i++)
    {
        LastSerialReceiveTimePerKey[i] = 0;
        LastKbSendTimePerKey[i] = 0;
        DelayedFastNumKeys[i] = -1;

        #if DEBUG > 0
            NrSendPerKey[i] = 0;
            NrSupressedPerKey[i] = 0;
        #endif
    }
    #if DEBUG > 0
        MaxKeysDown = 0;
        ShortestKeypress = KEYPRESS_MAX_TIME_MS;
    #endif
}

void PressKey(char keyChar, bool holdKeyDown = false)
{
    unsigned char charIndex = keyChar - FROM_KEY;

    // check if already pressed
    if (KeyState[charIndex] != 0)
    {
        #if DEBUG >= 1
            LogPStr(PSTR("Error PressKey() Key is already pressed!\r\n"));
        #endif
        return;
    }

    // Inter key delay
    while ((millis() - LastKbSendTimeMs) < KEYPRESS_DELAY_MS)
        ;

    // Same key delay
    while(millis() - LastKbSendTimePerKey[charIndex] < SAME_KEY_DELAY_MS)
        ;

    Keyboard.press(keyChar);
    KeyState[charIndex] = holdKeyDown ? 2 : 1;
    LastKbSendTimeMs = millis();
    LastKbSendTimePerKey[charIndex] = LastKbSendTimeMs; // ReleaseKeys() needs this to release key after KEYPRESS_TIME_MS
    NrKeysDown++;

    #if DEBUG >= 2
        LogChar('+');
        LogChar(keyChar);
    #endif

    #if DEBUG >= 1
        if (NrKeysDown > MaxKeysDown)
            MaxKeysDown = NrKeysDown;

        NrSendPerKey[charIndex]++;

        if (NrKeysDown > MAX_KEYS_SAME_TIME)
            LogPStr(PSTR("Error PressKey() Exceeded MAX_KEYS_SAME_TIME!\r\n"));
    #endif
}

void ReleaseKey(char keyChar)
{
    unsigned char charIndex = keyChar - FROM_KEY;

    // check if pressed
    if (KeyState[charIndex] == 0)
    {
        #if DEBUG >= 1
            LogPStr(PSTR("Error ReleaseKey(): Key is not pressed!\r\n"));
        #endif
        return;
    }

    //while ((millis() - LastKbSendTimeMs) < KEYPRESS_DELAY_MS)
    //    ;

    Keyboard.release(keyChar);
    KeyState[charIndex] = 0;
    //LastKbSendTimeMs = millis();

    #if DEBUG >= 2
        LogChar('-');
        LogChar(keyChar);
    #endif

    if (NrKeysDown > 0)
        NrKeysDown--;
    #if DEBUG >= 1
        else
            LogPStr(PSTR("Error ReleaseKey() NrKeysDown does not match\r\n"));
    #endif
}

// check all keys and release if necessary. If fast is true, allow shorter time than KEYPRESS_MAX_TIME_MS but not shorter than KEYPRESS_MIN_TIME_MS
void ReleaseKeys(bool fast)
{  
    unsigned long currentTime = millis();
    unsigned long longestKey = 0;
    unsigned char longestKeyIndex = 0;

    // activity led off after 20ms
    if (currentTime - LastSerialReceiveTimeMs > 20)
        SetLedG(MultiButtonMode);

    if (currentTime - LastRedLedOnTimeMs > 20)
        SetLedR(Paused);

    for (unsigned char i = 0; i < (TILL_KEY_EXCL - FROM_KEY); i++)
    {
        if (KeyState[i] != 0)
        {
            unsigned long pressTime = currentTime - LastKbSendTimePerKey[i];
            if ((KeyState[i] == 1 && pressTime >= KEYPRESS_MAX_TIME_MS) || pressTime >= KEY_DOWN_UP_MAX_TIME_MS)
            {
                // Release key
                ReleaseKey(i + FROM_KEY);
                return; // continue on the next main loop iteration to increase respond time
            }

            // find the longest pressed key for later use
            if (pressTime > longestKey)
            {
                longestKey = pressTime;
                longestKeyIndex = i;
            }
        }
    }

    if (fast && NrKeysDown >= MAX_KEYS_SAME_TIME && longestKey >= KEYPRESS_MIN_TIME_MS)
    {
        // queue is full, allow to release the longest pressed key
        ReleaseKey(longestKeyIndex + FROM_KEY);

        #if DEBUG > 0
            if (ShortestKeypress > longestKey)
                ShortestKeypress = longestKey;
        #endif
    }
}

bool BufferFastNumNeeded(unsigned char numPrefix, unsigned char keyChar)
{
    unsigned long currentTime = millis();
    unsigned char charIndex = keyChar - FROM_KEY;
    unsigned char prefixCharIndex = '0' + numPrefix - FROM_KEY;

    if ((currentTime - LastKbSendTimePerKey[prefixCharIndex]) < SAME_KEY_DELAY_MS)
        return true; // prefix key is repeated too soon

    if ((currentTime - LastKbSendTimePerKey[charIndex]) < SAME_KEY_DELAY_MS)
        return true; // player key is repeated too soon

    return false;
}

// check if there are fast num keys ready to send and send them. Result: true if buffer is empty
bool ProcessBufferFastNum(unsigned char charIndex)
{
    signed char numPrefix = DelayedFastNumKeys[charIndex];
    if (numPrefix == -1)
        return true;

    unsigned char keyChar = FROM_KEY + charIndex;
    if (BufferFastNumNeeded(numPrefix, keyChar))
        return false; // keys still not pressable within MAX_KEYS_SAME_TIME

    DelayedFastNumKeys[charIndex] = -1; // remove from buffer

    if (Paused)
        return true;

    // key can be pressed, wait for available MAX_KEYS_SAME_TIME
    while (NrKeysDown >= MAX_KEYS_SAME_TIME)
    {
        // maximum keys already pressed. try to release a key earlier
        ReleaseKeys(true);

        if (NrKeysDown >= MAX_KEYS_SAME_TIME)
        {
            // unable to free key
            SetLedR(!Paused); // blink to indicate overflow
            LastRedLedOnTimeMs = millis();

            #if KEYPRESS_BUFFER != 1
                // do not buffer if release failed
                #if DEBUG > 0
                    NrSupressedPerKey[charIndex]++;
                #endif

                #if DEBUG >= 2
                    LogPStr(PSTR("ProcessChar(): Maximum keys pressed, discard key\r\n"));
                #endif

                return true;
            #endif

            // block till key can be released. keep new keypresses in serial buffer
            delay(1);
        }
    }

    // Player key can still be pressed it previous was not num prefixed
    if (KeyState[charIndex] != 0)
        ReleaseKey(keyChar);

    // Send keydown/up prefix
    PressKey('0' + numPrefix);
    ReleaseKey('0' + numPrefix);

    // Send keydown/up event
    PressKey(keyChar);
    ReleaseKey(keyChar);

    return true;
}

bool BufferFastNum(unsigned char numPrefix, unsigned char keyChar)
{
    if (!BufferFastNumNeeded(numPrefix, keyChar))
        return false;

    unsigned char charIndex = keyChar - FROM_KEY;
    DelayedFastNumKeys[charIndex] = numPrefix;

    return true;
}

void ProcessChar(char c)
{
    if (c >= '0' && c <= '9' && KeyUpDownPrefix == -1)
    {
        #if DEBUG >= 1
            if (FastNumPrefix != -1)
                LogPStr(PSTR("ProcessChar(): number prefixed by number. not supported\r\n"));
        #endif

        FastNumPrefix = c - '0';
        return; // number will be processed next time, or not when special number mode is off. For up/down events, send as number
    }
    
    if (KEY_DOWN_UP_EVENT_MODE && (c == KEY_DOWN_PREFIX || c == KEY_UP_PREFIX))
    {
        #if DEBUG >= 1
            if (FastNumPrefix != -1)
                LogPStr(PSTR("ProcessChar(): keydown.up code prefixed by number. not supported\r\n"));
        #endif

        FastNumPrefix = -1;
        KeyUpDownPrefix = c;
        return; // does not send anything as this indicates to send a down/up event for next character
    }
    
    if (FastNumPrefix != -1 && !MultiButtonMode)
    {
        #if DEBUG >= 1
            LogPStr(PSTR("ProcessChar(): Discard number prefixed char, MultiButtonMode inactive\r\n"));
        #endif

        FastNumPrefix = -1;
        return; // discard number-prefixed keys when special number mode is not active
    }

    // Check valid char
    unsigned char charIndex = c - FROM_KEY;
    if (c < FROM_KEY || c >= TILL_KEY_EXCL)
    {
        #if DEBUG >= 1
            LogPStr(PSTR("ProcessChar(): Unsupported char received\r\n"));
        #endif

        return;
    }

    // check if keyup event was requested
    if (KeyUpDownPrefix == KEY_UP_PREFIX)
    {
        ReleaseKey(c); // safe also when it was not pressed
        KeyUpDownPrefix = -1;
        return;
    }

    // Check time between same player key. As an anti-cheat meausure, extend the wait time if the same key is received below a reasonable "minimum human" time.
    unsigned long prevKeyTime = LastSerialReceiveTimePerKey[charIndex];
    LastSerialReceiveTimePerKey[charIndex] = millis(); // set timer, to allow anti cheat check to block all keypresses if interval is too fast

    if ((prevKeyTime + PLAYER_CHEAT_DELAY_MS) > millis() && KeyUpDownPrefix == -1)
    {
        #if DEBUG > 0
            NrSupressedPerKey[charIndex]++;
        #endif

        #if DEBUG >= 2
            LogPStr(PSTR("ProcessChar(): Supressed repeated key (anti cheat)\r\n"));
        #endif

        // discard key and prefix
        FastNumPrefix = -1;
        return;
    }

    // check if fast key needs to be handled later. for example 1a1b1c2d should be re-arranged to 1a2d1b1c as this is faster and avoids waiting for SAME_KEY_DELAY_MS between 1(a) and 1(b)
    if (FastNumPrefix != -1 && KeyUpDownPrefix == -1 && BufferFastNum(FastNumPrefix, c))
    {
        // process key and prefix on a later time
        FastNumPrefix = -1;
        return;
    }

    // Check if player key already pressed. can happen when anti cheat delay is set shorter than KEYPRESS_MIN_TIME_MS
    // In fast num mode, if survived anti cheat check, allow to release key below KEYPRESS_MIN_TIME_MS (as game should be able to handle 1ms keypresses)
    if (KeyState[charIndex] != 0)
    {
        if (FastNumPrefix == -1 && KeyUpDownPrefix == -1 && (millis() - LastKbSendTimePerKey[charIndex]) < KEYPRESS_MIN_TIME_MS)
        {
            #if DEBUG >= 1
                LogPStr(PSTR("ProcessChar(): Key is already pressed, discard\r\n")); // happens with shorter anti cheat delay than KEYPRESS_MIN_TIME_MS. Discard as it is impossible to execute
            #endif

            LastSerialReceiveTimePerKey[charIndex] = prevKeyTime; // restore timer, do not punish player for next anti cheat check
            // discard key and prefix
            //FastNumPrefix = -1; // already the case
            return;
        }

        ReleaseKey(c); // early release key received to allow re-pressing
    }

    // make room for new keydown as there can be only MAX_KEYS_SAME_TIME pressed at the same time
    while (NrKeysDown >= MAX_KEYS_SAME_TIME)
    {
        // maximum keys already pressed. try to release a key earlier
        ReleaseKeys(true);

        if (NrKeysDown >= MAX_KEYS_SAME_TIME)
        {
            // unable to free key
            SetLedR(!Paused); // blink to indicate overflow
            LastRedLedOnTimeMs = millis();

            #if KEYPRESS_BUFFER != 1
                // do not buffer if release failed
                #if DEBUG > 0
                    NrSupressedPerKey[charIndex]++;
                #endif

                #if DEBUG >= 2
                    LogPStr(PSTR("ProcessChar(): Maximum keys pressed, discard key\r\n"));
                #endif

                // discard key and prefix
                FastNumPrefix = -1;
                KeyUpDownPrefix = -1;
                return;
            #endif

            // block till key can be released. keep new keypresses in serial buffer
            delay(1);
        }
    }

    LastSerialReceiveTimeMs = millis();
    SetLedG(!MultiButtonMode);

    if (Paused)
    {
        // discard key and prefix
        FastNumPrefix = -1;
        KeyUpDownPrefix = -1; // keyup will give a warning because it was not down before, but oke...
        return;
    }

    // Send keydown/up prefix
    if (FastNumPrefix != -1)
    {
        PressKey('0' + FastNumPrefix);
        ReleaseKey('0' + FastNumPrefix);
    }

    // Send keydown event
    PressKey(c, KeyUpDownPrefix == KEY_DOWN_PREFIX);
    KeyUpDownPrefix = -1;

    // In MULTI_BUTTON_MODE prefixed keys are only down for a very short time. The game needs to support this be using keypressed events instead of loop polling
    // normal keys without prefix are pressed bewteen KEYPRESS_MIN_TIME_MS and KEYPRESS_MAX_TIME_MS to support simpeler games using a polling loop
    if (FastNumPrefix != -1)
    {
        ReleaseKey(c);    
        FastNumPrefix = -1;
    }
}

void DebugSendKeysUD(const char* keys, unsigned int intervalMs = 0)
{
    bool release = false;
    while (char c = pgm_read_byte(keys++))
    {
        if (c == '-')
        {
            release = true;
        }
        else if (c == '+')
        {
            release = false;
        }
        else
        {
            if (release)
                Keyboard.release(c);
            else
            {
                Keyboard.press(c);
                delay(intervalMs);
            }
        }
    }
}

unsigned int DebugSendKeys(const char* keys, unsigned int intervalMs = 1)
{
    unsigned int result = 0;
    while (char c = pgm_read_byte(keys++))
    {
        if (c >= FROM_KEY && c <= TILL_KEY_EXCL)
        {
            Keyboard.press(c);
            Keyboard.release(c);
            result++;
        }

        delay(intervalMs);
    }

    return result;
}

unsigned int DebugSendChars(const char* keys, unsigned int intervalMs = 1)
{
    unsigned int result = 0;
    while (char c = pgm_read_byte(keys++))
    {
        unsigned long start = millis();

        if (c >= FROM_KEY && c <= TILL_KEY_EXCL)
        {
            ProcessChar(c);
            result++;
        }

        unsigned char index = 'a' - FROM_KEY;
        while (millis() - start < intervalMs)
        {
            ProcessBufferFastNum(index);
            if (++index > 'z' - FROM_KEY)
                index = 'a' - FROM_KEY;
        }
    }

    // send remaining in buffer
    bool completed;
    do
    {
        completed = true;
        for (unsigned char index = 'a' - FROM_KEY; index <= 'z' - FROM_KEY; index++)
            if (!ProcessBufferFastNum(index))
                completed = false;
    } while (!completed);

    return result;
}

void SpeedTest(int nrKeys, unsigned char nrDiffKeys, int delayMs)
{
    unsigned char keyIndex = 0;
    for (int i = 0; i < nrKeys; i++)
    {
        ProcessChar('a' + keyIndex);
        keyIndex = (keyIndex + 1) % nrDiffKeys;
        for (int d = 0; d < delayMs; d++)
        {
            delay(1);
            ReleaseKeys(false);
        }
    }
}

void SpeedTest2(int nrKeys, int keyPressTimeMs, int intervalMs, bool numtest)
{
    for (int i = 0; i < nrKeys; i++)
    {
        char c = 'a' + (i % 26);
        if (numtest && (i % 2) == 0)
            c = '1' + ((i / 2) % 8);

        if (numtest && (i % 2) != 0)
            c = 'a' + ((i / 2) % 26);

        Keyboard.press(c);
        delay(keyPressTimeMs);
        Keyboard.release(c);

        if (intervalMs > keyPressTimeMs)
            delay(intervalMs - keyPressTimeMs);
    }
}

void SpeedTest3(int nrKeys, int intervalMs, bool numtest)
{
    for (int i = 0; i < nrKeys; i++)
    {
        char c = 'a' + (i % 26);

        if (numtest && (i % 2) == 0)
            c = '1' + ((i / 2) % 8);

        if (numtest && (i % 2) != 0)
            c = 'a' + ((i / 2) % 26);

        ProcessChar(c);
        delay(intervalMs);
    }
}

void ProcessButtons()
{
    bool button1Pressed = digitalRead(BUTTON1) == LOW;
    bool button2Pressed = digitalRead(BUTTON2) == LOW;
    bool button3Pressed = digitalRead(BUTTON3) == LOW;
    bool button4Pressed = digitalRead(BUTTON4) == LOW;

    if (button1Pressed || SimulateButton == 1)
    {
        bool longPress = false;
        unsigned long start = millis();
        while (digitalRead(BUTTON1) == LOW)
        {
            if (millis() - start > LONG_PRESS_TIME)
            {
                longPress = true;
                BlinckLeds();
            }
        }

        if (!longPress)
            ProcessChar('a');

        else
        {
            if (CurrentKbLayout == 1)
            {
                CurrentKbLayout = 2;
                Keyboard.begin(KB_LAYOUT2);
            }
            else
            {
                CurrentKbLayout = 1;
                Keyboard.begin(KB_LAYOUT1);
            }
        }

        delay(50); // bounce reduce
    }

    if (button2Pressed || SimulateButton == 2)
    {
        SpeedTest(26, 26, 5); // 26 keys in 130 ms
        delay(150); // repeat interval
    }
    if (button3Pressed || SimulateButton == 3)
        SpeedTest(260, 26, 3); // 300 keys/sec

    if (button4Pressed || SimulateButton == 4)
    {
        SetLedG(MultiButtonMode);
        bool longPress = false;
        unsigned long start = millis();
        while (digitalRead(BUTTON4) == LOW)
        {
            if (millis() - start > LONG_PRESS_TIME)
            {
                longPress = true;
                SetLedG(!MultiButtonMode);
            }
        }

        if (!longPress)
        {
            // short press = pause
            Paused = !Paused;
            SetLedR(Paused);
        }
        else
        {
            // long press = toggle special number mode
            MultiButtonMode = !MultiButtonMode;
        }

        delay(50); // bounce reduce
    }

    if (SimulateButton == 9)
    {
        unsigned long start = millis();
        unsigned int keys = 0;
        for (int i = 0; i < 16; i++)
            keys += DebugSendChars(PSTR("1a1b1c2d2e2f3g3h3i4j4k4l5m5n5o6p6a6r7s7t7u8v8w8x9y9z"), 3);
            
        unsigned long stop = millis();

        LogNumber(keys);
        LogPStr(PSTR(" pressed in "));
        LogNumber(stop - start);
        LogPStr(PSTR(" ms.\r\n"));
    }

    SimulateButton = 0;
}

void setup()
{
    // Init variables
    for (unsigned char i = 0; i < (TILL_KEY_EXCL - FROM_KEY); i++)
        KeyState[i] = 0;

    ClearTimers();

    // Init hardware
    pinMode(LED_RED, OUTPUT);
    pinMode(LED_GREEN, OUTPUT);
    pinMode(BUTTON1, INPUT_PULLUP);
    pinMode(BUTTON2, INPUT_PULLUP);
    pinMode(BUTTON3, INPUT_PULLUP);
    pinMode(BUTTON4, INPUT_PULLUP);

    SetLedR(true); // indicate startup (1 sec)
    SetLedG(true);

    #if DEBUG >= 1
        Serial.begin(115200);
        while (!Serial)
        ;
    #endif

    Serial1.begin(115200);
    while (!Serial1)
        ;

    CurrentKbLayout = 1;
    Keyboard.begin(KB_LAYOUT1);
}

void loop()
{
    if (First)
    {
        // Startup delay 1 sec
        First = false;
        ScanBufferIndex = 'a' - FROM_KEY;

        // blink leds
        BlinckLeds();

        #if DEBUG >= 1
            LogPStr(PSTR("Microbit game receiver ready!\r\n"));
            LogPStr(PSTR("In DEBUG Mode "));
            Serial.write('0' + DEBUG);
            LogPStr(PSTR(". Using anti-spam delay of "));
            LogNumber(PLAYER_CHEAT_DELAY_MS);
            LogPStr(PSTR("ms and a keypress time between "));
            LogNumber(KEYPRESS_MIN_TIME_MS);
            LogPStr(PSTR("ms and "));
            LogNumber(KEYPRESS_MAX_TIME_MS);
            LogPStr(PSTR("ms.\r\n"));
        #endif
    }

    #if DEBUG >= 1
        // Debug
        if (Serial.available())
        {
        char cmd = Serial.read();
        if (cmd == '?')
        {
            LogPStr(PSTR("\r\nStats (c=clear):\r\n"
                "Shortest keypress: "));
            LogNumber(ShortestKeypress);
            LogPStr(PSTR("ms\r\n"
                "Max keys down: "));
            LogNumber(MaxKeysDown);
            LogPStr(PSTR(" (USB limit=6)\r\n"));

            for (unsigned char i = 0; i < (TILL_KEY_EXCL - FROM_KEY); i++)
            {
                if (LastSerialReceiveTimePerKey[i] == 0)
                    continue;

                LogPStr(PSTR("Key '"));
                Serial.write(i + FROM_KEY);
                LogPStr(PSTR(": Send: "));
                LogNumber(NrSendPerKey[i]);
                LogPStr(PSTR(": Supr: "));
                LogNumber(NrSupressedPerKey[i]);
                LogPStr(PSTR("\r\n"));
            }
            LogPStr(PSTR("------\r\nPress c to clear\r\n"));
            LogPStr(PSTR("Press 1..9 to simulate button\r\n"));
        }
        else if (cmd == 'c')
        {
            ClearTimers();
            LogPStr(PSTR("Stats cleared.\r\n"));
        }
        else if (cmd >= '1' && cmd <= '9')
        {
            SimulateButton = cmd - '0';
            LogPStr(PSTR("Simulating button "));
            LogChar(cmd);
            LogPStr(PSTR(" in 2 seconds..."));
            delay(2000);
            LogPStr(PSTR("GO!\r\n"));
        }
        else
        {
            //delay(100);
            //Keyboard.write(cmd);
        }
        }
    #endif

    if (Serial1.available())
    {
        char c = Serial1.read();

        #if DEBUG >= 3
            LogPStr(PSTR("Rx char "));
            LogNumber(c);
            LogPStr(PSTR(" at "));
            LogNumber(millis());
            LogPStr(PSTR(" ms.\r\n"));
        #endif

        ProcessChar(c);
    }

    ReleaseKeys(false); //check all keys and release if necessary
    ProcessButtons();
    ProcessBufferFastNum(ScanBufferIndex);

    if (++ScanBufferIndex > 'z' - FROM_KEY)
        ScanBufferIndex = 'a' - FROM_KEY;    
}