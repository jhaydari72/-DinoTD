/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 19A56BDA
/// @DnDArgument : "code" "path = -1;$(13_10)depth = -2;$(13_10)inst = -1;$(13_10)$(13_10)pathX = global.instanceId.x;$(13_10)pathY = global.instanceId.y;$(13_10)$(13_10)//inst = instance_nearest(x,y,obj_preTower);$(13_10)identify = -1;$(13_10)path = aStarGetPath(x,y,pathX,pathY);//mouse_x, mouse_y);	//returns path$(13_10)//oKid = noone;$(13_10)purpose = noone;$(13_10)//audio_play_sound(footsteps.id, 0.4,false);$(13_10)$(13_10)//put in draw event$(13_10)//draw_self();$(13_10)//path_index is system variable$(13_10)//draw path elements$(13_10)/*$(13_10)if (path_get_number(path_index)>=2) {$(13_10)	//draw path$(13_10)	draw_set_color(c_blue);$(13_10)	var temp = path_get_number(path_index);//returns number of points on path$(13_10)	for(var i = 0; i<temp-1;i++) {$(13_10)		draw_line($(13_10)			path_get_point_x(path_index,i) + .5*obj_Astar.blockSize,$(13_10)			path_get_point_y(path_index,i) + .5*obj_Astar.blockSize,$(13_10)			path_get_point_x(path_index,i+1) + .5*obj_Astar.blockSize,$(13_10)			path_get_point_y(path_index,i+1) + .5*obj_Astar.blockSize$(13_10)			);$(13_10)	}$(13_10)	$(13_10)	//draw starting and ending point$(13_10)	draw_set_color(c_green);//sets base color for drawing functions$(13_10)	draw_circle(path_get_point_x(path_index,0)+.5*obj_Astar.blockSize,$(13_10)		path_get_point_y(path_index,0)+.5*obj_Astar.blockSize,5,false);$(13_10)	draw_set_color(c_red);$(13_10)	$(13_10)	//****not drawing end red circle!$(13_10)	draw_circle(path_get_point_x(path_index,path_get_number(path_index)-1 +.5*obj_Astar.blockSize),$(13_10)		path_get_point_y(path_index,path_get_number(path_index)-1+.5*obj_Astar.blockSize),5,false);$(13_10)		}$(13_10)		$(13_10)		*/"
path = -1;
depth = -2;
inst = -1;

pathX = global.instanceId.x;
pathY = global.instanceId.y;

//inst = instance_nearest(x,y,obj_preTower);
identify = -1;
path = aStarGetPath(x,y,pathX,pathY);//mouse_x, mouse_y);	//returns path
//oKid = noone;
purpose = noone;
//audio_play_sound(footsteps.id, 0.4,false);

//put in draw event
//draw_self();
//path_index is system variable
//draw path elements
/*
if (path_get_number(path_index)>=2) {
	//draw path
	draw_set_color(c_blue);
	var temp = path_get_number(path_index);//returns number of points on path
	for(var i = 0; i<temp-1;i++) {
		draw_line(
			path_get_point_x(path_index,i) + .5*obj_Astar.blockSize,
			path_get_point_y(path_index,i) + .5*obj_Astar.blockSize,
			path_get_point_x(path_index,i+1) + .5*obj_Astar.blockSize,
			path_get_point_y(path_index,i+1) + .5*obj_Astar.blockSize
			);
	}
	
	//draw starting and ending point
	draw_set_color(c_green);//sets base color for drawing functions
	draw_circle(path_get_point_x(path_index,0)+.5*obj_Astar.blockSize,
		path_get_point_y(path_index,0)+.5*obj_Astar.blockSize,5,false);
	draw_set_color(c_red);
	
	//****not drawing end red circle!
	draw_circle(path_get_point_x(path_index,path_get_number(path_index)-1 +.5*obj_Astar.blockSize),
		path_get_point_y(path_index,path_get_number(path_index)-1+.5*obj_Astar.blockSize),5,false);
		}
		
		*//**/

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 6EA22BB2
/// @DnDArgument : "soundid" "footsteps"
/// @DnDSaveInfo : "soundid" "4adbf66c-8149-42ca-9bb6-0d8d4b5fdcb3"
audio_play_sound(footsteps, 0, 0);