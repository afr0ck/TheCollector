/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
/// @DnDVersion : 1
/// @DnDHash : 2A2638A9
/// @DnDApplyTo : {obj_Stats}
/// @DnDArgument : "lives" "-1"
/// @DnDArgument : "lives_relative" "1"
with(obj_Stats) {
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
__dnd_lives += real(-1);
}

/// @DnDAction : YoYo Games.Instance Variables.If_Lives
/// @DnDVersion : 1
/// @DnDHash : 20084AD7
/// @DnDApplyTo : {obj_Stats}
/// @DnDArgument : "not" "1"
with(obj_Stats) {
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
var l20084AD7_0 = __dnd_lives == 0;
}
if(!l20084AD7_0)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Health
	/// @DnDVersion : 1
	/// @DnDHash : 1DDFA17B
	/// @DnDApplyTo : {obj_Stats}
	/// @DnDParent : 20084AD7
	/// @DnDArgument : "health" "5"
	with(obj_Stats) {
	
	__dnd_health = real(5);
	}

	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 30D1FC7A
	/// @DnDApplyTo : {obj_Stats}
	/// @DnDParent : 20084AD7
	with(obj_Stats) {
	
	__dnd_score = real(0);
	}

	/// @DnDAction : YoYo Games.Rooms.Restart_Room
	/// @DnDVersion : 1
	/// @DnDHash : 73D297FB
	/// @DnDParent : 20084AD7
	room_restart();
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 36A4B794
else
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 0CDA4301
	/// @DnDParent : 36A4B794
	/// @DnDArgument : "value" "true"
	/// @DnDArgument : "var" "game_over"
	global.game_over = true;
}