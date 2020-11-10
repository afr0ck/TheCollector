/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 27CEA5B4
/// @DnDArgument : "x" "hsp"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
x += hsp;

/// @DnDAction : YoYo Games.Instance Variables.If_Health
/// @DnDVersion : 1
/// @DnDHash : 0DF2BA5D
/// @DnDArgument : "op" "3"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
if(__dnd_health <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 581A3541
	/// @DnDParent : 0DF2BA5D
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 2202DBF6
/// @DnDArgument : "expr" "hit"
if(hit)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 6676603B
	/// @DnDParent : 2202DBF6
	/// @DnDArgument : "spriteind" "hit_sprite"
	sprite_index = hit_sprite;
	image_index = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0F950550
	/// @DnDInput : 2
	/// @DnDParent : 2202DBF6
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "expr_1" "true"
	/// @DnDArgument : "var" "hit"
	/// @DnDArgument : "var_1" "hpBar"
	hit = false;
	hpBar = true;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 7E2C1802
	/// @DnDParent : 2202DBF6
	/// @DnDArgument : "steps" "15"
	alarm_set(0, 15);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 5020AF39
else
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 115E6EC9
	/// @DnDParent : 5020AF39
	/// @DnDArgument : "imageind" ""
	/// @DnDArgument : "spriteind" "original_sprite"
	sprite_index = original_sprite;
}