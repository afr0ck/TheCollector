/// @DnDAction : YoYo Games.Instance Variables.If_Score
/// @DnDVersion : 1
/// @DnDHash : 7E5BD549
/// @DnDApplyTo : {obj_Stats}
/// @DnDArgument : "value" "10"
with(obj_Stats) {
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
var l7E5BD549_0 = __dnd_score == 10;
}
if(l7E5BD549_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 76B5E45F
	/// @DnDParent : 7E5BD549
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "visible"
	visible = true;
}