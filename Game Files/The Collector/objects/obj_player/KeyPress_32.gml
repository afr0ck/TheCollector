/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 400AD387
/// @DnDArgument : "var" "jumpCounter"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "2"
if(jumpCounter < 2)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4983BED0
	/// @DnDParent : 400AD387
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "jumpCounter"
	jumpCounter += 1;

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 7B26A164
	/// @DnDParent : 400AD387
	/// @DnDArgument : "x" "x+hspeed"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "y-5"
	/// @DnDArgument : "y_relative" "1"
	direction = point_direction(x, y, x + x+hspeed, y + y-5);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 0BA289F0
	/// @DnDParent : 400AD387
	/// @DnDArgument : "speed" "hspeed"
	/// @DnDArgument : "type" "1"
	hspeed = hspeed;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 413DD890
	/// @DnDParent : 400AD387
	/// @DnDArgument : "speed" "-11"
	/// @DnDArgument : "type" "2"
	vspeed = -11;
}