/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 59C51B54
/// @DnDArgument : "expr" "canAttack"
if(canAttack)
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 728E00D6
	/// @DnDParent : 59C51B54
	/// @DnDArgument : "steps" "15"
	alarm_set(0, 15);
}