/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 62BBBA25
/// @DnDArgument : "code" "$(13_10)var jaw = instance_create_layer(mouse_x-500, mouse_y-450, "Instances", obj_jaw);$(13_10)var axe = instance_create_layer(mouse_x+400, mouse_y-400, "Instances", obj_axe);$(13_10)var shield = instance_create_layer(mouse_x-600, mouse_y+200, "Instances", obj_shield);$(13_10)var rhino = instance_create_layer(mouse_x+200, mouse_y+200, "Instances", obj_rhino);$(13_10)$(13_10)kidId = noone;$(13_10)towerId = -1;$(13_10)global.once = true;$(13_10)tower = -1;$(13_10)occupied = false;$(13_10)selectionMade = false;$(13_10)oneTime = true;"

var jaw = instance_create_layer(mouse_x-500, mouse_y-450, "Instances", obj_jaw);
var axe = instance_create_layer(mouse_x+400, mouse_y-400, "Instances", obj_axe);
var shield = instance_create_layer(mouse_x-600, mouse_y+200, "Instances", obj_shield);
var rhino = instance_create_layer(mouse_x+200, mouse_y+200, "Instances", obj_rhino);

kidId = noone;
towerId = -1;
global.once = true;
tower = -1;
occupied = false;
selectionMade = false;
oneTime = true;