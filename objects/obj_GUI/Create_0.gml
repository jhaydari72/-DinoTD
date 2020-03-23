/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2A49DE77
/// @DnDArgument : "code" "active = camera_get_active();$(13_10)$(13_10)number_kids = 0;$(13_10)meat_and_bones = 0;$(13_10)wave_number = 0;$(13_10)$(13_10)if (active != view_camera[0])$(13_10){$(13_10)	view_camera[0] = active;	$(13_10)}$(13_10)$(13_10)//xDiff = round (view_get_xport(0) / 2);  not using viewports$(13_10)//yDiff = round (view_get_yport(0) / 2);"
active = camera_get_active();

number_kids = 0;
meat_and_bones = 0;
wave_number = 0;

if (active != view_camera[0])
{
	view_camera[0] = active;	
}

//xDiff = round (view_get_xport(0) / 2);  not using viewports
//yDiff = round (view_get_yport(0) / 2);