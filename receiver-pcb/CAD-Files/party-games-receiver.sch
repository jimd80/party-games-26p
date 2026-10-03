<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.7.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="2.5" unitdist="mm" unit="mm" style="lines" multiple="2" display="yes" altdistance="0.5" altunitdist="mm" altunit="mm"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="8" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="50" name="dxf" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="200" name="200bmp" color="1" fill="10" visible="no" active="no"/>
<layer number="250" name="Descript" color="3" fill="1" visible="no" active="no"/>
<layer number="251" name="SMDround" color="12" fill="11" visible="no" active="no"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="d2s_new">
<description>D2 Solutions components library (new)</description>
<packages>
<package name="SOCKET_MBIT_H">
<text x="-25.5" y="41.71" size="1" layer="25" font="vector" ratio="15">&gt;NAME</text>
<text x="-25.05" y="-2.78" size="1" layer="27" font="vector" ratio="15">&gt;VALUE</text>
<hole x="-13" y="0" drill="1.6"/>
<hole x="13" y="0" drill="1.6"/>
<pad name="P$1" x="27" y="1.66" drill="0.5" diameter="1.9" shape="long" rot="R90"/>
<pad name="P$2" x="-27" y="1.66" drill="0.5" diameter="1.9" shape="long" rot="R90"/>
<wire x1="-28.4" y1="3.5" x2="-25.8" y2="3.5" width="0.2" layer="21"/>
<wire x1="-25.8" y1="3.5" x2="25.8" y2="3.5" width="0.2" layer="21"/>
<wire x1="25.8" y1="3.5" x2="28.4" y2="3.5" width="0.2" layer="21"/>
<wire x1="28.4" y1="3.5" x2="28.4" y2="-6.5" width="0.2" layer="21"/>
<wire x1="28.4" y1="-6.5" x2="-28.4" y2="-6.5" width="0.2" layer="21"/>
<wire x1="-28.4" y1="-6.5" x2="-28.4" y2="3.5" width="0.2" layer="21"/>
<wire x1="26.75" y1="2.31" x2="26.75" y2="1.01" width="0.01" layer="46"/>
<wire x1="27.25" y1="2.31" x2="27.25" y2="1.01" width="0.01" layer="46"/>
<wire x1="26.75" y1="2.31" x2="27.25" y2="2.31" width="0.01" layer="46" curve="-180"/>
<wire x1="27.25" y1="1.01" x2="26.75" y2="1.01" width="0.01" layer="46" curve="-180"/>
<wire x1="-27.25" y1="2.31" x2="-27.25" y2="1.01" width="0.01" layer="46"/>
<wire x1="-26.75" y1="2.31" x2="-26.75" y2="1.01" width="0.01" layer="46"/>
<wire x1="-27.25" y1="2.31" x2="-26.75" y2="2.31" width="0.01" layer="46" curve="-180"/>
<wire x1="-26.75" y1="1.01" x2="-27.25" y2="1.01" width="0.01" layer="46" curve="-180"/>
<smd name="1" x="-24.765" y="-6.85" dx="0.8" dy="2.5" layer="1"/>
<wire x1="-25.8" y1="3.5" x2="-25.8" y2="39.56" width="0.2" layer="21" style="shortdash"/>
<wire x1="-25.8" y1="39.56" x2="25.8" y2="39.6" width="0.2" layer="21" style="shortdash"/>
<wire x1="25.8" y1="39.6" x2="25.8" y2="3.5" width="0.2" layer="21" style="shortdash"/>
<text x="-15.5" y="25" size="5" layer="21" font="vector" ratio="15">Micro:bit</text>
<smd name="2" x="-23.495" y="-6.85" dx="0.8" dy="2.5" layer="1"/>
<smd name="3" x="-22.225" y="-6.85" dx="0.8" dy="2.5" layer="1"/>
<smd name="4" x="-20.955" y="-6.85" dx="0.8" dy="2.5" layer="1"/>
<smd name="5" x="-19.685" y="-6.85" dx="0.8" dy="2.5" layer="1"/>
<smd name="6" x="-18.415" y="-6.85" dx="0.8" dy="2.5" layer="1"/>
<smd name="7" x="-17.145" y="-6.85" dx="0.8" dy="2.5" layer="1"/>
<smd name="8" x="-15.875" y="-6.85" dx="0.8" dy="2.5" layer="1"/>
<smd name="9" x="-14.605" y="-6.85" dx="0.8" dy="2.5" layer="1"/>
<smd name="10" x="-13.335" y="-6.85" dx="0.8" dy="2.5" layer="1"/>
<smd name="11" x="-12.065" y="-6.85" dx="0.8" dy="2.5" layer="1"/>
<smd name="12" x="-10.795" y="-6.85" dx="0.8" dy="2.5" layer="1"/>
<smd name="13" x="-9.525" y="-6.85" dx="0.8" dy="2.5" layer="1"/>
<smd name="14" x="-8.255" y="-6.85" dx="0.8" dy="2.5" layer="1"/>
<smd name="15" x="-6.985" y="-6.85" dx="0.8" dy="2.5" layer="1"/>
<smd name="16" x="-5.715" y="-6.85" dx="0.8" dy="2.5" layer="1"/>
<smd name="17" x="-4.445" y="-6.85" dx="0.8" dy="2.5" layer="1"/>
<smd name="18" x="-3.175" y="-6.85" dx="0.8" dy="2.5" layer="1"/>
<smd name="19" x="-1.905" y="-6.85" dx="0.8" dy="2.5" layer="1"/>
<smd name="20" x="-0.635" y="-6.85" dx="0.8" dy="2.5" layer="1"/>
<smd name="21" x="0.635" y="-6.85" dx="0.8" dy="2.5" layer="1"/>
<smd name="22" x="1.905" y="-6.85" dx="0.8" dy="2.5" layer="1"/>
<smd name="23" x="3.175" y="-6.85" dx="0.8" dy="2.5" layer="1"/>
<smd name="24" x="4.445" y="-6.85" dx="0.8" dy="2.5" layer="1"/>
<smd name="25" x="5.715" y="-6.85" dx="0.8" dy="2.5" layer="1"/>
<smd name="26" x="6.985" y="-6.85" dx="0.8" dy="2.5" layer="1"/>
<smd name="27" x="8.255" y="-6.85" dx="0.8" dy="2.5" layer="1"/>
<smd name="28" x="9.525" y="-6.85" dx="0.8" dy="2.5" layer="1"/>
<smd name="29" x="10.795" y="-6.85" dx="0.8" dy="2.5" layer="1"/>
<smd name="30" x="12.065" y="-6.85" dx="0.8" dy="2.5" layer="1"/>
<smd name="31" x="13.335" y="-6.85" dx="0.8" dy="2.5" layer="1"/>
<smd name="32" x="14.605" y="-6.85" dx="0.8" dy="2.5" layer="1"/>
<smd name="33" x="15.875" y="-6.85" dx="0.8" dy="2.5" layer="1"/>
<smd name="34" x="17.145" y="-6.85" dx="0.8" dy="2.5" layer="1"/>
<smd name="35" x="18.415" y="-6.85" dx="0.8" dy="2.5" layer="1"/>
<smd name="36" x="19.685" y="-6.85" dx="0.8" dy="2.5" layer="1"/>
<smd name="37" x="20.955" y="-6.85" dx="0.8" dy="2.5" layer="1"/>
<smd name="38" x="22.225" y="-6.85" dx="0.8" dy="2.5" layer="1"/>
<smd name="39" x="23.495" y="-6.85" dx="0.8" dy="2.5" layer="1"/>
<smd name="40" x="24.765" y="-6.85" dx="0.8" dy="2.5" layer="1"/>
</package>
<package name="SWITCH_PUSH_5MM">
<wire x1="3.302" y1="-0.762" x2="3.048" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="3.302" y1="-0.762" x2="3.302" y2="0.762" width="0.1524" layer="21"/>
<wire x1="3.048" y1="0.762" x2="3.302" y2="0.762" width="0.1524" layer="21"/>
<wire x1="3.048" y1="1.016" x2="3.048" y2="2.54" width="0.1524" layer="51"/>
<wire x1="-3.302" y1="0.762" x2="-3.048" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="0.762" x2="-3.302" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="-3.048" y1="-0.762" x2="-3.302" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="3.048" y1="2.54" x2="2.54" y2="3.048" width="0.1524" layer="51"/>
<wire x1="2.54" y1="-3.048" x2="3.048" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="3.048" y1="-2.54" x2="3.048" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="3.048" x2="-3.048" y2="2.54" width="0.1524" layer="51"/>
<wire x1="-3.048" y1="2.54" x2="-3.048" y2="1.016" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="-3.048" x2="-3.048" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="-3.048" y1="-2.54" x2="-3.048" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="-1.27" width="0.0508" layer="51"/>
<wire x1="1.27" y1="-1.27" x2="-1.27" y2="-1.27" width="0.0508" layer="51"/>
<wire x1="1.27" y1="-1.27" x2="1.27" y2="1.27" width="0.0508" layer="51"/>
<wire x1="-1.27" y1="1.27" x2="1.27" y2="1.27" width="0.0508" layer="51"/>
<wire x1="-1.27" y1="3.048" x2="-1.27" y2="2.794" width="0.0508" layer="21"/>
<wire x1="1.27" y1="2.794" x2="-1.27" y2="2.794" width="0.0508" layer="21"/>
<wire x1="1.27" y1="2.794" x2="1.27" y2="3.048" width="0.0508" layer="21"/>
<wire x1="1.143" y1="-2.794" x2="-1.27" y2="-2.794" width="0.0508" layer="21"/>
<wire x1="1.143" y1="-2.794" x2="1.143" y2="-3.048" width="0.0508" layer="21"/>
<wire x1="-1.27" y1="-2.794" x2="-1.27" y2="-3.048" width="0.0508" layer="21"/>
<wire x1="2.54" y1="-3.048" x2="2.159" y2="-3.048" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="-3.048" x2="-2.159" y2="-3.048" width="0.1524" layer="51"/>
<wire x1="-2.159" y1="-3.048" x2="-1.27" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="3.048" x2="-2.159" y2="3.048" width="0.1524" layer="51"/>
<wire x1="2.54" y1="3.048" x2="2.159" y2="3.048" width="0.1524" layer="51"/>
<wire x1="2.159" y1="3.048" x2="1.27" y2="3.048" width="0.1524" layer="21"/>
<wire x1="1.27" y1="3.048" x2="-1.27" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="3.048" x2="-2.159" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-3.048" x2="1.143" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="1.143" y1="-3.048" x2="2.159" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="3.048" y1="-0.762" x2="3.048" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="3.048" y1="0.762" x2="3.048" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-3.048" y1="-0.762" x2="-3.048" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-3.048" y1="0.762" x2="-3.048" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-2.159" x2="1.27" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="1.27" y1="2.286" x2="-1.27" y2="2.286" width="0.1524" layer="51"/>
<wire x1="-2.413" y1="1.27" x2="-2.413" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-2.413" y1="-0.508" x2="-2.413" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-2.413" y1="0.508" x2="-2.159" y2="-0.381" width="0.1524" layer="51"/>
<circle x="0" y="0" radius="1.778" width="0.1524" layer="21"/>
<circle x="-2.159" y="-2.159" radius="0.508" width="0.1524" layer="51"/>
<circle x="2.159" y="-2.032" radius="0.508" width="0.1524" layer="51"/>
<circle x="2.159" y="2.159" radius="0.508" width="0.1524" layer="51"/>
<circle x="-2.159" y="2.159" radius="0.508" width="0.1524" layer="51"/>
<circle x="0" y="0" radius="0.635" width="0.0508" layer="51"/>
<circle x="0" y="0" radius="0.254" width="0.1524" layer="21"/>
<pad name="1" x="-3.2512" y="2.2606" drill="1" shape="long"/>
<pad name="3" x="-3.2512" y="-2.2606" drill="1" shape="long"/>
<pad name="2" x="3.2512" y="2.2606" drill="1" shape="long"/>
<pad name="4" x="3.2512" y="-2.2606" drill="1" shape="long"/>
<text x="-3.048" y="3.683" size="1" layer="25" font="vector" ratio="15">&gt;NAME</text>
<text x="-3.048" y="-5.08" size="1" layer="27" font="vector" ratio="15">&gt;VALUE</text>
</package>
<package name="RES_0805">
<wire x1="-0.5" y1="0.55" x2="0.5" y2="0.55" width="0.1" layer="51"/>
<wire x1="-0.5" y1="-0.55" x2="0.5" y2="-0.55" width="0.1" layer="51"/>
<wire x1="-1.95" y1="0.95" x2="1.95" y2="0.95" width="0.05" layer="39"/>
<wire x1="1.95" y1="0.95" x2="1.95" y2="-0.95" width="0.05" layer="39"/>
<wire x1="1.95" y1="-0.95" x2="-1.95" y2="-0.95" width="0.05" layer="39"/>
<wire x1="-1.95" y1="-0.95" x2="-1.95" y2="0.95" width="0.05" layer="39"/>
<smd name="1" x="-1" y="0" dx="1.2" dy="1.3" layer="1"/>
<smd name="2" x="1" y="0" dx="1.2" dy="1.3" layer="1"/>
<text x="-2.5" y="3" size="1" layer="25" font="vector" ratio="15">&gt;NAME</text>
<text x="-2.5" y="1.5" size="1" layer="27" font="vector" ratio="15">&gt;VALUE</text>
<rectangle x1="0.5" y1="-0.6" x2="1" y2="0.6" layer="51"/>
<rectangle x1="-1" y1="-0.6" x2="-0.5" y2="0.6" layer="51"/>
<rectangle x1="-0.1999" y1="-0.5001" x2="0.1999" y2="0.5001" layer="35"/>
</package>
<package name="CON_HDR_M_1X17">
<wire x1="-1.016" y1="1.27" x2="-1.27" y2="1.016" width="0.2" layer="21"/>
<wire x1="-1.27" y1="1.016" x2="-1.27" y2="-1.016" width="0.2" layer="21"/>
<wire x1="-1.27" y1="-1.016" x2="-1.016" y2="-1.27" width="0.2" layer="21"/>
<wire x1="-1.016" y1="-1.27" x2="1.016" y2="-1.27" width="0.2" layer="21"/>
<wire x1="1.016" y1="-1.27" x2="1.27" y2="-1.016" width="0.2" layer="21"/>
<wire x1="1.27" y1="-1.016" x2="1.27" y2="1.016" width="0.2" layer="21"/>
<wire x1="1.27" y1="1.016" x2="1.016" y2="1.27" width="0.2" layer="21"/>
<wire x1="-1.016" y1="-1.27" x2="-1.27" y2="-1.524" width="0.2" layer="21"/>
<wire x1="-1.27" y1="-1.524" x2="-1.27" y2="-3.556" width="0.2" layer="21"/>
<wire x1="-1.27" y1="-3.556" x2="-1.016" y2="-3.81" width="0.2" layer="21"/>
<wire x1="-1.016" y1="-3.81" x2="1.016" y2="-3.81" width="0.2" layer="21"/>
<wire x1="1.016" y1="-3.81" x2="1.27" y2="-3.556" width="0.2" layer="21"/>
<wire x1="1.27" y1="-3.556" x2="1.27" y2="-1.524" width="0.2" layer="21"/>
<wire x1="1.27" y1="-1.524" x2="1.016" y2="-1.27" width="0.2" layer="21"/>
<wire x1="-1.016" y1="-24.13" x2="-1.27" y2="-24.384" width="0.2" layer="21"/>
<wire x1="-1.27" y1="-24.384" x2="-1.27" y2="-26.416" width="0.2" layer="21"/>
<wire x1="-1.27" y1="-26.416" x2="-1.016" y2="-26.67" width="0.2" layer="21"/>
<wire x1="-1.016" y1="-26.67" x2="1.016" y2="-26.67" width="0.2" layer="21"/>
<wire x1="1.016" y1="-26.67" x2="1.27" y2="-26.416" width="0.2" layer="21"/>
<wire x1="1.27" y1="-26.416" x2="1.27" y2="-24.384" width="0.2" layer="21"/>
<wire x1="1.27" y1="-24.384" x2="1.016" y2="-24.13" width="0.2" layer="21"/>
<wire x1="-1.016" y1="-26.67" x2="-1.27" y2="-26.924" width="0.2" layer="21"/>
<wire x1="-1.27" y1="-26.924" x2="-1.27" y2="-28.956" width="0.2" layer="21"/>
<wire x1="-1.27" y1="-28.956" x2="-1.016" y2="-29.21" width="0.2" layer="21"/>
<wire x1="-1.016" y1="-29.21" x2="1.016" y2="-29.21" width="0.2" layer="21"/>
<wire x1="1.016" y1="-29.21" x2="1.27" y2="-28.956" width="0.2" layer="21"/>
<wire x1="1.27" y1="-28.956" x2="1.27" y2="-26.924" width="0.2" layer="21"/>
<wire x1="1.27" y1="-26.924" x2="1.016" y2="-26.67" width="0.2" layer="21"/>
<wire x1="-1.016" y1="-19.05" x2="-1.27" y2="-19.304" width="0.2" layer="21"/>
<wire x1="-1.27" y1="-19.304" x2="-1.27" y2="-21.336" width="0.2" layer="21"/>
<wire x1="-1.27" y1="-21.336" x2="-1.016" y2="-21.59" width="0.2" layer="21"/>
<wire x1="-1.016" y1="-21.59" x2="1.016" y2="-21.59" width="0.2" layer="21"/>
<wire x1="1.016" y1="-21.59" x2="1.27" y2="-21.336" width="0.2" layer="21"/>
<wire x1="1.27" y1="-21.336" x2="1.27" y2="-19.304" width="0.2" layer="21"/>
<wire x1="1.27" y1="-19.304" x2="1.016" y2="-19.05" width="0.2" layer="21"/>
<wire x1="-1.016" y1="-21.59" x2="-1.27" y2="-21.844" width="0.2" layer="21"/>
<wire x1="-1.27" y1="-21.844" x2="-1.27" y2="-23.876" width="0.2" layer="21"/>
<wire x1="-1.27" y1="-23.876" x2="-1.016" y2="-24.13" width="0.2" layer="21"/>
<wire x1="-1.016" y1="-24.13" x2="1.016" y2="-24.13" width="0.2" layer="21"/>
<wire x1="1.016" y1="-24.13" x2="1.27" y2="-23.876" width="0.2" layer="21"/>
<wire x1="1.27" y1="-23.876" x2="1.27" y2="-21.844" width="0.2" layer="21"/>
<wire x1="1.27" y1="-21.844" x2="1.016" y2="-21.59" width="0.2" layer="21"/>
<wire x1="-1.016" y1="-13.97" x2="-1.27" y2="-14.224" width="0.2" layer="21"/>
<wire x1="-1.27" y1="-14.224" x2="-1.27" y2="-16.256" width="0.2" layer="21"/>
<wire x1="-1.27" y1="-16.256" x2="-1.016" y2="-16.51" width="0.2" layer="21"/>
<wire x1="-1.016" y1="-16.51" x2="1.016" y2="-16.51" width="0.2" layer="21"/>
<wire x1="1.016" y1="-16.51" x2="1.27" y2="-16.256" width="0.2" layer="21"/>
<wire x1="1.27" y1="-16.256" x2="1.27" y2="-14.224" width="0.2" layer="21"/>
<wire x1="1.27" y1="-14.224" x2="1.016" y2="-13.97" width="0.2" layer="21"/>
<wire x1="-1.016" y1="-16.51" x2="-1.27" y2="-16.764" width="0.2" layer="21"/>
<wire x1="-1.27" y1="-16.764" x2="-1.27" y2="-18.796" width="0.2" layer="21"/>
<wire x1="-1.27" y1="-18.796" x2="-1.016" y2="-19.05" width="0.2" layer="21"/>
<wire x1="-1.016" y1="-19.05" x2="1.016" y2="-19.05" width="0.2" layer="21"/>
<wire x1="1.016" y1="-19.05" x2="1.27" y2="-18.796" width="0.2" layer="21"/>
<wire x1="1.27" y1="-18.796" x2="1.27" y2="-16.764" width="0.2" layer="21"/>
<wire x1="1.27" y1="-16.764" x2="1.016" y2="-16.51" width="0.2" layer="21"/>
<wire x1="-1.016" y1="-8.89" x2="-1.27" y2="-9.144" width="0.2" layer="21"/>
<wire x1="-1.27" y1="-9.144" x2="-1.27" y2="-11.176" width="0.2" layer="21"/>
<wire x1="-1.27" y1="-11.176" x2="-1.016" y2="-11.43" width="0.2" layer="21"/>
<wire x1="-1.016" y1="-11.43" x2="1.016" y2="-11.43" width="0.2" layer="21"/>
<wire x1="1.016" y1="-11.43" x2="1.27" y2="-11.176" width="0.2" layer="21"/>
<wire x1="1.27" y1="-11.176" x2="1.27" y2="-9.144" width="0.2" layer="21"/>
<wire x1="1.27" y1="-9.144" x2="1.016" y2="-8.89" width="0.2" layer="21"/>
<wire x1="-1.016" y1="-11.43" x2="-1.27" y2="-11.684" width="0.2" layer="21"/>
<wire x1="-1.27" y1="-11.684" x2="-1.27" y2="-13.716" width="0.2" layer="21"/>
<wire x1="-1.27" y1="-13.716" x2="-1.016" y2="-13.97" width="0.2" layer="21"/>
<wire x1="-1.016" y1="-13.97" x2="1.016" y2="-13.97" width="0.2" layer="21"/>
<wire x1="1.016" y1="-13.97" x2="1.27" y2="-13.716" width="0.2" layer="21"/>
<wire x1="1.27" y1="-13.716" x2="1.27" y2="-11.684" width="0.2" layer="21"/>
<wire x1="1.27" y1="-11.684" x2="1.016" y2="-11.43" width="0.2" layer="21"/>
<wire x1="-1.016" y1="-3.81" x2="-1.27" y2="-4.064" width="0.2" layer="21"/>
<wire x1="-1.27" y1="-4.064" x2="-1.27" y2="-6.096" width="0.2" layer="21"/>
<wire x1="-1.27" y1="-6.096" x2="-1.016" y2="-6.35" width="0.2" layer="21"/>
<wire x1="-1.016" y1="-6.35" x2="1.016" y2="-6.35" width="0.2" layer="21"/>
<wire x1="1.016" y1="-6.35" x2="1.27" y2="-6.096" width="0.2" layer="21"/>
<wire x1="1.27" y1="-6.096" x2="1.27" y2="-4.064" width="0.2" layer="21"/>
<wire x1="1.27" y1="-4.064" x2="1.016" y2="-3.81" width="0.2" layer="21"/>
<wire x1="-1.016" y1="-6.35" x2="-1.27" y2="-6.604" width="0.2" layer="21"/>
<wire x1="-1.27" y1="-6.604" x2="-1.27" y2="-8.636" width="0.2" layer="21"/>
<wire x1="-1.27" y1="-8.636" x2="-1.016" y2="-8.89" width="0.2" layer="21"/>
<wire x1="-1.016" y1="-8.89" x2="1.016" y2="-8.89" width="0.2" layer="21"/>
<wire x1="1.016" y1="-8.89" x2="1.27" y2="-8.636" width="0.2" layer="21"/>
<wire x1="1.27" y1="-8.636" x2="1.27" y2="-6.604" width="0.2" layer="21"/>
<wire x1="1.27" y1="-6.604" x2="1.016" y2="-6.35" width="0.2" layer="21"/>
<wire x1="-1.016" y1="1.27" x2="1.016" y2="1.27" width="0.2" layer="21"/>
<wire x1="-1.2" y1="0.6" x2="-0.6" y2="1.2" width="0.2" layer="21"/>
<wire x1="0.6" y1="1.2" x2="1.2" y2="0.6" width="0.2" layer="21"/>
<wire x1="0.6" y1="-1.2" x2="1.2" y2="-0.6" width="0.2" layer="21"/>
<wire x1="-1.2" y1="-0.6" x2="-0.6" y2="-1.2" width="0.2" layer="21"/>
<wire x1="-1.016" y1="-29.21" x2="-1.27" y2="-29.464" width="0.2" layer="21"/>
<wire x1="-1.27" y1="-29.464" x2="-1.27" y2="-31.496" width="0.2" layer="21"/>
<wire x1="-1.27" y1="-31.496" x2="-1.016" y2="-31.75" width="0.2" layer="21"/>
<wire x1="-1.016" y1="-31.75" x2="1.016" y2="-31.75" width="0.2" layer="21"/>
<wire x1="1.016" y1="-31.75" x2="1.27" y2="-31.496" width="0.2" layer="21"/>
<wire x1="1.27" y1="-31.496" x2="1.27" y2="-29.464" width="0.2" layer="21"/>
<wire x1="1.27" y1="-29.464" x2="1.016" y2="-29.21" width="0.2" layer="21"/>
<wire x1="-1.016" y1="-31.75" x2="-1.27" y2="-32.004" width="0.2" layer="21"/>
<wire x1="-1.27" y1="-32.004" x2="-1.27" y2="-34.036" width="0.2" layer="21"/>
<wire x1="-1.27" y1="-34.036" x2="-1.016" y2="-34.29" width="0.2" layer="21"/>
<wire x1="-1.016" y1="-34.29" x2="1.016" y2="-34.29" width="0.2" layer="21"/>
<wire x1="1.016" y1="-34.29" x2="1.27" y2="-34.036" width="0.2" layer="21"/>
<wire x1="1.27" y1="-34.036" x2="1.27" y2="-32.004" width="0.2" layer="21"/>
<wire x1="1.27" y1="-32.004" x2="1.016" y2="-31.75" width="0.2" layer="21"/>
<pad name="1" x="0" y="0" drill="0.95" diameter="1.6" shape="square"/>
<pad name="2" x="0" y="-2.54" drill="0.95" diameter="1.6" shape="octagon"/>
<pad name="3" x="0" y="-5.08" drill="0.95" diameter="1.6" shape="octagon"/>
<pad name="4" x="0" y="-7.62" drill="0.95" diameter="1.6" shape="octagon"/>
<pad name="5" x="0" y="-10.16" drill="0.95" diameter="1.6" shape="octagon"/>
<pad name="6" x="0" y="-12.7" drill="0.95" diameter="1.6" shape="octagon"/>
<pad name="7" x="0" y="-15.24" drill="0.95" diameter="1.6" shape="octagon"/>
<pad name="8" x="0" y="-17.78" drill="0.95" diameter="1.6" shape="octagon"/>
<pad name="9" x="0" y="-20.32" drill="0.95" diameter="1.6" shape="octagon"/>
<pad name="10" x="0" y="-22.86" drill="0.95" diameter="1.6" shape="octagon"/>
<pad name="11" x="0" y="-25.4" drill="0.95" diameter="1.6" shape="octagon"/>
<pad name="12" x="0" y="-27.94" drill="0.95" diameter="1.6" shape="octagon"/>
<pad name="13" x="0" y="-30.48" drill="0.95" diameter="1.6" shape="octagon"/>
<pad name="14" x="0" y="-33.02" drill="0.95" diameter="1.6" shape="octagon"/>
<text x="-1.5" y="-5.5" size="1" layer="27" font="vector" ratio="15" rot="R90">&gt;VALUE</text>
<text x="-3" y="-5.5" size="1" layer="25" font="vector" ratio="15" rot="R90">&gt;NAME</text>
<wire x1="-1.016" y1="-34.29" x2="-1.27" y2="-34.544" width="0.2" layer="21"/>
<wire x1="-1.27" y1="-34.544" x2="-1.27" y2="-36.576" width="0.2" layer="21"/>
<wire x1="-1.27" y1="-36.576" x2="-1.016" y2="-36.83" width="0.2" layer="21"/>
<wire x1="-1.016" y1="-36.83" x2="1.016" y2="-36.83" width="0.2" layer="21"/>
<wire x1="1.016" y1="-36.83" x2="1.27" y2="-36.576" width="0.2" layer="21"/>
<wire x1="1.27" y1="-36.576" x2="1.27" y2="-34.544" width="0.2" layer="21"/>
<wire x1="1.27" y1="-34.544" x2="1.016" y2="-34.29" width="0.2" layer="21"/>
<pad name="15" x="0" y="-35.56" drill="0.95" diameter="1.6" shape="octagon"/>
<wire x1="-1.016" y1="-36.83" x2="-1.27" y2="-37.084" width="0.2" layer="21"/>
<wire x1="-1.27" y1="-37.084" x2="-1.27" y2="-39.116" width="0.2" layer="21"/>
<wire x1="-1.27" y1="-39.116" x2="-1.016" y2="-39.37" width="0.2" layer="21"/>
<wire x1="-1.016" y1="-39.37" x2="1.016" y2="-39.37" width="0.2" layer="21"/>
<wire x1="1.016" y1="-39.37" x2="1.27" y2="-39.116" width="0.2" layer="21"/>
<wire x1="1.27" y1="-39.116" x2="1.27" y2="-37.084" width="0.2" layer="21"/>
<wire x1="1.27" y1="-37.084" x2="1.016" y2="-36.83" width="0.2" layer="21"/>
<pad name="16" x="0" y="-38.1" drill="0.95" diameter="1.6" shape="octagon"/>
<wire x1="-1.016" y1="-39.37" x2="-1.27" y2="-39.624" width="0.2" layer="21"/>
<wire x1="-1.27" y1="-39.624" x2="-1.27" y2="-41.656" width="0.2" layer="21"/>
<wire x1="-1.27" y1="-41.656" x2="-1.016" y2="-41.91" width="0.2" layer="21"/>
<wire x1="-1.016" y1="-41.91" x2="1.016" y2="-41.91" width="0.2" layer="21"/>
<wire x1="1.016" y1="-41.91" x2="1.27" y2="-41.656" width="0.2" layer="21"/>
<wire x1="1.27" y1="-41.656" x2="1.27" y2="-39.624" width="0.2" layer="21"/>
<wire x1="1.27" y1="-39.624" x2="1.016" y2="-39.37" width="0.2" layer="21"/>
<pad name="17" x="0" y="-40.64" drill="0.95" diameter="1.6" shape="octagon"/>
</package>
<package name="CON_HDR_M_1X12">
<wire x1="-1.016" y1="1.27" x2="-1.27" y2="1.016" width="0.2" layer="21"/>
<wire x1="-1.27" y1="1.016" x2="-1.27" y2="-1.016" width="0.2" layer="21"/>
<wire x1="-1.27" y1="-1.016" x2="-1.016" y2="-1.27" width="0.2" layer="21"/>
<wire x1="-1.016" y1="-1.27" x2="1.016" y2="-1.27" width="0.2" layer="21"/>
<wire x1="1.016" y1="-1.27" x2="1.27" y2="-1.016" width="0.2" layer="21"/>
<wire x1="1.27" y1="-1.016" x2="1.27" y2="1.016" width="0.2" layer="21"/>
<wire x1="1.27" y1="1.016" x2="1.016" y2="1.27" width="0.2" layer="21"/>
<wire x1="-1.016" y1="-1.27" x2="-1.27" y2="-1.524" width="0.2" layer="21"/>
<wire x1="-1.27" y1="-1.524" x2="-1.27" y2="-3.556" width="0.2" layer="21"/>
<wire x1="-1.27" y1="-3.556" x2="-1.016" y2="-3.81" width="0.2" layer="21"/>
<wire x1="-1.016" y1="-3.81" x2="1.016" y2="-3.81" width="0.2" layer="21"/>
<wire x1="1.016" y1="-3.81" x2="1.27" y2="-3.556" width="0.2" layer="21"/>
<wire x1="1.27" y1="-3.556" x2="1.27" y2="-1.524" width="0.2" layer="21"/>
<wire x1="1.27" y1="-1.524" x2="1.016" y2="-1.27" width="0.2" layer="21"/>
<wire x1="-1.016" y1="-24.13" x2="-1.27" y2="-24.384" width="0.2" layer="21"/>
<wire x1="-1.27" y1="-24.384" x2="-1.27" y2="-26.416" width="0.2" layer="21"/>
<wire x1="-1.27" y1="-26.416" x2="-1.016" y2="-26.67" width="0.2" layer="21"/>
<wire x1="-1.016" y1="-26.67" x2="1.016" y2="-26.67" width="0.2" layer="21"/>
<wire x1="1.016" y1="-26.67" x2="1.27" y2="-26.416" width="0.2" layer="21"/>
<wire x1="1.27" y1="-26.416" x2="1.27" y2="-24.384" width="0.2" layer="21"/>
<wire x1="1.27" y1="-24.384" x2="1.016" y2="-24.13" width="0.2" layer="21"/>
<wire x1="-1.016" y1="-26.67" x2="-1.27" y2="-26.924" width="0.2" layer="21"/>
<wire x1="-1.27" y1="-26.924" x2="-1.27" y2="-28.956" width="0.2" layer="21"/>
<wire x1="-1.27" y1="-28.956" x2="-1.016" y2="-29.21" width="0.2" layer="21"/>
<wire x1="-1.016" y1="-29.21" x2="1.016" y2="-29.21" width="0.2" layer="21"/>
<wire x1="1.016" y1="-29.21" x2="1.27" y2="-28.956" width="0.2" layer="21"/>
<wire x1="1.27" y1="-28.956" x2="1.27" y2="-26.924" width="0.2" layer="21"/>
<wire x1="1.27" y1="-26.924" x2="1.016" y2="-26.67" width="0.2" layer="21"/>
<wire x1="-1.016" y1="-19.05" x2="-1.27" y2="-19.304" width="0.2" layer="21"/>
<wire x1="-1.27" y1="-19.304" x2="-1.27" y2="-21.336" width="0.2" layer="21"/>
<wire x1="-1.27" y1="-21.336" x2="-1.016" y2="-21.59" width="0.2" layer="21"/>
<wire x1="-1.016" y1="-21.59" x2="1.016" y2="-21.59" width="0.2" layer="21"/>
<wire x1="1.016" y1="-21.59" x2="1.27" y2="-21.336" width="0.2" layer="21"/>
<wire x1="1.27" y1="-21.336" x2="1.27" y2="-19.304" width="0.2" layer="21"/>
<wire x1="1.27" y1="-19.304" x2="1.016" y2="-19.05" width="0.2" layer="21"/>
<wire x1="-1.016" y1="-21.59" x2="-1.27" y2="-21.844" width="0.2" layer="21"/>
<wire x1="-1.27" y1="-21.844" x2="-1.27" y2="-23.876" width="0.2" layer="21"/>
<wire x1="-1.27" y1="-23.876" x2="-1.016" y2="-24.13" width="0.2" layer="21"/>
<wire x1="-1.016" y1="-24.13" x2="1.016" y2="-24.13" width="0.2" layer="21"/>
<wire x1="1.016" y1="-24.13" x2="1.27" y2="-23.876" width="0.2" layer="21"/>
<wire x1="1.27" y1="-23.876" x2="1.27" y2="-21.844" width="0.2" layer="21"/>
<wire x1="1.27" y1="-21.844" x2="1.016" y2="-21.59" width="0.2" layer="21"/>
<wire x1="-1.016" y1="-13.97" x2="-1.27" y2="-14.224" width="0.2" layer="21"/>
<wire x1="-1.27" y1="-14.224" x2="-1.27" y2="-16.256" width="0.2" layer="21"/>
<wire x1="-1.27" y1="-16.256" x2="-1.016" y2="-16.51" width="0.2" layer="21"/>
<wire x1="-1.016" y1="-16.51" x2="1.016" y2="-16.51" width="0.2" layer="21"/>
<wire x1="1.016" y1="-16.51" x2="1.27" y2="-16.256" width="0.2" layer="21"/>
<wire x1="1.27" y1="-16.256" x2="1.27" y2="-14.224" width="0.2" layer="21"/>
<wire x1="1.27" y1="-14.224" x2="1.016" y2="-13.97" width="0.2" layer="21"/>
<wire x1="-1.016" y1="-16.51" x2="-1.27" y2="-16.764" width="0.2" layer="21"/>
<wire x1="-1.27" y1="-16.764" x2="-1.27" y2="-18.796" width="0.2" layer="21"/>
<wire x1="-1.27" y1="-18.796" x2="-1.016" y2="-19.05" width="0.2" layer="21"/>
<wire x1="-1.016" y1="-19.05" x2="1.016" y2="-19.05" width="0.2" layer="21"/>
<wire x1="1.016" y1="-19.05" x2="1.27" y2="-18.796" width="0.2" layer="21"/>
<wire x1="1.27" y1="-18.796" x2="1.27" y2="-16.764" width="0.2" layer="21"/>
<wire x1="1.27" y1="-16.764" x2="1.016" y2="-16.51" width="0.2" layer="21"/>
<wire x1="-1.016" y1="-8.89" x2="-1.27" y2="-9.144" width="0.2" layer="21"/>
<wire x1="-1.27" y1="-9.144" x2="-1.27" y2="-11.176" width="0.2" layer="21"/>
<wire x1="-1.27" y1="-11.176" x2="-1.016" y2="-11.43" width="0.2" layer="21"/>
<wire x1="-1.016" y1="-11.43" x2="1.016" y2="-11.43" width="0.2" layer="21"/>
<wire x1="1.016" y1="-11.43" x2="1.27" y2="-11.176" width="0.2" layer="21"/>
<wire x1="1.27" y1="-11.176" x2="1.27" y2="-9.144" width="0.2" layer="21"/>
<wire x1="1.27" y1="-9.144" x2="1.016" y2="-8.89" width="0.2" layer="21"/>
<wire x1="-1.016" y1="-11.43" x2="-1.27" y2="-11.684" width="0.2" layer="21"/>
<wire x1="-1.27" y1="-11.684" x2="-1.27" y2="-13.716" width="0.2" layer="21"/>
<wire x1="-1.27" y1="-13.716" x2="-1.016" y2="-13.97" width="0.2" layer="21"/>
<wire x1="-1.016" y1="-13.97" x2="1.016" y2="-13.97" width="0.2" layer="21"/>
<wire x1="1.016" y1="-13.97" x2="1.27" y2="-13.716" width="0.2" layer="21"/>
<wire x1="1.27" y1="-13.716" x2="1.27" y2="-11.684" width="0.2" layer="21"/>
<wire x1="1.27" y1="-11.684" x2="1.016" y2="-11.43" width="0.2" layer="21"/>
<wire x1="-1.016" y1="-3.81" x2="-1.27" y2="-4.064" width="0.2" layer="21"/>
<wire x1="-1.27" y1="-4.064" x2="-1.27" y2="-6.096" width="0.2" layer="21"/>
<wire x1="-1.27" y1="-6.096" x2="-1.016" y2="-6.35" width="0.2" layer="21"/>
<wire x1="-1.016" y1="-6.35" x2="1.016" y2="-6.35" width="0.2" layer="21"/>
<wire x1="1.016" y1="-6.35" x2="1.27" y2="-6.096" width="0.2" layer="21"/>
<wire x1="1.27" y1="-6.096" x2="1.27" y2="-4.064" width="0.2" layer="21"/>
<wire x1="1.27" y1="-4.064" x2="1.016" y2="-3.81" width="0.2" layer="21"/>
<wire x1="-1.016" y1="-6.35" x2="-1.27" y2="-6.604" width="0.2" layer="21"/>
<wire x1="-1.27" y1="-6.604" x2="-1.27" y2="-8.636" width="0.2" layer="21"/>
<wire x1="-1.27" y1="-8.636" x2="-1.016" y2="-8.89" width="0.2" layer="21"/>
<wire x1="-1.016" y1="-8.89" x2="1.016" y2="-8.89" width="0.2" layer="21"/>
<wire x1="1.016" y1="-8.89" x2="1.27" y2="-8.636" width="0.2" layer="21"/>
<wire x1="1.27" y1="-8.636" x2="1.27" y2="-6.604" width="0.2" layer="21"/>
<wire x1="1.27" y1="-6.604" x2="1.016" y2="-6.35" width="0.2" layer="21"/>
<wire x1="-1.016" y1="1.27" x2="1.016" y2="1.27" width="0.2" layer="21"/>
<wire x1="-1.2" y1="0.6" x2="-0.6" y2="1.2" width="0.2" layer="21"/>
<wire x1="0.6" y1="1.2" x2="1.2" y2="0.6" width="0.2" layer="21"/>
<wire x1="0.6" y1="-1.2" x2="1.2" y2="-0.6" width="0.2" layer="21"/>
<wire x1="-1.2" y1="-0.6" x2="-0.6" y2="-1.2" width="0.2" layer="21"/>
<pad name="1" x="0" y="0" drill="0.95" diameter="1.6" shape="square"/>
<pad name="2" x="0" y="-2.54" drill="0.95" diameter="1.6" shape="octagon"/>
<pad name="3" x="0" y="-5.08" drill="0.95" diameter="1.6" shape="octagon"/>
<pad name="4" x="0" y="-7.62" drill="0.95" diameter="1.6" shape="octagon"/>
<pad name="5" x="0" y="-10.16" drill="0.95" diameter="1.6" shape="octagon"/>
<pad name="6" x="0" y="-12.7" drill="0.95" diameter="1.6" shape="octagon"/>
<pad name="7" x="0" y="-15.24" drill="0.95" diameter="1.6" shape="octagon"/>
<pad name="8" x="0" y="-17.78" drill="0.95" diameter="1.6" shape="octagon"/>
<pad name="9" x="0" y="-20.32" drill="0.95" diameter="1.6" shape="octagon"/>
<pad name="10" x="0" y="-22.86" drill="0.95" diameter="1.6" shape="octagon"/>
<pad name="11" x="0" y="-25.4" drill="0.95" diameter="1.6" shape="octagon"/>
<pad name="12" x="0" y="-27.94" drill="0.95" diameter="1.6" shape="octagon"/>
<text x="-1.5" y="-5.5" size="1" layer="27" font="vector" ratio="15" rot="R90">&gt;VALUE</text>
<text x="-3" y="-5.5" size="1" layer="25" font="vector" ratio="15" rot="R90">&gt;NAME</text>
</package>
<package name="CAP_0805">
<wire x1="-0.5" y1="0.55" x2="0.5" y2="0.55" width="0.1" layer="51"/>
<wire x1="-0.5" y1="-0.55" x2="0.5" y2="-0.55" width="0.1" layer="51"/>
<wire x1="-1.95" y1="0.95" x2="1.95" y2="0.95" width="0.05" layer="39"/>
<wire x1="1.95" y1="0.95" x2="1.95" y2="-0.95" width="0.05" layer="39"/>
<wire x1="1.95" y1="-0.95" x2="-1.95" y2="-0.95" width="0.05" layer="39"/>
<wire x1="-1.95" y1="-0.95" x2="-1.95" y2="0.95" width="0.05" layer="39"/>
<smd name="1" x="-1" y="0" dx="1.2" dy="1.3" layer="1"/>
<smd name="2" x="1" y="0" dx="1.2" dy="1.3" layer="1"/>
<text x="-3" y="3" size="1" layer="25" font="vector" ratio="15">&gt;NAME</text>
<text x="-3" y="1.5" size="1" layer="27" font="vector" ratio="15">&gt;VALUE</text>
<rectangle x1="0.5" y1="-0.6" x2="1" y2="0.6" layer="51"/>
<rectangle x1="-1" y1="-0.6" x2="-0.5" y2="0.6" layer="51"/>
<rectangle x1="-0.1999" y1="-0.5001" x2="0.1999" y2="0.5001" layer="35"/>
</package>
<package name="LED_0805">
<wire x1="1" y1="0.35" x2="1" y2="-0.35" width="0.1016" layer="51" curve="180" cap="flat"/>
<wire x1="-1" y1="0.35" x2="-1" y2="-0.35" width="0.1016" layer="51" curve="-180" cap="flat"/>
<wire x1="0.525" y1="-0.575" x2="-0.525" y2="-0.575" width="0.1016" layer="51"/>
<wire x1="-0.5" y1="0.575" x2="0.925" y2="0.575" width="0.1016" layer="51"/>
<circle x="0.85" y="0.45" radius="0.103" width="0.1016" layer="51"/>
<smd name="C" x="1.05" y="0" dx="1.2" dy="1.2" layer="1" rot="R270"/>
<smd name="A" x="-1.05" y="0" dx="1.2" dy="1.2" layer="1" rot="R270"/>
<text x="-2" y="3" size="1" layer="25" font="vector" ratio="15">&gt;NAME</text>
<text x="-2" y="1.5" size="1" layer="27" font="vector" ratio="15">&gt;VALUE</text>
<rectangle x1="0.5875" y1="-0.7125" x2="0.9125" y2="-0.2125" layer="51" rot="R270"/>
<rectangle x1="0.55" y1="0.125" x2="0.7" y2="0.375" layer="51" rot="R270"/>
<rectangle x1="0.55" y1="-0.375" x2="0.7" y2="-0.125" layer="51" rot="R270"/>
<rectangle x1="0.3875" y1="-0.0875" x2="0.7875" y2="0.0875" layer="51" rot="R270"/>
<rectangle x1="-0.9125" y1="-0.7125" x2="-0.5875" y2="-0.2125" layer="51" rot="R270"/>
<rectangle x1="-0.9125" y1="0.2125" x2="-0.5875" y2="0.7125" layer="51" rot="R270"/>
<rectangle x1="-0.7" y1="-0.375" x2="-0.55" y2="-0.125" layer="51" rot="R270"/>
<rectangle x1="-0.7" y1="0.125" x2="-0.55" y2="0.375" layer="51" rot="R270"/>
<rectangle x1="-0.7875" y1="-0.0875" x2="-0.3875" y2="0.0875" layer="51" rot="R270"/>
<rectangle x1="0.5" y1="0.3" x2="0.8" y2="0.6" layer="51" rot="R270"/>
<rectangle x1="0.85" y1="0.475" x2="1.075" y2="0.55" layer="51" rot="R270"/>
<polygon width="0.2" layer="21">
<vertex x="-0.3" y="0.4"/>
<vertex x="-0.3" y="-0.4"/>
<vertex x="0.3" y="0"/>
</polygon>
<rectangle x1="0.2" y1="0.3" x2="0.4" y2="0.5" layer="21"/>
<rectangle x1="0.2" y1="-0.5" x2="0.4" y2="-0.3" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="MICROBIT">
<rectangle x1="6.5" y1="0" x2="8.5" y2="8" layer="98"/>
<circle x="0" y="10.5" radius="3" width="1" layer="98"/>
<rectangle x1="-6" y1="0" x2="-4" y2="8" layer="98"/>
<rectangle x1="-3.5" y1="0" x2="3.5" y2="8" layer="98"/>
<pin name="P3/LEDC3/AIN" x="-42.5" y="0" length="point" rot="R90"/>
<rectangle x1="-8.5" y1="0" x2="-6.5" y2="8" layer="98"/>
<rectangle x1="9" y1="0" x2="11" y2="8" layer="98"/>
<rectangle x1="29" y1="0" x2="31" y2="8" layer="98"/>
<rectangle x1="4" y1="0" x2="6" y2="8" layer="98"/>
<rectangle x1="14" y1="0" x2="16" y2="8" layer="98"/>
<rectangle x1="31.5" y1="0" x2="33.5" y2="8" layer="98"/>
<rectangle x1="-16" y1="0" x2="-14" y2="8" layer="98"/>
<rectangle x1="-28.5" y1="0" x2="-26.5" y2="8" layer="98"/>
<rectangle x1="-31" y1="0" x2="-29" y2="8" layer="98"/>
<rectangle x1="-13.5" y1="0" x2="-11.5" y2="8" layer="98"/>
<rectangle x1="41.5" y1="0" x2="43.5" y2="8" layer="98"/>
<rectangle x1="26.5" y1="0" x2="28.5" y2="8" layer="98"/>
<rectangle x1="24" y1="0" x2="26" y2="8" layer="98"/>
<rectangle x1="11.5" y1="0" x2="13.5" y2="8" layer="98"/>
<rectangle x1="-26" y1="0" x2="-24" y2="8" layer="98"/>
<rectangle x1="-43.5" y1="0" x2="-41.5" y2="8" layer="98"/>
<rectangle x1="-11" y1="0" x2="-9" y2="8" layer="98"/>
<rectangle x1="-33.5" y1="0" x2="-31.5" y2="8" layer="98"/>
<rectangle x1="-3.5" y1="7.5" x2="-2.5" y2="10.5" layer="98"/>
<rectangle x1="2.5" y1="7.5" x2="3.5" y2="10.5" layer="98"/>
<circle x="-20" y="10.5" radius="3" width="1" layer="98"/>
<rectangle x1="-23.5" y1="0" x2="-16.5" y2="8" layer="98"/>
<rectangle x1="-23.5" y1="7.5" x2="-22.5" y2="10.5" layer="98"/>
<rectangle x1="-17.5" y1="7.5" x2="-16.5" y2="10.5" layer="98"/>
<circle x="-37.5" y="10.5" radius="3" width="1" layer="98"/>
<rectangle x1="-41" y1="0" x2="-34" y2="8" layer="98"/>
<rectangle x1="-41" y1="7.5" x2="-40" y2="10.5" layer="98"/>
<rectangle x1="-35" y1="7.5" x2="-34" y2="10.5" layer="98"/>
<circle x="20" y="10.5" radius="3" width="1" layer="98"/>
<rectangle x1="16.5" y1="0" x2="23.5" y2="8" layer="98"/>
<rectangle x1="16.5" y1="7.5" x2="17.5" y2="10.5" layer="98"/>
<rectangle x1="22.5" y1="7.5" x2="23.5" y2="10.5" layer="98"/>
<circle x="37.5" y="10.5" radius="3" width="1" layer="98"/>
<rectangle x1="34" y1="0" x2="41" y2="8" layer="98"/>
<rectangle x1="34" y1="7.5" x2="35" y2="10.5" layer="98"/>
<rectangle x1="40" y1="7.5" x2="41" y2="10.5" layer="98"/>
<pin name="P0/FREE/AIN/TOUCH" x="-37.5" y="0" length="point" rot="R90"/>
<pin name="P4/LEDC1/AIN" x="-32.5" y="0" length="point" rot="R90"/>
<pin name="P5/BTNA" x="-30" y="0" length="point" rot="R90"/>
<pin name="P6/LEDC4" x="-27.5" y="0" length="point" rot="R90"/>
<pin name="P7/LEDC2" x="-25" y="0" length="point" rot="R90"/>
<pin name="P1/AIN/TOUCH" x="-20" y="0" length="point" rot="R90"/>
<pin name="P8/FREE/NFC" x="-15" y="0" length="point" rot="R90"/>
<pin name="P9/LEDC7" x="-12.5" y="0" length="point" rot="R90"/>
<pin name="P10/LEDC3" x="-10" y="0" length="point" rot="R90"/>
<pin name="P11/BTNB" x="-7.5" y="0" length="point" rot="R90"/>
<pin name="P12/ACCESSILIBILTY" x="-5" y="0" length="point" rot="R90"/>
<pin name="P2/FREE/AIN/TOUCH" x="0" y="0" length="point" rot="R90"/>
<pin name="P13/FREE/SCK" x="5" y="0" length="point" rot="R90"/>
<pin name="P14/FREE/MISO" x="7.5" y="0" length="point" rot="R90"/>
<pin name="P15/FREE/MOSI" x="10" y="0" length="point" rot="R90"/>
<pin name="P16/FREE" x="12.5" y="0" length="point" rot="R90"/>
<pin name="+3V" x="20" y="0" length="point" rot="R90"/>
<pin name="P19/SCL" x="27.5" y="0" length="point" rot="R90"/>
<pin name="P20/SDA" x="30" y="0" length="point" rot="R90"/>
<pin name="GND" x="37.5" y="0" length="point" rot="R90"/>
<rectangle x1="15" y1="5" x2="17" y2="8" layer="98"/>
<rectangle x1="22.5" y1="5" x2="24.5" y2="8" layer="98"/>
<rectangle x1="32.5" y1="5" x2="34.5" y2="8" layer="98"/>
<rectangle x1="40" y1="5" x2="42" y2="8" layer="98"/>
<wire x1="-43.5" y1="0" x2="-43.5" y2="30" width="0.25" layer="94"/>
<wire x1="-43.5" y1="30" x2="43.5" y2="30" width="0.25" layer="94"/>
<wire x1="43.5" y1="30" x2="43.5" y2="0" width="0.25" layer="94"/>
<wire x1="43.5" y1="0" x2="-43.5" y2="0" width="0.25" layer="94"/>
<text x="-10" y="26.5" size="1.5" layer="96">&gt;VALUE_SHOWN</text>
<text x="-44.5" y="33" size="1.5" layer="95">&gt;NAME</text>
</symbol>
<symbol name="SWITCH_PUSH">
<wire x1="-4.445" y1="1.905" x2="-3.175" y2="1.905" width="0.254" layer="94"/>
<wire x1="-4.445" y1="-1.905" x2="-3.175" y2="-1.905" width="0.254" layer="94"/>
<wire x1="-4.445" y1="1.905" x2="-4.445" y2="0" width="0.254" layer="94"/>
<wire x1="-4.445" y1="0" x2="-4.445" y2="-1.905" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.905" y2="0" width="0.1524" layer="94"/>
<wire x1="-1.27" y1="0" x2="-0.635" y2="0" width="0.1524" layer="94"/>
<wire x1="-4.445" y1="0" x2="-3.175" y2="0" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="1.905" width="0.254" layer="94"/>
<circle x="0" y="-2.54" radius="0.127" width="0.4064" layer="94"/>
<circle x="0" y="2.5" radius="0.127" width="0.4064" layer="94"/>
<text x="-6.35" y="-2.54" size="1.5" layer="95" rot="R90">&gt;NAME</text>
<text x="-3.81" y="3.175" size="1.5" layer="96" rot="R90">&gt;VALUE_SHOWN</text>
<pin name="P" x="0" y="-5" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
<pin name="S" x="0" y="5" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
</symbol>
<symbol name="GND">
<rectangle x1="-1.5" y1="-0.25" x2="1.5" y2="0" layer="94"/>
<pin name="GND" x="0" y="2.5" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="RESISTOR">
<wire x1="-2.5" y1="1" x2="-2.5" y2="-1" width="0.25" layer="94"/>
<wire x1="-2.5" y1="-1" x2="2.5" y2="-1" width="0.25" layer="94"/>
<wire x1="2.5" y1="-1" x2="2.5" y2="1" width="0.25" layer="94"/>
<wire x1="2.5" y1="1" x2="-2.5" y2="1" width="0.25" layer="94"/>
<text x="-6.5" y="0.5" size="1.5" layer="95">&gt;NAME</text>
<text x="-2.4" y="-0.8" size="1.5" layer="96">&gt;VALUE_SHOWN</text>
<pin name="1" x="-5" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<pin name="2" x="5" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
<symbol name="CON_1X17">
<wire x1="1.5" y1="-22.5" x2="-1.5" y2="-22.5" width="0.4064" layer="94"/>
<wire x1="-1.5" y1="22.5" x2="-1.5" y2="-22.5" width="0.4064" layer="94"/>
<wire x1="-1.5" y1="22.5" x2="1.5" y2="22.5" width="0.4064" layer="94"/>
<wire x1="1.5" y1="-22.5" x2="1.5" y2="22.5" width="0.4064" layer="94"/>
<circle x="0" y="-20" radius="0.635" width="0.254" layer="94"/>
<circle x="0" y="-17.5" radius="0.635" width="0.254" layer="94"/>
<circle x="0" y="-15" radius="0.635" width="0.254" layer="94"/>
<circle x="0" y="-12.5" radius="0.635" width="0.254" layer="94"/>
<circle x="0" y="-10" radius="0.635" width="0.254" layer="94"/>
<circle x="0" y="-7.5" radius="0.635" width="0.254" layer="94"/>
<circle x="0" y="-5" radius="0.635" width="0.254" layer="94"/>
<circle x="0" y="-2.5" radius="0.635" width="0.254" layer="94"/>
<circle x="0" y="0" radius="0.635" width="0.254" layer="94"/>
<circle x="0" y="2.5" radius="0.635" width="0.254" layer="94"/>
<circle x="0" y="5" radius="0.635" width="0.254" layer="94"/>
<circle x="0" y="7.5" radius="0.635" width="0.254" layer="94"/>
<circle x="0" y="10" radius="0.635" width="0.254" layer="94"/>
<circle x="0" y="12.5" radius="0.635" width="0.254" layer="94"/>
<circle x="0" y="15" radius="0.635" width="0.254" layer="94"/>
<circle x="0" y="17.5" radius="0.635" width="0.254" layer="94"/>
<text x="-5" y="-27.5" size="1.5" layer="96">&gt;VALUE_SHOWN</text>
<text x="-5" y="25" size="1.5" layer="95">&gt;NAME</text>
<pin name="2" x="5" y="-17.5" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="5" y="-20" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="5" y="-15" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="5" y="-12.5" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="5" x="5" y="-10" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="6" x="5" y="-7.5" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="7" x="5" y="-5" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="8" x="5" y="-2.5" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="9" x="5" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="10" x="5" y="2.5" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="11" x="5" y="5" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="12" x="5" y="7.5" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="13" x="5" y="10" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="14" x="5" y="12.5" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="15" x="5" y="15" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="16" x="5" y="17.5" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<circle x="0" y="20" radius="0.635" width="0.254" layer="94"/>
<pin name="17" x="5" y="20" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
<symbol name="CON_1X12">
<wire x1="1.5" y1="-22.5" x2="-1.5" y2="-22.5" width="0.4064" layer="94"/>
<wire x1="-1.5" y1="10" x2="-1.5" y2="-22.5" width="0.4064" layer="94"/>
<wire x1="-1.5" y1="10" x2="1.5" y2="10" width="0.4064" layer="94"/>
<wire x1="1.5" y1="-22.5" x2="1.5" y2="10" width="0.4064" layer="94"/>
<circle x="0" y="-20" radius="0.635" width="0.254" layer="94"/>
<circle x="0" y="-17.5" radius="0.635" width="0.254" layer="94"/>
<circle x="0" y="-15" radius="0.635" width="0.254" layer="94"/>
<circle x="0" y="-12.5" radius="0.635" width="0.254" layer="94"/>
<circle x="0" y="-10" radius="0.635" width="0.254" layer="94"/>
<circle x="0" y="-7.5" radius="0.635" width="0.254" layer="94"/>
<circle x="0" y="-5" radius="0.635" width="0.254" layer="94"/>
<circle x="0" y="-2.5" radius="0.635" width="0.254" layer="94"/>
<circle x="0" y="0" radius="0.635" width="0.254" layer="94"/>
<circle x="0" y="2.5" radius="0.635" width="0.254" layer="94"/>
<circle x="0" y="5" radius="0.635" width="0.254" layer="94"/>
<circle x="0" y="7.5" radius="0.635" width="0.254" layer="94"/>
<text x="-5" y="-27.5" size="1.5" layer="96">&gt;VALUE_SHOWN</text>
<text x="-5" y="12.5" size="1.5" layer="95">&gt;NAME</text>
<pin name="2" x="5" y="-17.5" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="5" y="-20" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="5" y="-15" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="5" y="-12.5" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="5" x="5" y="-10" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="6" x="5" y="-7.5" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="7" x="5" y="-5" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="8" x="5" y="-2.5" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="9" x="5" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="10" x="5" y="2.5" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="11" x="5" y="5" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="12" x="5" y="7.5" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
<symbol name="SUPPLY_+3V3">
<circle x="0" y="3.81" radius="1.27" width="0.254" layer="94"/>
<text x="-3.5" y="5.5" size="1.778" layer="96">+3V3</text>
<pin name="+3V3" x="0" y="0" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="CAP_CERAMIC">
<wire x1="-0.5" y1="1.5" x2="-0.5" y2="0" width="0.25" layer="94"/>
<wire x1="-0.5" y1="0" x2="-0.5" y2="-1.5" width="0.25" layer="94"/>
<wire x1="0.5" y1="1.5" x2="0.5" y2="0" width="0.25" layer="94"/>
<wire x1="0.5" y1="0" x2="0.5" y2="-1.5" width="0.25" layer="94"/>
<wire x1="-2.5" y1="0" x2="-0.5" y2="0" width="0.15" layer="94"/>
<wire x1="0.5" y1="0" x2="2.5" y2="0" width="0.15" layer="94"/>
<text x="-4.5" y="0.5" size="1.5" layer="95">&gt;NAME</text>
<text x="1" y="0.5" size="1.5" layer="96">&gt;VALUE_SHOWN</text>
<pin name="1" x="-2.5" y="0" visible="off" length="point" direction="pas" swaplevel="1"/>
<pin name="2" x="2.5" y="0" visible="off" length="point" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
<symbol name="LED">
<wire x1="-1" y1="-1.5" x2="1.5" y2="0" width="0.254" layer="94"/>
<wire x1="1.5" y1="0" x2="-1" y2="1.5" width="0.254" layer="94"/>
<wire x1="1.5" y1="-1.5" x2="1.5" y2="0" width="0.254" layer="94"/>
<wire x1="1.5" y1="0" x2="1.5" y2="1.5" width="0.254" layer="94"/>
<wire x1="-1" y1="-1.5" x2="-1" y2="0" width="0.254" layer="94"/>
<wire x1="-1" y1="0" x2="-1" y2="1.5" width="0.254" layer="94"/>
<wire x1="-1" y1="2" x2="0" y2="3" width="0.1524" layer="94"/>
<wire x1="0.5" y1="2" x2="1.5" y2="3" width="0.1524" layer="94"/>
<wire x1="-2.5" y1="0" x2="-1" y2="0" width="0.15" layer="94"/>
<wire x1="2.5" y1="0" x2="1.5" y2="0" width="0.15" layer="94"/>
<text x="-4.5" y="0.5" size="1.5" layer="95">&gt;NAME</text>
<text x="2" y="0.5" size="1.5" layer="96">&gt;VALUE_SHOWN</text>
<pin name="C" x="2.5" y="0" visible="off" length="point" direction="pas" rot="R180"/>
<pin name="A" x="-2.5" y="0" visible="off" length="point" direction="pas"/>
<polygon width="0.1524" layer="94">
<vertex x="0.5" y="3.5"/>
<vertex x="-0.5" y="3"/>
<vertex x="0" y="2.5"/>
</polygon>
<polygon width="0.1524" layer="94">
<vertex x="2" y="3.5"/>
<vertex x="1" y="3"/>
<vertex x="1.5" y="2.5"/>
</polygon>
</symbol>
</symbols>
<devicesets>
<deviceset name="CJMBITH" prefix="J">
<description>Micro:bit edge connectie&lt;br/&gt;
Estimated price: 0.000000 EUR</description>
<gates>
<gate name="G$1" symbol="MICROBIT" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOCKET_MBIT_H">
<connects>
<connect gate="G$1" pin="+3V" pad="27 28 29 30 31 32"/>
<connect gate="G$1" pin="GND" pad="35 36 37 38 39 40"/>
<connect gate="G$1" pin="P0/FREE/AIN/TOUCH" pad="2 3 4 5"/>
<connect gate="G$1" pin="P1/AIN/TOUCH" pad="10 11 12 13"/>
<connect gate="G$1" pin="P10/LEDC3" pad="16"/>
<connect gate="G$1" pin="P11/BTNB" pad="17"/>
<connect gate="G$1" pin="P12/ACCESSILIBILTY" pad="18"/>
<connect gate="G$1" pin="P13/FREE/SCK" pad="23"/>
<connect gate="G$1" pin="P14/FREE/MISO" pad="24"/>
<connect gate="G$1" pin="P15/FREE/MOSI" pad="25"/>
<connect gate="G$1" pin="P16/FREE" pad="26"/>
<connect gate="G$1" pin="P19/SCL" pad="33"/>
<connect gate="G$1" pin="P2/FREE/AIN/TOUCH" pad="19 20 21 22"/>
<connect gate="G$1" pin="P20/SDA" pad="34"/>
<connect gate="G$1" pin="P3/LEDC3/AIN" pad="1"/>
<connect gate="G$1" pin="P4/LEDC1/AIN" pad="6"/>
<connect gate="G$1" pin="P5/BTNA" pad="7"/>
<connect gate="G$1" pin="P6/LEDC4" pad="8"/>
<connect gate="G$1" pin="P7/LEDC2" pad="9"/>
<connect gate="G$1" pin="P8/FREE/NFC" pad="14"/>
<connect gate="G$1" pin="P9/LEDC7" pad="15"/>
</connects>
<technologies>
<technology name="">
<attribute name="ESTIMATED_PRICE" value="0.000000"/>
<attribute name="SUPPLIER_1" value=""/>
<attribute name="SUPPLIER_1_REF" value=""/>
<attribute name="VALUE_SHOWN" value="Micro:bit edge"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CSWPUSHA" prefix="SW">
<description>drukknop (on)-off 6x6mm print height 4mm&lt;br/&gt;
Estimated price: 0.268000 EUR</description>
<gates>
<gate name="1" symbol="SWITCH_PUSH" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SWITCH_PUSH_5MM">
<connects>
<connect gate="1" pin="P" pad="3 4"/>
<connect gate="1" pin="S" pad="1 2"/>
</connects>
<technologies>
<technology name="">
<attribute name="ESTIMATED_PRICE" value="0.268000"/>
<attribute name="SUPPLIER_1" value="Vael"/>
<attribute name="SUPPLIER_1_REF" value="760.41606.5"/>
<attribute name="VALUE_SHOWN" value="Pushbutton"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GND" prefix="GND">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CR10KA" prefix="R">
<description>10K / 1% / 0,1W / 0805&lt;br/&gt;
Estimated price: 0.001300 EUR</description>
<gates>
<gate name="G$1" symbol="RESISTOR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="RES_0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="ESTIMATED_PRICE" value="0.001300"/>
<attribute name="SUPPLIER_1" value="Farnell"/>
<attribute name="SUPPLIER_1_REF" value="9332391"/>
<attribute name="VALUE_SHOWN" value="10K"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CJHDR1X17MA" prefix="J">
<gates>
<gate name="G$1" symbol="CON_1X17" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CON_HDR_M_1X17">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="13" pad="13"/>
<connect gate="G$1" pin="14" pad="14"/>
<connect gate="G$1" pin="15" pad="15"/>
<connect gate="G$1" pin="16" pad="16"/>
<connect gate="G$1" pin="17" pad="17"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CJHDR1X12MA" prefix="J">
<gates>
<gate name="G$1" symbol="CON_1X12" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CON_HDR_M_1X12">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="SUPPLY_+3V3">
<gates>
<gate name="G$1" symbol="SUPPLY_+3V3" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CR470RA" prefix="R">
<description>470R / 1% / 0,1W / 0805&lt;br/&gt;
Estimated price: 0.001400 EUR</description>
<gates>
<gate name="G$1" symbol="RESISTOR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="RES_0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="ESTIMATED_PRICE" value="0.001400"/>
<attribute name="SUPPLIER_1" value="Farnell"/>
<attribute name="SUPPLIER_1_REF" value="9333258"/>
<attribute name="VALUE_SHOWN" value="470R"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CC100NA" prefix="C">
<description>Capacitor ceramic  100nF / 50V / SMD 0805 / X7R&lt;br/&gt;
Estimated price: 0.006000 EUR</description>
<gates>
<gate name="G$1" symbol="CAP_CERAMIC" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CAP_0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="ESTIMATED_PRICE" value="0.006000"/>
<attribute name="SUPPLIER_1" value="Farnell"/>
<attribute name="SUPPLIER_1_REF" value="1759265"/>
<attribute name="VALUE_SHOWN" value="100nF/50V"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CDLEDGNC" prefix="LD">
<description>Led Green 568nm / 120 deg / 20mA / 2,2V / SMD 0805&lt;br/&gt;
Estimated price: 0.080000 EUR</description>
<gates>
<gate name="G$1" symbol="LED" x="0" y="0"/>
</gates>
<devices>
<device name="" package="LED_0805">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="ESTIMATED_PRICE" value="0.080000"/>
<attribute name="SUPPLIER_1" value="Farnell"/>
<attribute name="SUPPLIER_1_REF" value="2099239"/>
<attribute name="VALUE_SHOWN" value="Green"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CDLEDRDC" prefix="LD">
<description>Led Red 625nm / 120 deg / 20mA / 2V / SMD 0805&lt;br/&gt;
Estimated price: 0.017800 EUR</description>
<gates>
<gate name="G$1" symbol="LED" x="0" y="0"/>
</gates>
<devices>
<device name="" package="LED_0805">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="ESTIMATED_PRICE" value="0.017800"/>
<attribute name="SUPPLIER_1" value="Farnell"/>
<attribute name="SUPPLIER_1_REF" value="2099236"/>
<attribute name="VALUE_SHOWN" value="Red"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="J3" library="d2s_new" deviceset="CJMBITH" device=""/>
<part name="SW1" library="d2s_new" deviceset="CSWPUSHA" device=""/>
<part name="SW2" library="d2s_new" deviceset="CSWPUSHA" device=""/>
<part name="SW4" library="d2s_new" deviceset="CSWPUSHA" device=""/>
<part name="SW3" library="d2s_new" deviceset="CSWPUSHA" device=""/>
<part name="R4" library="d2s_new" deviceset="CR10KA" device=""/>
<part name="R3" library="d2s_new" deviceset="CR10KA" device=""/>
<part name="J2" library="d2s_new" deviceset="CJHDR1X17MA" device=""/>
<part name="J1" library="d2s_new" deviceset="CJHDR1X17MA" device=""/>
<part name="J5" library="d2s_new" deviceset="CJHDR1X12MA" device=""/>
<part name="J4" library="d2s_new" deviceset="CJHDR1X12MA" device=""/>
<part name="U$1" library="d2s_new" deviceset="SUPPLY_+3V3" device=""/>
<part name="U$2" library="d2s_new" deviceset="SUPPLY_+3V3" device=""/>
<part name="GND4" library="d2s_new" deviceset="GND" device=""/>
<part name="GND3" library="d2s_new" deviceset="GND" device=""/>
<part name="GND2" library="d2s_new" deviceset="GND" device=""/>
<part name="GND1" library="d2s_new" deviceset="GND" device=""/>
<part name="R1" library="d2s_new" deviceset="CR470RA" device=""/>
<part name="R2" library="d2s_new" deviceset="CR470RA" device=""/>
<part name="GND5" library="d2s_new" deviceset="GND" device=""/>
<part name="R5" library="d2s_new" deviceset="CR10KA" device=""/>
<part name="R6" library="d2s_new" deviceset="CR10KA" device=""/>
<part name="U$3" library="d2s_new" deviceset="SUPPLY_+3V3" device=""/>
<part name="U$4" library="d2s_new" deviceset="SUPPLY_+3V3" device=""/>
<part name="GND6" library="d2s_new" deviceset="GND" device=""/>
<part name="C1" library="d2s_new" deviceset="CC100NA" device=""/>
<part name="GND7" library="d2s_new" deviceset="GND" device=""/>
<part name="LD1" library="d2s_new" deviceset="CDLEDGNC" device=""/>
<part name="LD2" library="d2s_new" deviceset="CDLEDRDC" device=""/>
<part name="R7" library="d2s_new" deviceset="CR470RA" device=""/>
<part name="R8" library="d2s_new" deviceset="CR470RA" device=""/>
<part name="GND8" library="d2s_new" deviceset="GND" device=""/>
<part name="GND9" library="d2s_new" deviceset="GND" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="-50" y="-80" size="3" layer="97">USB</text>
<text x="12.5" y="-80" size="3" layer="97">USB</text>
<text x="-35" y="-77.5" size="2" layer="97">Arduino Micro</text>
<text x="25" y="-77.5" size="2" layer="97">Pro Micro</text>
<wire x1="-22.5" y1="-35" x2="-22.5" y2="-40" width="0.4064" layer="97"/>
<wire x1="-22.5" y1="-40" x2="-23.5" y2="-39" width="0.4064" layer="97"/>
<wire x1="-22.5" y1="-40" x2="-21.5" y2="-39" width="0.4064" layer="97"/>
<wire x1="-2.5" y1="-40" x2="-2.5" y2="-35" width="0.4064" layer="97"/>
<wire x1="-2.5" y1="-35" x2="-1.5" y2="-36" width="0.4064" layer="97"/>
<wire x1="-2.5" y1="-35" x2="-3.5" y2="-36" width="0.4064" layer="97"/>
</plain>
<instances>
<instance part="J3" gate="G$1" x="0" y="-27.5"/>
<instance part="SW1" gate="1" x="65" y="-55" rot="R270"/>
<instance part="SW2" gate="1" x="65" y="-65" rot="R270"/>
<instance part="SW4" gate="1" x="65" y="-85" rot="R270"/>
<instance part="SW3" gate="1" x="65" y="-75" rot="R270"/>
<instance part="R4" gate="G$1" x="52.5" y="-45" rot="R90"/>
<instance part="R3" gate="G$1" x="50" y="-45" rot="R90"/>
<instance part="J2" gate="G$1" x="-27.5" y="-85" smashed="yes" rot="R270">
<attribute name="NAME" x="-2.5" y="-80" size="1.5" layer="95" rot="R270"/>
</instance>
<instance part="J1" gate="G$1" x="-27.5" y="-70" smashed="yes" rot="MR90">
<attribute name="NAME" x="-2.5" y="-75" size="1.5" layer="95" rot="MR90"/>
</instance>
<instance part="J5" gate="G$1" x="35" y="-85" smashed="yes" rot="R270">
<attribute name="NAME" x="47.5" y="-80" size="1.5" layer="95" rot="R270"/>
</instance>
<instance part="J4" gate="G$1" x="35" y="-70" smashed="yes" rot="MR90">
<attribute name="NAME" x="47.5" y="-75" size="1.5" layer="95" rot="MR90"/>
</instance>
<instance part="U$1" gate="G$1" x="-45" y="-90" rot="R180"/>
<instance part="U$2" gate="G$1" x="22.5" y="-65" smashed="yes"/>
<instance part="GND4" gate="1" x="20" y="-95"/>
<instance part="GND3" gate="1" x="15" y="-62.5"/>
<instance part="GND2" gate="1" x="-15" y="-95"/>
<instance part="GND1" gate="1" x="-22.5" y="-62.5"/>
<instance part="R1" gate="G$1" x="-20" y="-45" rot="R90"/>
<instance part="R2" gate="G$1" x="0" y="-45" rot="R90"/>
<instance part="GND5" gate="1" x="70" y="-95"/>
<instance part="R5" gate="G$1" x="55" y="-45" rot="R90"/>
<instance part="R6" gate="G$1" x="57.5" y="-45" rot="R90"/>
<instance part="U$3" gate="G$1" x="20" y="-35" smashed="yes" rot="R180"/>
<instance part="U$4" gate="G$1" x="50" y="-37.5" smashed="yes"/>
<instance part="GND6" gate="1" x="37.5" y="-37.5"/>
<instance part="C1" gate="G$1" x="45" y="-45" rot="R90"/>
<instance part="GND7" gate="1" x="45" y="-50"/>
<instance part="LD1" gate="G$1" x="62.5" y="-107.5" rot="R270"/>
<instance part="LD2" gate="G$1" x="70" y="-107.5" rot="R270"/>
<instance part="R7" gate="G$1" x="62.5" y="-115" rot="R90"/>
<instance part="R8" gate="G$1" x="70" y="-115" rot="R90"/>
<instance part="GND8" gate="1" x="62.5" y="-122.5"/>
<instance part="GND9" gate="1" x="70" y="-122.5"/>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="GND1" gate="1" pin="GND"/>
<pinref part="J1" gate="G$1" pin="12"/>
<wire x1="-22.5" y1="-60" x2="-20" y2="-60" width="0.1524" layer="91"/>
<wire x1="-20" y1="-60" x2="-20" y2="-65" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND2" gate="1" pin="GND"/>
<pinref part="J2" gate="G$1" pin="14"/>
<wire x1="-15" y1="-92.5" x2="-15" y2="-90" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND4" gate="1" pin="GND"/>
<pinref part="J5" gate="G$1" pin="3"/>
<wire x1="20" y1="-92.5" x2="20" y2="-90" width="0.1524" layer="91"/>
<pinref part="J5" gate="G$1" pin="4"/>
<wire x1="22.5" y1="-90" x2="22.5" y2="-92.5" width="0.1524" layer="91"/>
<wire x1="22.5" y1="-92.5" x2="20" y2="-92.5" width="0.1524" layer="91"/>
<junction x="20" y="-92.5"/>
</segment>
<segment>
<pinref part="GND3" gate="1" pin="GND"/>
<pinref part="J4" gate="G$1" pin="2"/>
<wire x1="15" y1="-60" x2="17.5" y2="-60" width="0.1524" layer="91"/>
<wire x1="17.5" y1="-60" x2="17.5" y2="-65" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND5" gate="1" pin="GND"/>
<pinref part="SW4" gate="1" pin="S"/>
<wire x1="70" y1="-92.5" x2="70" y2="-85" width="0.1524" layer="91"/>
<pinref part="SW3" gate="1" pin="S"/>
<wire x1="70" y1="-85" x2="70" y2="-75" width="0.1524" layer="91"/>
<junction x="70" y="-85"/>
<pinref part="SW2" gate="1" pin="S"/>
<wire x1="70" y1="-75" x2="70" y2="-65" width="0.1524" layer="91"/>
<junction x="70" y="-75"/>
<pinref part="SW1" gate="1" pin="S"/>
<wire x1="70" y1="-65" x2="70" y2="-55" width="0.1524" layer="91"/>
<junction x="70" y="-65"/>
</segment>
<segment>
<pinref part="J3" gate="G$1" pin="GND"/>
<pinref part="GND6" gate="1" pin="GND"/>
<wire x1="37.5" y1="-27.5" x2="37.5" y2="-35" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C1" gate="G$1" pin="1"/>
<pinref part="GND7" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="R7" gate="G$1" pin="1"/>
<pinref part="GND8" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="R8" gate="G$1" pin="1"/>
<pinref part="GND9" gate="1" pin="GND"/>
</segment>
</net>
<net name="+3V3" class="0">
<segment>
<pinref part="J2" gate="G$1" pin="2"/>
<pinref part="U$1" gate="G$1" pin="+3V3"/>
</segment>
<segment>
<pinref part="J4" gate="G$1" pin="4"/>
<pinref part="U$2" gate="G$1" pin="+3V3"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="+3V3"/>
<pinref part="J3" gate="G$1" pin="+3V"/>
<wire x1="20" y1="-35" x2="20" y2="-27.5" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$4" gate="G$1" pin="+3V3"/>
<pinref part="R3" gate="G$1" pin="2"/>
<wire x1="50" y1="-37.5" x2="50" y2="-40" width="0.1524" layer="91"/>
<wire x1="50" y1="-37.5" x2="52.5" y2="-37.5" width="0.1524" layer="91"/>
<junction x="50" y="-37.5"/>
<pinref part="R6" gate="G$1" pin="2"/>
<wire x1="52.5" y1="-37.5" x2="55" y2="-37.5" width="0.1524" layer="91"/>
<wire x1="55" y1="-37.5" x2="57.5" y2="-37.5" width="0.1524" layer="91"/>
<wire x1="57.5" y1="-37.5" x2="57.5" y2="-40" width="0.1524" layer="91"/>
<pinref part="R5" gate="G$1" pin="2"/>
<wire x1="55" y1="-40" x2="55" y2="-37.5" width="0.1524" layer="91"/>
<junction x="55" y="-37.5"/>
<pinref part="R4" gate="G$1" pin="2"/>
<wire x1="52.5" y1="-40" x2="52.5" y2="-37.5" width="0.1524" layer="91"/>
<junction x="52.5" y="-37.5"/>
<wire x1="50" y1="-37.5" x2="45" y2="-37.5" width="0.1524" layer="91"/>
<pinref part="C1" gate="G$1" pin="2"/>
<wire x1="45" y1="-37.5" x2="45" y2="-42.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="J3" gate="G$1" pin="P1/AIN/TOUCH"/>
<pinref part="R1" gate="G$1" pin="2"/>
<wire x1="-20" y1="-27.5" x2="-20" y2="-40" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="J3" gate="G$1" pin="P2/FREE/AIN/TOUCH"/>
<pinref part="R2" gate="G$1" pin="2"/>
<wire x1="0" y1="-27.5" x2="0" y2="-40" width="0.1524" layer="91"/>
</segment>
</net>
<net name="RXD" class="0">
<segment>
<pinref part="R1" gate="G$1" pin="1"/>
<wire x1="-20" y1="-50" x2="-20" y2="-55" width="0.1524" layer="91"/>
<pinref part="J1" gate="G$1" pin="14"/>
<wire x1="-20" y1="-55" x2="-15" y2="-55" width="0.1524" layer="91"/>
<wire x1="-15" y1="-55" x2="-15" y2="-65" width="0.1524" layer="91"/>
<wire x1="-15" y1="-55" x2="2.5" y2="-55" width="0.1524" layer="91"/>
<wire x1="2.5" y1="-55" x2="2.5" y2="-95" width="0.1524" layer="91"/>
<junction x="-15" y="-55"/>
<pinref part="J5" gate="G$1" pin="2"/>
<wire x1="2.5" y1="-95" x2="17.5" y2="-95" width="0.1524" layer="91"/>
<wire x1="17.5" y1="-95" x2="17.5" y2="-90" width="0.1524" layer="91"/>
<label x="5" y="-95" size="2" layer="95"/>
</segment>
</net>
<net name="TXD" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="15"/>
<wire x1="-12.5" y1="-65" x2="-12.5" y2="-52.5" width="0.1524" layer="91"/>
<pinref part="R2" gate="G$1" pin="1"/>
<wire x1="-12.5" y1="-52.5" x2="0" y2="-52.5" width="0.1524" layer="91"/>
<wire x1="0" y1="-52.5" x2="0" y2="-50" width="0.1524" layer="91"/>
<wire x1="0" y1="-52.5" x2="0" y2="-92.5" width="0.1524" layer="91"/>
<junction x="0" y="-52.5"/>
<pinref part="J5" gate="G$1" pin="1"/>
<wire x1="0" y1="-92.5" x2="15" y2="-92.5" width="0.1524" layer="91"/>
<wire x1="15" y1="-92.5" x2="15" y2="-90" width="0.1524" layer="91"/>
<label x="5" y="-92.5" size="2" layer="95"/>
</segment>
</net>
<net name="A0/PF7" class="0">
<segment>
<pinref part="J2" gate="G$1" pin="4"/>
<wire x1="-40" y1="-90" x2="-40" y2="-115" width="0.1524" layer="91"/>
<pinref part="R3" gate="G$1" pin="1"/>
<wire x1="-40" y1="-115" x2="50" y2="-115" width="0.1524" layer="91"/>
<wire x1="50" y1="-115" x2="50" y2="-55" width="0.1524" layer="91"/>
<wire x1="50" y1="-55" x2="50" y2="-50" width="0.1524" layer="91"/>
<junction x="50" y="-55"/>
<pinref part="SW1" gate="1" pin="P"/>
<wire x1="50" y1="-55" x2="60" y2="-55" width="0.1524" layer="91"/>
<pinref part="J4" gate="G$1" pin="8"/>
<wire x1="50" y1="-55" x2="32.5" y2="-55" width="0.1524" layer="91"/>
<wire x1="32.5" y1="-55" x2="32.5" y2="-65" width="0.1524" layer="91"/>
<label x="5" y="-115" size="2" layer="95"/>
</segment>
</net>
<net name="A1/PF6" class="0">
<segment>
<pinref part="J2" gate="G$1" pin="5"/>
<wire x1="-37.5" y1="-90" x2="-37.5" y2="-112.5" width="0.1524" layer="91"/>
<wire x1="-37.5" y1="-112.5" x2="52.5" y2="-112.5" width="0.1524" layer="91"/>
<pinref part="R4" gate="G$1" pin="1"/>
<wire x1="52.5" y1="-112.5" x2="52.5" y2="-65" width="0.1524" layer="91"/>
<wire x1="52.5" y1="-65" x2="52.5" y2="-57.5" width="0.1524" layer="91"/>
<pinref part="SW2" gate="1" pin="P"/>
<wire x1="52.5" y1="-57.5" x2="52.5" y2="-50" width="0.1524" layer="91"/>
<wire x1="52.5" y1="-65" x2="60" y2="-65" width="0.1524" layer="91"/>
<junction x="52.5" y="-65"/>
<pinref part="J4" gate="G$1" pin="7"/>
<wire x1="52.5" y1="-57.5" x2="30" y2="-57.5" width="0.1524" layer="91"/>
<wire x1="30" y1="-57.5" x2="30" y2="-65" width="0.1524" layer="91"/>
<junction x="52.5" y="-57.5"/>
<label x="5" y="-112.5" size="2" layer="95"/>
</segment>
</net>
<net name="A2/PF5" class="0">
<segment>
<pinref part="J2" gate="G$1" pin="6"/>
<wire x1="-35" y1="-90" x2="-35" y2="-110" width="0.1524" layer="91"/>
<wire x1="-35" y1="-110" x2="55" y2="-110" width="0.1524" layer="91"/>
<pinref part="R5" gate="G$1" pin="1"/>
<wire x1="55" y1="-110" x2="55" y2="-75" width="0.1524" layer="91"/>
<wire x1="55" y1="-75" x2="55" y2="-60" width="0.1524" layer="91"/>
<pinref part="SW3" gate="1" pin="P"/>
<wire x1="55" y1="-60" x2="55" y2="-50" width="0.1524" layer="91"/>
<wire x1="55" y1="-75" x2="60" y2="-75" width="0.1524" layer="91"/>
<junction x="55" y="-75"/>
<pinref part="J4" gate="G$1" pin="6"/>
<wire x1="55" y1="-60" x2="27.5" y2="-60" width="0.1524" layer="91"/>
<wire x1="27.5" y1="-60" x2="27.5" y2="-65" width="0.1524" layer="91"/>
<junction x="55" y="-60"/>
<label x="5" y="-110" size="2" layer="95"/>
</segment>
</net>
<net name="A3/PF4" class="0">
<segment>
<pinref part="J2" gate="G$1" pin="7"/>
<wire x1="-32.5" y1="-90" x2="-32.5" y2="-107.5" width="0.1524" layer="91"/>
<wire x1="-32.5" y1="-107.5" x2="57.5" y2="-107.5" width="0.1524" layer="91"/>
<pinref part="R6" gate="G$1" pin="1"/>
<wire x1="57.5" y1="-107.5" x2="57.5" y2="-85" width="0.1524" layer="91"/>
<wire x1="57.5" y1="-85" x2="57.5" y2="-62.5" width="0.1524" layer="91"/>
<pinref part="SW4" gate="1" pin="P"/>
<wire x1="57.5" y1="-62.5" x2="57.5" y2="-50" width="0.1524" layer="91"/>
<wire x1="57.5" y1="-85" x2="60" y2="-85" width="0.1524" layer="91"/>
<junction x="57.5" y="-85"/>
<pinref part="J4" gate="G$1" pin="5"/>
<wire x1="57.5" y1="-62.5" x2="25" y2="-62.5" width="0.1524" layer="91"/>
<wire x1="25" y1="-62.5" x2="25" y2="-65" width="0.1524" layer="91"/>
<junction x="57.5" y="-62.5"/>
<label x="5" y="-107.5" size="2" layer="95"/>
</segment>
</net>
<net name="D9/PB5" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="4"/>
<wire x1="-40" y1="-65" x2="-40" y2="-62.5" width="0.1524" layer="91"/>
<wire x1="-40" y1="-62.5" x2="-60" y2="-62.5" width="0.1524" layer="91"/>
<wire x1="-60" y1="-62.5" x2="-60" y2="-102.5" width="0.1524" layer="91"/>
<pinref part="J5" gate="G$1" pin="12"/>
<wire x1="-60" y1="-102.5" x2="42.5" y2="-102.5" width="0.1524" layer="91"/>
<wire x1="42.5" y1="-102.5" x2="42.5" y2="-90" width="0.1524" layer="91"/>
<label x="5" y="-102.5" size="2" layer="95"/>
<pinref part="LD1" gate="G$1" pin="A"/>
<wire x1="42.5" y1="-102.5" x2="62.5" y2="-102.5" width="0.1524" layer="91"/>
<wire x1="62.5" y1="-102.5" x2="62.5" y2="-105" width="0.1524" layer="91"/>
<junction x="42.5" y="-102.5"/>
</segment>
</net>
<net name="D8/PB4" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="5"/>
<wire x1="-37.5" y1="-65" x2="-37.5" y2="-60" width="0.1524" layer="91"/>
<wire x1="-37.5" y1="-60" x2="-62.5" y2="-60" width="0.1524" layer="91"/>
<wire x1="-62.5" y1="-60" x2="-62.5" y2="-100" width="0.1524" layer="91"/>
<pinref part="J5" gate="G$1" pin="11"/>
<wire x1="-62.5" y1="-100" x2="40" y2="-100" width="0.1524" layer="91"/>
<wire x1="40" y1="-100" x2="40" y2="-90" width="0.1524" layer="91"/>
<label x="5" y="-100" size="2" layer="95"/>
<pinref part="LD2" gate="G$1" pin="A"/>
<wire x1="40" y1="-100" x2="70" y2="-100" width="0.1524" layer="91"/>
<wire x1="70" y1="-100" x2="70" y2="-105" width="0.1524" layer="91"/>
<junction x="40" y="-100"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="LD1" gate="G$1" pin="C"/>
<pinref part="R7" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="LD2" gate="G$1" pin="C"/>
<pinref part="R8" gate="G$1" pin="2"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
