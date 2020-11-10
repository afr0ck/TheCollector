/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 5136228F
/// @DnDComment : Script assets have changed$(13_10)for v2.3.0 see $(13_10)https://help.yoyogames.com/hc/en-us/articles/360005277377 $(13_10)for more information
/// @DnDArgument : "funcName" "scr_WallCollisionCheck"
function scr_WallCollisionCheck() 
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 29DE66D3
	/// @DnDParent : 5136228F
	/// @DnDArgument : "code" "var layer_id = layer_tilemap_get_id("Collision"); // id for collision tileset layer$(13_10)$(13_10)// Check for falling$(13_10)if (tilemap_get_at_pixel(layer_id, x, bbox_bottom + vspeed) != 0)$(13_10){$(13_10)	y = y - (y mod 32) + 32 - (bbox_bottom - y); // prevents half clipping while jumping$(13_10)	vspeed = -1;								 // stops movement (grounded)$(13_10)	jumpCounter = 0;$(13_10)}$(13_10)$(13_10)$(13_10)// Check ceiling collision$(13_10)if (tilemap_get_at_pixel(layer_id, x, bbox_top) != 0)$(13_10){$(13_10)	y = y - (y mod 32) + 31 - (y - bbox_top);$(13_10)	vspeed = 0;$(13_10)}$(13_10)$(13_10)if (hspeed > 0) {$(13_10)	if (tilemap_get_at_pixel(layer_id, bbox_right, bbox_top) != 0 ||$(13_10)		tilemap_get_at_pixel(layer_id, bbox_right, y) != 0 ||$(13_10)		tilemap_get_at_pixel(layer_id, bbox_right, bbox_bottom + vspeed) != 0)$(13_10)	x = x - (x mod 32) + 31 - (bbox_right - x);		$(13_10)}$(13_10)$(13_10)if (hspeed < 0) {$(13_10)	if (tilemap_get_at_pixel(layer_id, bbox_left, bbox_top) != 0 ||$(13_10)		tilemap_get_at_pixel(layer_id, bbox_left, y) != 0 || $(13_10)		tilemap_get_at_pixel(layer_id, bbox_left, bbox_bottom + vspeed) != 0)$(13_10)			x = x - (x mod 32) + (x - bbox_left);$(13_10)}"
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
		y = y - (y mod 32) + 31 - (y - bbox_top);
		vspeed = 0;
	}
	
	if (hspeed > 0) {
		if (tilemap_get_at_pixel(layer_id, bbox_right, bbox_top) != 0 ||
			tilemap_get_at_pixel(layer_id, bbox_right, y) != 0 ||
			tilemap_get_at_pixel(layer_id, bbox_right, bbox_bottom + vspeed) != 0)
		x = x - (x mod 32) + 31 - (bbox_right - x);		
	}
	
	if (hspeed < 0) {
		if (tilemap_get_at_pixel(layer_id, bbox_left, bbox_top) != 0 ||
			tilemap_get_at_pixel(layer_id, bbox_left, y) != 0 || 
			tilemap_get_at_pixel(layer_id, bbox_left, bbox_bottom + vspeed) != 0)
				x = x - (x mod 32) + (x - bbox_left);
	}
}