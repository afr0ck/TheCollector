/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 21FC58D4
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "obj_player"
var l21FC58D4_0 = false;
l21FC58D4_0 = instance_exists(obj_player);
if(l21FC58D4_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 01B989D5
	/// @DnDInput : 2
	/// @DnDParent : 21FC58D4
	/// @DnDArgument : "expr" "obj_player.x"
	/// @DnDArgument : "expr_1" "obj_player.y"
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "var_1" "y"
	x = obj_player.x;
	y = obj_player.y;
}