/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 3668BE4E
/// @DnDArgument : "steps" "300"
alarm_set(0, 300);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4C5BBE84
/// @DnDArgument : "code" "global.map = ds_map_create();$(13_10)global.mapR = ds_map_create();$(13_10)global.towerId = -1;$(13_10)global.kId = -1;$(13_10)global.selected = false;$(13_10)contactKid = false;$(13_10)global.tId = -1;$(13_10)global.once = true;$(13_10)global.instanceId = -1;$(13_10)"
global.map = ds_map_create();
global.mapR = ds_map_create();
global.towerId = -1;
global.kId = -1;
global.selected = false;
contactKid = false;
global.tId = -1;
global.once = true;
global.instanceId = -1;