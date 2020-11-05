/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 6F3016CE
/// @DnDArgument : "funcName" "scr_Facing"
function scr_Facing() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 18F41EEB
	/// @DnDParent : 6F3016CE
	/// @DnDArgument : "var" "other.hspeed"
	/// @DnDArgument : "not" "1"
	if(!(other.hspeed == 0))
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0F9722E0
		/// @DnDParent : 18F41EEB
		/// @DnDArgument : "var" "other.hspeed"
		/// @DnDArgument : "op" "2"
		if(other.hspeed > 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 62993B6A
			/// @DnDParent : 0F9722E0
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "other.facing"
			other.facing = 1;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 3C376E51
		/// @DnDParent : 18F41EEB
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7FCDB899
			/// @DnDParent : 3C376E51
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "var" "other.facing"
			other.facing = -1;
		}
	}
}