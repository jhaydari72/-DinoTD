/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 567EB29B
/// @DnDArgument : "code" "$(13_10)	if distance_to_object(obj_Trex) < 2000$(13_10)	{$(13_10)		var inst;$(13_10)		inst = instance_create_layer(x, y-150, "Instances", obj_skull);$(13_10)		audio_play_sound(towerFire,0.5,false);$(13_10)	}$(13_10)$(13_10)	$(13_10)alarm[0] = 330;$(13_10)$(13_10)//this is a change to test github desktop"

	if distance_to_object(obj_Trex) < 2000
	{
		var inst;
		inst = instance_create_layer(x, y-150, "Instances", obj_skull);
		audio_play_sound(towerFire,0.5,false);
	}

	
alarm[0] = 330;

//this is a change to test github desktop