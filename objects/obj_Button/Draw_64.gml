/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 144E83D6
/// @DnDArgument : "code" "///@description$(13_10)//set color$(13_10)draw_set_color(merge_color(c_ltgray, c_white, hover));$(13_10)$(13_10)//draw rounded rectangle$(13_10)draw_roundrect(x,y,x+width,y+height,0);$(13_10)$(13_10)//draw text$(13_10)draw_set_color(c_black);$(13_10)draw_set_halign(fa_center);$(13_10)draw_set_valign(fa_middle);$(13_10)draw_text(x+width/2, y+height/2, text);$(13_10)draw_set_halign(fa_left);$(13_10)draw_set_valign(fa_top);$(13_10)$(13_10)//reset color$(13_10)draw_set_color(c_white);"
///@description
//set color
draw_set_color(merge_color(c_ltgray, c_white, hover));

//draw rounded rectangle
draw_roundrect(x,y,x+width,y+height,0);

//draw text
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x+width/2, y+height/2, text);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

//reset color
draw_set_color(c_white);