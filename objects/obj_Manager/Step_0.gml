/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3DD0771E
/// @DnDArgument : "code" "///@description$(13_10)$(13_10)$(13_10)if (keyboard_check_pressed(ord("M"))) {$(13_10)	menuOpen = !menuOpen;$(13_10)	$(13_10)	if (menuOpen)$(13_10)		event_user(0);$(13_10)	else$(13_10)		event_user(1);$(13_10)}$(13_10)"
///@description


if (keyboard_check_pressed(ord("M"))) {
	menuOpen = !menuOpen;
	
	if (menuOpen)
		event_user(0);
	else
		event_user(1);
}