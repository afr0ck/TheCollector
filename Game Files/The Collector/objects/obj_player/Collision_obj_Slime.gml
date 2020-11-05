/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 5AACB887
/// @DnDArgument : "expr" "vspeed > 0 and y < other.y"
if(vspeed > 0 and y < other.y)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7CF629B6
	/// @DnDApplyTo : other
	/// @DnDParent : 5AACB887
	/// @DnDArgument : "expr" "-10"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "monster_health"
	with(other) {
	monster_health += -10;
	
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 25BDF45A
	/// @DnDApplyTo : other
	/// @DnDParent : 5AACB887
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "hit"
	with(other) {
	hit = true;
	
	}

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 397DA5F7
	/// @DnDParent : 5AACB887
	/// @DnDArgument : "speed" "-10"
	/// @DnDArgument : "type" "2"
	vspeed = -10;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3C46234D
else
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Health
	/// @DnDVersion : 1
	/// @DnDHash : 58036DA0
	/// @DnDApplyTo : {obj_Stats}
	/// @DnDParent : 3C46234D
	/// @DnDArgument : "health" "-1"
	/// @DnDArgument : "health_relative" "1"
	with(obj_Stats) {
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	__dnd_health += real(-1);
	}

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 4A1A879A
	/// @DnDParent : 3C46234D
	/// @DnDArgument : "imageind" ""
	/// @DnDArgument : "spriteind" "spr_PlayerHurt"
	/// @DnDSaveInfo : "spriteind" "spr_PlayerHurt"
	sprite_index = spr_PlayerHurt;

	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 193B2C86
	/// @DnDParent : 3C46234D
	/// @DnDArgument : "x" "40 * -other.image_xscale"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-20"
	/// @DnDArgument : "y_relative" "1"
	x += 40 * -other.image_xscale;
	y += -20;

	/// @DnDAction : YoYo Games.Instance Variables.If_Health
	/// @DnDVersion : 1
	/// @DnDHash : 06FDE5F2
	/// @DnDApplyTo : {obj_Stats}
	/// @DnDParent : 3C46234D
	with(obj_Stats) {
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	var l06FDE5F2_0 = __dnd_health == 0;
	}
	if(l06FDE5F2_0)
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 5BF56CA8
		/// @DnDParent : 06FDE5F2
		instance_destroy();
	}
}