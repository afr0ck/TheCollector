/// @DnDAction : YoYo Games.Instance Variables.If_Score
/// @DnDVersion : 1
/// @DnDHash : 7F023E4A
/// @DnDApplyTo : {obj_Stats}
/// @DnDArgument : "value" "10"
with(obj_Stats) {
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
var l7F023E4A_0 = __dnd_score == 10;
}
if(l7F023E4A_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3BF1D3B6
	/// @DnDParent : 7F023E4A
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "visible"
	visible = true;
}