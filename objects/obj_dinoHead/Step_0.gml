/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 53023D6B
/// @DnDArgument : "code" "var collisionId = collision_circle(x,y,200,obj_PathFinder,false, false);$(13_10)if (collisionId != noone) {$(13_10)	//show_debug_message("collision");$(13_10)	if (variable_instance_exists(collisionId, "purpose")) {$(13_10)		var instVar = variable_instance_get(collisionId, "purpose");//purpose is preTower id$(13_10)		show_debug_message("id: ");$(13_10)		show_debug_message(id);$(13_10)		show_debug_message("towerId: ");$(13_10)		show_debug_message(instVar);$(13_10)		$(13_10)		if (instVar == id) {$(13_10)			$(13_10)		tower = instance_create_layer(x,y,"instances",obj_tower);$(13_10)			$(13_10)		$(13_10)			instance_destroy(collisionId);//destroy kid$(13_10)		$(13_10)		$(13_10)			instance_destroy(id);//destroy preTower location$(13_10)		}$(13_10)}$(13_10)	$(13_10)}"
var collisionId = collision_circle(x,y,200,obj_PathFinder,false, false);
if (collisionId != noone) {
	//show_debug_message("collision");
	if (variable_instance_exists(collisionId, "purpose")) {
		var instVar = variable_instance_get(collisionId, "purpose");//purpose is preTower id
		show_debug_message("id: ");
		show_debug_message(id);
		show_debug_message("towerId: ");
		show_debug_message(instVar);
		
		if (instVar == id) {
			
		tower = instance_create_layer(x,y,"instances",obj_tower);
			
		
			instance_destroy(collisionId);//destroy kid
		
		
			instance_destroy(id);//destroy preTower location
		}
}
	
}