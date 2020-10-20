/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 48256824
/// @DnDArgument : "script" "scr_Facing"
/// @DnDSaveInfo : "script" "scr_Facing"
script_execute(scr_Facing);

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 0DB87F8F
/// @DnDArgument : "key" "ord("D")"
/// @DnDArgument : "not" "1"
var l0DB87F8F_0;
l0DB87F8F_0 = keyboard_check(ord("D"));
if (!l0DB87F8F_0)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 0EFB6DB8
	/// @DnDParent : 0DB87F8F
	/// @DnDArgument : "key" "ord("A")"
	/// @DnDArgument : "not" "1"
	var l0EFB6DB8_0;
	l0EFB6DB8_0 = keyboard_check(ord("A"));
	if (!l0EFB6DB8_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7D2E15CE
		/// @DnDParent : 0EFB6DB8
		/// @DnDArgument : "var" "hspeed"
		hspeed = 0;
	}
}

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 5C589785
/// @DnDArgument : "script" "scr_WallCollisionCheck"
/// @DnDSaveInfo : "script" "scr_WallCollisionCheck"
script_execute(scr_WallCollisionCheck);