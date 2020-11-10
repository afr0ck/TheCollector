/// @DnDAction : YoYo Games.Instance Variables.If_Score
/// @DnDVersion : 1
/// @DnDHash : 7303AC11
/// @DnDApplyTo : {obj_Stats}
/// @DnDArgument : "value" "10"
with(obj_Stats) {
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
var l7303AC11_0 = __dnd_score == 10;
}
if(l7303AC11_0)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 147519D3
	/// @DnDApplyTo : {obj_Stats}
	/// @DnDParent : 7303AC11
	with(obj_Stats) {
	
	__dnd_score = real(0);
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0FCBB8F0
	/// @DnDApplyTo : {obj_snd_Lvl1}
	/// @DnDParent : 7303AC11
	with(obj_snd_Lvl1) instance_destroy();

	/// @DnDAction : YoYo Games.Rooms.Next_Room
	/// @DnDVersion : 1
	/// @DnDHash : 49D12EA3
	/// @DnDParent : 7303AC11
	room_goto_next();
}