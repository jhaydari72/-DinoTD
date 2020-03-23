/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 28C196B2
/// @DnDArgument : "code" "$(13_10)$(13_10)var _jaw = false;$(13_10)var _axe = false;$(13_10)var _shield = false;$(13_10)var _rhino = false;$(13_10)var _loc = false;$(13_10)var _temp = false;$(13_10)$(13_10)$(13_10)if (mouse_check_button(mb_left)) {$(13_10)	//show_debug_message("images clicked");$(13_10)	with (obj_axe) {$(13_10)		//towerNumber = 1;$(13_10)		_axe = point_in_rectangle(mouse_x,mouse_y, x-100,y-223,x+100,y+223);$(13_10)	}$(13_10)$(13_10)	with (obj_jaw) {$(13_10)		//towerNumber = 2;$(13_10)		_jaw = point_in_rectangle(mouse_x, mouse_y, x-89,y-250,x+89,y+250);$(13_10)	}$(13_10)$(13_10)	with(obj_shield) {$(13_10)		//towerNumber = 3;$(13_10)		_shield = point_in_rectangle(mouse_x,mouse_y,x-210,y-238,x+210,y+238);	$(13_10)	}$(13_10)$(13_10)	with(obj_rhino) {$(13_10)		//towerNumber = 4;$(13_10)		_rhino = point_in_rectangle(mouse_x,mouse_y,x-160,y-192,x+160,y+192);$(13_10)	}$(13_10)	$(13_10)	_loc = point_in_circle(mouse_x,mouse_y,x,y,200);$(13_10)$(13_10)}$(13_10)$(13_10)_temp = _jaw || _axe || _shield || _rhino;$(13_10)$(13_10)$(13_10)if (_temp) {$(13_10)	//global.selected = true;$(13_10)	//kidId holds id not object itself/$(13_10)	selectionMade = true;$(13_10)	kidId = instance_create_layer(3335,1281, "Instances", obj_PathFinder);$(13_10)	var dinoHeadVar = instance_create_layer(x,y,"Instances", obj_dinoHead);$(13_10)	$(13_10)	if (variable_instance_exists(kidId, "purpose"))$(13_10)	{$(13_10)		variable_instance_set(kidId, "purpose", dinoHeadVar);$(13_10)	}$(13_10)	$(13_10)	//global.kidId = kidId.id;$(13_10)	$(13_10)	if (_axe) {$(13_10)		//_axe = false;$(13_10)		tower = 1;$(13_10)		//global.towerId = tower;$(13_10)		destroyLocalHUD();$(13_10)		$(13_10)		with(obj_axe) {	$(13_10)		destroyLocalHUD();$(13_10)		}$(13_10)	}$(13_10)	if (_jaw) {$(13_10)		 tower = 2;$(13_10)		//global.towerId = tower;$(13_10)		destroyLocalHUD();$(13_10)		$(13_10)	}$(13_10)	$(13_10)	if (_shield) {$(13_10)		tower = 3;$(13_10)		//global.towerId = tower;$(13_10)		destroyLocalHUD();$(13_10)		$(13_10)	}$(13_10)	$(13_10)	if (_rhino) {$(13_10)		tower = 4;$(13_10)		//global.towerId = tower;$(13_10)		destroyLocalHUD();$(13_10)		$(13_10)	}$(13_10)	$(13_10)	//global.tId = towerId;$(13_10)	//global.kId = kidId.id;$(13_10)} //end if$(13_10)$(13_10)else if (_loc){$(13_10)		destroyLocalHUD();$(13_10)		instance_destroy();$(13_10)}$(13_10)/*$(13_10)var collisionId = collision_circle(x,y,200,obj_PathFinder,false, false);$(13_10)if (collisionId != noone) {$(13_10)	//show_debug_message("collision");$(13_10)	if (variable_instance_exists(collisionId, "purpose")) {$(13_10)		var instVar = variable_instance_get(collisionId, "purpose");//purpose is preTower id$(13_10)		show_debug_message("id: ");$(13_10)		show_debug_message(id);$(13_10)		show_debug_message("towerId: ");$(13_10)		show_debug_message(instVar);$(13_10)		$(13_10)		if (instVar == id) {$(13_10)			$(13_10)		tower = instance_create_layer(x,y,"instances",obj_tower);$(13_10)			$(13_10)		$(13_10)			instance_destroy(collisionId);//destroy kid$(13_10)		$(13_10)		$(13_10)			instance_destroy(id);//destroy preTower location$(13_10)		}$(13_10)}$(13_10)	$(13_10)} */$(13_10)/*$(13_10)//id or noone of obj_PathFinder$(13_10)var collision = collision_circle(x,y,200,obj_PathFinder,false,false)$(13_10)//NOT EVEN ENTERING THIS FUNCTION!!$(13_10)$(13_10)//show_debug_message("kid id: ");$(13_10)//show_debug_message(id.kidId.purpose);//this does not work to id kid obj purpose var$(13_10)var instVar = -1;$(13_10)if (variable_instance_exists(kidId, "purpose")) {$(13_10)	instVar = variable_instance_get(kidId, "purpose");$(13_10)}$(13_10)$(13_10)if (selectionMade && collision != noone && instVar == id)//need kid's id$(13_10){$(13_10)	selectionMade = false;$(13_10)	occupied = true;$(13_10)	$(13_10)		tower = instance_create_layer(x,y,"instances",obj_tower);$(13_10)		$(13_10)		$(13_10)			instance_destroy(collision);//destroy kid$(13_10)		$(13_10)		$(13_10)			instance_destroy(id);//destroy preTower location$(13_10)}$(13_10)$(13_10)*/"


var _jaw = false;
var _axe = false;
var _shield = false;
var _rhino = false;
var _loc = false;
var _temp = false;


if (mouse_check_button(mb_left)) {
	//show_debug_message("images clicked");
	with (obj_axe) {
		//towerNumber = 1;
		_axe = point_in_rectangle(mouse_x,mouse_y, x-100,y-223,x+100,y+223);
	}

	with (obj_jaw) {
		//towerNumber = 2;
		_jaw = point_in_rectangle(mouse_x, mouse_y, x-89,y-250,x+89,y+250);
	}

	with(obj_shield) {
		//towerNumber = 3;
		_shield = point_in_rectangle(mouse_x,mouse_y,x-210,y-238,x+210,y+238);	
	}

	with(obj_rhino) {
		//towerNumber = 4;
		_rhino = point_in_rectangle(mouse_x,mouse_y,x-160,y-192,x+160,y+192);
	}
	
	_loc = point_in_circle(mouse_x,mouse_y,x,y,200);

}

_temp = _jaw || _axe || _shield || _rhino;


if (_temp) {
	//global.selected = true;
	//kidId holds id not object itself/
	selectionMade = true;
	kidId = instance_create_layer(3335,1281, "Instances", obj_PathFinder);
	var dinoHeadVar = instance_create_layer(x,y,"Instances", obj_dinoHead);
	
	if (variable_instance_exists(kidId, "purpose"))
	{
		variable_instance_set(kidId, "purpose", dinoHeadVar);
	}
	
	//global.kidId = kidId.id;
	
	if (_axe) {
		//_axe = false;
		tower = 1;
		//global.towerId = tower;
		destroyLocalHUD();
		
		with(obj_axe) {	
		destroyLocalHUD();
		}
	}
	if (_jaw) {
		 tower = 2;
		//global.towerId = tower;
		destroyLocalHUD();
		
	}
	
	if (_shield) {
		tower = 3;
		//global.towerId = tower;
		destroyLocalHUD();
		
	}
	
	if (_rhino) {
		tower = 4;
		//global.towerId = tower;
		destroyLocalHUD();
		
	}
	
	//global.tId = towerId;
	//global.kId = kidId.id;
} //end if

else if (_loc){
		destroyLocalHUD();
		instance_destroy();
}
/*
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
	
} */
/*
//id or noone of obj_PathFinder
var collision = collision_circle(x,y,200,obj_PathFinder,false,false)
//NOT EVEN ENTERING THIS FUNCTION!!

//show_debug_message("kid id: ");
//show_debug_message(id.kidId.purpose);//this does not work to id kid obj purpose var
var instVar = -1;
if (variable_instance_exists(kidId, "purpose")) {
	instVar = variable_instance_get(kidId, "purpose");
}

if (selectionMade && collision != noone && instVar == id)//need kid's id
{
	selectionMade = false;
	occupied = true;
	
		tower = instance_create_layer(x,y,"instances",obj_tower);
		
		
			instance_destroy(collision);//destroy kid
		
		
			instance_destroy(id);//destroy preTower location
}

*//**/