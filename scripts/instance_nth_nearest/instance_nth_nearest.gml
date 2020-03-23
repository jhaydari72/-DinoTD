/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3BF17412
/// @DnDArgument : "code" "//instance_nth_nearest(x,y,obj,n)$(13_10)$(13_10)//returns id of nth nearest instance of an object$(13_10)//to a given point or noone if none is found$(13_10)$(13_10)//	x,y	point coordinates, real$(13_10)//	obj	object index, real$(13_10)//	n	proximity, real$(13_10)$(13_10)///GMEscripts.com/license$(13_10){$(13_10)	var pointx, pointy, object, n, list, nearest;$(13_10)	pointx = argument0;$(13_10)	pointy = argument1;$(13_10)	object = argument2;$(13_10)	n = argument3;$(13_10)	n = min(max(1,n), instance_number(object));$(13_10)	list = ds_priority_create();$(13_10)	nearest = noone;$(13_10)	with (object) ds_priority_add(list,id,distance_to_point(pointx, pointy));$(13_10)	repeat (n) nearest = ds_priority_delete_min(list);$(13_10)	ds_priority_destroy(list);$(13_10)	return nearest;$(13_10)	$(13_10)}"
//instance_nth_nearest(x,y,obj,n)

//returns id of nth nearest instance of an object
//to a given point or noone if none is found

//	x,y	point coordinates, real
//	obj	object index, real
//	n	proximity, real

///GMEscripts.com/license
{
	var pointx, pointy, object, n, list, nearest;
	pointx = argument0;
	pointy = argument1;
	object = argument2;
	n = argument3;
	n = min(max(1,n), instance_number(object));
	list = ds_priority_create();
	nearest = noone;
	with (object) ds_priority_add(list,id,distance_to_point(pointx, pointy));
	repeat (n) nearest = ds_priority_delete_min(list);
	ds_priority_destroy(list);
	return nearest;
	
}