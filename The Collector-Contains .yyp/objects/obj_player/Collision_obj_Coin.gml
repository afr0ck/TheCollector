/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 2A357AFA
/// @DnDApplyTo : {obj_Stats}
/// @DnDArgument : "score" "1"
/// @DnDArgument : "score_relative" "1"
with(obj_Stats) {
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
__dnd_score += real(1);
}

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 1D555289
/// @DnDArgument : "soundid" "snd_Coin"
/// @DnDSaveInfo : "soundid" "snd_Coin"
audio_play_sound(snd_Coin, 0, 0);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 432B87E7
/// @DnDApplyTo : other
with(other) instance_destroy();