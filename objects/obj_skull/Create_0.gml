/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 16C13F11
/// @DnDArgument : "code" "$(13_10)inst = instance_nearest(x,y,obj_Trex);$(13_10)changeX = distance_to_object(inst);$(13_10)speed = 25; //value is Vx$(13_10)time = changeX / speed;$(13_10)Vy = 100;$(13_10)angle_val = point_direction(x,y, inst.x, inst.y);$(13_10)direction = angle_val;"

inst = instance_nearest(x,y,obj_Trex);
changeX = distance_to_object(inst);
speed = 25; //value is Vx
time = changeX / speed;
Vy = 100;
angle_val = point_direction(x,y, inst.x, inst.y);
direction = angle_val;