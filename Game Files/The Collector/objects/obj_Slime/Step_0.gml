/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 758FC9CA
/// @DnDArgument : "x" "hsp"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
x += hsp;

/// @DnDAction : YoYo Games.Instance Variables.If_Health
/// @DnDVersion : 1
/// @DnDHash : 299824F6
/// @DnDArgument : "op" "3"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
if(__dnd_health <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 27B475EE
	/// @DnDParent : 299824F6
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 2484020A
/// @DnDArgument : "expr" "hit"
if(hit)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 723A41B8
	/// @DnDParent : 2484020A
	/// @DnDArgument : "spriteind" "hit_sprite"
	sprite_index = hit_sprite;
	image_index = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0652A113
	/// @DnDInput : 2
	/// @DnDParent : 2484020A
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "expr_1" "true"
	/// @DnDArgument : "var" "hit"
	/// @DnDArgument : "var_1" "hpBar"
	hit = false;
	hpBar = true;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 16CD89D0
	/// @DnDParent : 2484020A
	/// @DnDArgument : "steps" "15"
	alarm_set(0, 15);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 000383EA
else
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 5575B1BC
	/// @DnDParent : 000383EA
	/// @DnDArgument : "imageind" ""
	/// @DnDArgument : "spriteind" "original_sprite"
	sprite_index = original_sprite;
}