/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 5AACB887
/// @DnDArgument : "expr" "vspeed > 0 and y < other.y"
if(vspeed > 0 and y < other.y)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 19F12FDD
	/// @DnDApplyTo : other
	/// @DnDParent : 5AACB887
	with(other) instance_destroy();

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 397DA5F7
	/// @DnDParent : 5AACB887
	/// @DnDArgument : "speed" "-4"
	/// @DnDArgument : "type" "2"
	vspeed = -4;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3C46234D
else
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Health
	/// @DnDVersion : 1
	/// @DnDHash : 58036DA0
	/// @DnDParent : 3C46234D
	/// @DnDArgument : "health" "-1"
	/// @DnDArgument : "health_relative" "1"
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	__dnd_health += real(-1);
}