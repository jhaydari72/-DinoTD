/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 025563B8
/// @DnDArgument : "code" "image_xscale = -1;$(13_10)deathCounter = 0;$(13_10)//pick a random seed for less predictable number generation$(13_10)randomize();$(13_10)$(13_10)//initialize player stats$(13_10)playerLevel = 1;$(13_10)$(13_10)playerMaxHealth = 75 + (playerLevel * 25);$(13_10)playerHealth = playerMaxHealth;$(13_10)$(13_10)playerAttack = 5;$(13_10)playerDefense = 5;$(13_10)$(13_10)playerCurrentEXP = 0;$(13_10)playerMaxEXP = 100;$(13_10)$(13_10)"
image_xscale = -1;
deathCounter = 0;
//pick a random seed for less predictable number generation
randomize();

//initialize player stats
playerLevel = 1;

playerMaxHealth = 75 + (playerLevel * 25);
playerHealth = playerMaxHealth;

playerAttack = 5;
playerDefense = 5;

playerCurrentEXP = 0;
playerMaxEXP = 100;

/// @DnDAction : YoYo Games.Paths.Start_Path
/// @DnDVersion : 1.1
/// @DnDHash : 7D3DF7B1
/// @DnDArgument : "path" "path_dinosaur"
/// @DnDArgument : "speed" "2"
/// @DnDSaveInfo : "path" "95f57f16-820c-465c-9b86-edf760772bd6"
path_start(path_dinosaur, 2, path_action_stop, false);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 27C2ACD5
/// @DnDArgument : "soundid" "bugle"
/// @DnDSaveInfo : "soundid" "836dff18-9794-4dcf-8e1b-613205bacb8b"
audio_play_sound(bugle, 0, 0);