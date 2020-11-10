/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6A4C8DE7
/// @DnDArgument : "expr" "camera_get_view_y(view_camera[0])"
/// @DnDArgument : "var" "camOffSet"
camOffSet = camera_get_view_y(view_camera[0]);

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 1D875228
/// @DnDArgument : "expr" "hpBar"
if(hpBar)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Health
	/// @DnDVersion : 1
	/// @DnDHash : 70C3C6FE
	/// @DnDParent : 1D875228
	/// @DnDArgument : "x1" "-20"
	/// @DnDArgument : "x1_relative" "1"
	/// @DnDArgument : "y1" "-25 - camOffSet"
	/// @DnDArgument : "y1_relative" "1"
	/// @DnDArgument : "x2" "20"
	/// @DnDArgument : "x2_relative" "1"
	/// @DnDArgument : "y2" "-23 - camOffSet"
	/// @DnDArgument : "y2_relative" "1"
	/// @DnDArgument : "backcol" "$FF000000"
	/// @DnDArgument : "barcol" "$FF000000"
	/// @DnDArgument : "mincol" "$FF0000FF"
	/// @DnDArgument : "maxcol" "$FF00FF4C"
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	draw_healthbar(x + -20, y + -25 - camOffSet, x + 20, y + -23 - camOffSet, __dnd_health, $FF000000, $FF0000FF & $FFFFFF, $FF00FF4C & $FFFFFF, 0, (($FF000000>>24) != 0), (($FF000000>>24) != 0));
}