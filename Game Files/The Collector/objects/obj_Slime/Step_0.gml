/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 44A417C9
/// @DnDArgument : "x" "hsp"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
x += hsp;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5D631D67
/// @DnDArgument : "var" "monster_health"
/// @DnDArgument : "op" "3"
if(monster_health <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 21160F07
	/// @DnDParent : 5D631D67
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 164BCDD8
/// @DnDArgument : "expr" "hit"
if(hit)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 64BACE3E
	/// @DnDParent : 164BCDD8
	/// @DnDArgument : "spriteind" "hit_sprite"
	sprite_index = hit_sprite;
	image_index = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 765B3E86
	/// @DnDParent : 164BCDD8
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "hit"
	hit = false;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3009990D
else
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 310552CF
	/// @DnDParent : 3009990D
	/// @DnDArgument : "imageind" ""
	/// @DnDArgument : "spriteind" "original_sprite"
	/// @DnDSaveInfo : "spriteind" "obj_Slime"
	sprite_index = original_sprite;
}