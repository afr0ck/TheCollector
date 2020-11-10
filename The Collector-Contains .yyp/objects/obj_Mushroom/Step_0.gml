/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 193B1BD0
/// @DnDArgument : "x" "hsp"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
x += hsp;

/// @DnDAction : YoYo Games.Instance Variables.If_Health
/// @DnDVersion : 1
/// @DnDHash : 5A2BBE6D
/// @DnDArgument : "op" "3"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
if(__dnd_health <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 05BE8509
	/// @DnDParent : 5A2BBE6D
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 0B22D1DD
/// @DnDArgument : "expr" "hit"
if(hit)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 39F5C2BB
	/// @DnDParent : 0B22D1DD
	/// @DnDArgument : "spriteind" "hit_sprite"
	sprite_index = hit_sprite;
	image_index = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4136B1BB
	/// @DnDInput : 2
	/// @DnDParent : 0B22D1DD
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "expr_1" "true"
	/// @DnDArgument : "var" "hit"
	/// @DnDArgument : "var_1" "hpBar"
	hit = false;
	hpBar = true;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 433C72CE
	/// @DnDParent : 0B22D1DD
	/// @DnDArgument : "steps" "15"
	alarm_set(0, 15);
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 0CF75ABC
/// @DnDArgument : "expr" "crushed"
if(crushed)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 25C8F6D6
	/// @DnDParent : 0CF75ABC
	/// @DnDArgument : "imageind" ""
	/// @DnDArgument : "spriteind" "spr_MushroomStomp"
	/// @DnDSaveInfo : "spriteind" "spr_MushroomStomp"
	sprite_index = spr_MushroomStomp;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6373CD31
	/// @DnDParent : 0CF75ABC
	/// @DnDArgument : "var" "hsp"
	hsp = 0;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 2BE53D3B
else
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 09145039
	/// @DnDParent : 2BE53D3B
	/// @DnDArgument : "imageind" ""
	/// @DnDArgument : "spriteind" "original_sprite"
	sprite_index = original_sprite;
}