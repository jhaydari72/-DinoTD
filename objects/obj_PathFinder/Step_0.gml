/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 503DF95B
/// @DnDArgument : "code" "/*if (!instance_exists(purpose.id)) {$(13_10)	$(13_10)	show_debug_message("pretower destroyed");$(13_10)		inst = instance_nth_nearest(x,y,obj_preTower, 1);$(13_10)		purpose = inst.id;$(13_10)			$(13_10)		//inst = instance_nth_nearest(x,y,obj_preTower, 20);$(13_10)	inst.occupied = true;$(13_10)	pathX = inst.x;$(13_10)	pathY = inst.y;$(13_10)	path = aStarGetPath(x,y,pathX,pathY);$(13_10)	$(13_10)} else { */$(13_10)//inst = instance_nearest(x,y,obj_preTower);$(13_10)$(13_10)//if (mouse_check_button_pressed(mb_left) && global.selected) {$(13_10)	path = aStarGetPath(x,y,pathX,pathY);//mouse_x, mouse_y);	//returns path$(13_10)	//path_start(path,1,0,true);$(13_10)	//path index to start, speed, endaction, absolute$(13_10)//global.selected = false;$(13_10)//}$(13_10)$(13_10)//}"
/*if (!instance_exists(purpose.id)) {
	
	show_debug_message("pretower destroyed");
		inst = instance_nth_nearest(x,y,obj_preTower, 1);
		purpose = inst.id;
			
		//inst = instance_nth_nearest(x,y,obj_preTower, 20);
	inst.occupied = true;
	pathX = inst.x;
	pathY = inst.y;
	path = aStarGetPath(x,y,pathX,pathY);
	
} else { */
//inst = instance_nearest(x,y,obj_preTower);

//if (mouse_check_button_pressed(mb_left) && global.selected) {
	path = aStarGetPath(x,y,pathX,pathY);//mouse_x, mouse_y);	//returns path
	//path_start(path,1,0,true);
	//path index to start, speed, endaction, absolute
//global.selected = false;
//}

//}/**/

/// @DnDAction : YoYo Games.Paths.Start_Path
/// @DnDVersion : 1.1
/// @DnDHash : 02A71DE5
/// @DnDArgument : "path" "path"
/// @DnDArgument : "speed" "3"
path_start(path, 3, path_action_stop, false);