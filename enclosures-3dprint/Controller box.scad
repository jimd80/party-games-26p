use <D2Lib v2.scad>;

// Dimensions in mm
// Ender3 v2: x=224, y=212
// Ender3 v3: x=220, y=220
// battery box: 15.5 x 25.8 x 52.75 conn: 5.6 x 4.2
// microbit: 43.2 x 11 x 51.8
// cable: 60 x 7.2 x 66     16.4x7.2   10x6.2
//
// L: 1.2 + 3x (44.2 + .6 + 26.8) + .6 + 1.2 - .6 = 218.4
// W: 1.2 + 9x (7.2 + .6 + 15.5) + .6 + 1.2 - .6 = 216.9

count = 6;
game_width = 139;
game_height = 82;
game_pcb_thick = 1.6;
game_front_thick = 12;
game_back_thick = 15;

game_switch_h1 = 19;
game_switch_h2 = 23.4;
game_switch_xoff1 = 1;
game_switch_xoff2 = 5;

case_wall = 1.2;
case_bottom = 1.2;

wall_clearance = 1;
game_clearance = 1.5;
insert_margin = 1;

top_sleeve_w = 5;
top_sleeve_insert_w = 10;
top_sleeve_insert_h = 20;

bottom_sleeve_h = 5;
bottom_sleeve_insert_w = game_pcb_thick + insert_margin + 2;

// Init
$fn=$preview ? 20 : 50;
q = .01;
q2 = q*2;

game_thick = game_front_thick + game_pcb_thick + game_back_thick;
game_spacing = game_thick + game_clearance;
total_w = case_wall + game_width + case_wall;
total_l = case_wall + wall_clearance + game_thick * count + game_clearance * (count - 1) + wall_clearance + case_wall;
total_h = case_bottom + game_height;

echo("Total w: ", total_w);
echo("Total l: ", total_l);

difference()
{
    beam_xyz(0, total_w, 0, total_l, 0, total_h);
    beam_xyz(case_wall + top_sleeve_w, total_w - case_wall - top_sleeve_w, case_wall, total_l - case_wall, case_bottom + bottom_sleeve_h, total_h + q);
    
    for (i = [0:count-1])
    {
        // side and bottom cutouts
        margin = insert_margin / 2;
        beam_xyz(case_wall, total_w - case_wall,
        case_wall + wall_clearance + game_front_thick + game_spacing * i - margin,
        case_wall + wall_clearance + game_front_thick + game_spacing * i + game_pcb_thick + margin,
        case_bottom, total_h + q);
        
        // top insert
        dy = (top_sleeve_insert_w - (game_pcb_thick + insert_margin)) / 2;
        beam_xyz_slopedz4(case_wall, total_w - case_wall,
        case_wall + wall_clearance + game_front_thick + game_spacing * i - margin,
        case_wall + wall_clearance + game_front_thick + game_spacing * i + game_pcb_thick + margin,
        total_h - top_sleeve_insert_h, total_h + q,
        0,0,-dy,-dy);
        
        // bottom insert
        dy2 = (bottom_sleeve_insert_w - (game_pcb_thick + insert_margin)) / 2;
        beam_xyz_slopedz4(case_wall + top_sleeve_w, total_w - case_wall - top_sleeve_w,
        case_wall + wall_clearance + game_front_thick + game_spacing * i - margin,
        case_wall + wall_clearance + game_front_thick + game_spacing * i + game_pcb_thick + margin,
        case_bottom, case_bottom + bottom_sleeve_h + q,
        0,0,-dy2,-dy2);
    }
}

beam_xyz(total_w / 2 + game_switch_xoff1, total_w / 2 + game_switch_xoff2, 0, total_l, 0, case_bottom + game_switch_h2);
