/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6FAFADC5
/// @DnDArgument : "code" "part_system_clear(first_emitter);$(13_10)part_emitter_clear(FirstParticleSystem, first_emitter);$(13_10)part_system_destroy(FirstParticleSystem);$(13_10)part_emitter_destroy_all(first_emitter);"
part_system_clear(first_emitter);
part_emitter_clear(FirstParticleSystem, first_emitter);
part_system_destroy(FirstParticleSystem);
part_emitter_destroy_all(first_emitter);