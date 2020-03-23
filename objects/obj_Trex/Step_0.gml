/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 40A78D1A
/// @DnDArgument : "code" "randomize();$(13_10)$(13_10)if collision_circle(x,y,100, obj_skull, false, true)$(13_10){$(13_10)	playerHealth -= 25;$(13_10)	//instance_destroy(id, true);$(13_10)	$(13_10)	audio_play_sound(choose(explosionCar, explNoDebris, expl, explRockDebris),0.9, false);$(13_10)	$(13_10)	var temp = random_range(1,100);$(13_10)	if (temp > 70){$(13_10)		audio_play_sound(roarDinoAmateur,0.5,false);$(13_10)	}$(13_10)	with (obj_skull) {$(13_10)		instance_create_layer(x,y,"Instances", obj_first_particle);$(13_10)		sprite_delete(id);$(13_10)		instance_destroy(id, true);$(13_10)		}$(13_10)		$(13_10)		$(13_10)}$(13_10)$(13_10)$(13_10)if (playerHealth >= playerMaxHealth) {$(13_10)	playerHealth = playerMaxHealth;	$(13_10)}$(13_10)$(13_10)if (playerHealth <= 0) {$(13_10)	$(13_10)	instance_destroy();$(13_10)	$(13_10)	$(13_10)	with(obj_GUI) {$(13_10)		meat_and_bones += 50;$(13_10)	}$(13_10)	//game_restart();$(13_10)}$(13_10)"
randomize();

if collision_circle(x,y,100, obj_skull, false, true)
{
	playerHealth -= 25;
	//instance_destroy(id, true);
	
	audio_play_sound(choose(explosionCar, explNoDebris, expl, explRockDebris),0.9, false);
	
	var temp = random_range(1,100);
	if (temp > 70){
		audio_play_sound(roarDinoAmateur,0.5,false);
	}
	with (obj_skull) {
		instance_create_layer(x,y,"Instances", obj_first_particle);
		sprite_delete(id);
		instance_destroy(id, true);
		}
		
		
}


if (playerHealth >= playerMaxHealth) {
	playerHealth = playerMaxHealth;	
}

if (playerHealth <= 0) {
	
	instance_destroy();
	
	
	with(obj_GUI) {
		meat_and_bones += 50;
	}
	//game_restart();
}