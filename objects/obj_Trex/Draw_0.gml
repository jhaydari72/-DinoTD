/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 371264D2
/// @DnDArgument : "code" "//draw the sprite$(13_10)draw_self();$(13_10)$(13_10)if (playerHealth < playerMaxHealth) {$(13_10)	draw_healthbar(x-200, y-400, x+500, y-350, (playerHealth/playerMaxHealth)*100, c_red, c_yellow, c_yellow,0,true,true);$(13_10)}"
//draw the sprite
draw_self();

if (playerHealth < playerMaxHealth) {
	draw_healthbar(x-200, y-400, x+500, y-350, (playerHealth/playerMaxHealth)*100, c_red, c_yellow, c_yellow,0,true,true);
}