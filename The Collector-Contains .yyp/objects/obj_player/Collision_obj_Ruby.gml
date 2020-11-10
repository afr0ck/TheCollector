/// @DnDAction : YoYo Games.Instance Variables.If_Score
/// @DnDVersion : 1
/// @DnDHash : 1DFF3A11
/// @DnDApplyTo : {obj_Stats}
/// @DnDArgument : "value" "10"
with(obj_Stats) {
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
var l1DFF3A11_0 = __dnd_score == 10;
}
if(l1DFF3A11_0)
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 2936861B
	/// @DnDParent : 1DFF3A11
	/// @DnDArgument : "value" "true"
	/// @DnDArgument : "var" "game_win"
	global.game_win = true;

	/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 60F9B705
	/// @DnDParent : 1DFF3A11
	audio_stop_all();

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 5DE08A3E
	/// @DnDParent : 1DFF3A11
	/// @DnDArgument : "soundid" "snd_Victory"
	/// @DnDSaveInfo : "soundid" "snd_Victory"
	audio_play_sound(snd_Victory, 0, 0);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4324A822
	/// @DnDApplyTo : other
	/// @DnDParent : 1DFF3A11
	with(other) instance_destroy();
}