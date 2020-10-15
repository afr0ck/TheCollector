/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 48256824
/// @DnDArgument : "script" "set_face"
/// @DnDSaveInfo : "script" "scr_Facing"
script_execute(set_face);

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

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2B9FFE69
/// @DnDArgument : "code" "var layer_id = layer_tilemap_get_id("Collision"); // id for collision tileset layer$(13_10)$(13_10)// Check for falling$(13_10)if (tilemap_get_at_pixel(layer_id, x, bbox_bottom + vspeed) != 0)$(13_10){$(13_10)	y = y - (y mod 32) + 32 - (bbox_bottom - y); // prevents half clipping while jumping$(13_10)	vspeed = -1;								 // stops movement (grounded)$(13_10)	jumpCounter = 0;	$(13_10)}$(13_10)$(13_10)// Check ceiling collision$(13_10)if (tilemap_get_at_pixel(layer_id, x, bbox_top) != 0)$(13_10){$(13_10)	y = y - (y mod 32) + 31 - (y - bbox_top + vspeed);$(13_10)	vspeed = 0;$(13_10)}$(13_10)$(13_10)// Check left and right collision$(13_10)if (hspeed > 0) {$(13_10)	if (wall_collision_check() != 0) x = x - (x mod 32) + 31 - (bbox_right - x);$(13_10)} else {$(13_10)	if (facing == -1) {$(13_10)		if (wall_collision_check() != 0) x = x - (x mod 32) + (x - bbox_left);$(13_10)	} else {$(13_10)		if (wall_collision_check() != 0) x = x - (x mod 32) + 31 - (bbox_right -x);		$(13_10)	}$(13_10)}"
var layer_id = layer_tilemap_get_id("Collision"); // id for collision tileset layer

// Check for falling
if (tilemap_get_at_pixel(layer_id, x, bbox_bottom + vspeed) != 0)
{
	y = y - (y mod 32) + 32 - (bbox_bottom - y); // prevents half clipping while jumping
	vspeed = -1;								 // stops movement (grounded)
	jumpCounter = 0;	
}

// Check ceiling collision
if (tilemap_get_at_pixel(layer_id, x, bbox_top) != 0)
{
	y = y - (y mod 32) + 31 - (y - bbox_top + vspeed);
	vspeed = 0;
}

// Check left and right collision
if (hspeed > 0) {
	if (wall_collision_check() != 0) x = x - (x mod 32) + 31 - (bbox_right - x);
} else {
	if (facing == -1) {
		if (wall_collision_check() != 0) x = x - (x mod 32) + (x - bbox_left);
	} else {
		if (wall_collision_check() != 0) x = x - (x mod 32) + 31 - (bbox_right -x);		
	}
}