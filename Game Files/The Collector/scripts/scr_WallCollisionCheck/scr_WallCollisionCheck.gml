/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 5136228F
/// @DnDComment : Script assets have changed$(13_10)for v2.3.0 see $(13_10)https://help.yoyogames.com/hc/en-us/articles/360005277377 $(13_10)for more information
/// @DnDArgument : "funcName" "wall_collision_check"
function wall_collision_check() 
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 29DE66D3
	/// @DnDParent : 5136228F
	/// @DnDArgument : "code" "var layer_id = layer_tilemap_get_id("Collision");$(13_10)$(13_10)var meeting = $(13_10)	tilemap_get_at_pixel(layer_id, bbox_left, bbox_top) ||$(13_10)	tilemap_get_at_pixel(layer_id, bbox_right, bbox_top) ||$(13_10)	tilemap_get_at_pixel(layer_id, bbox_left, y) ||$(13_10)	tilemap_get_at_pixel(layer_id, bbox_right, y);$(13_10)$(13_10)return meeting;"
	var layer_id = layer_tilemap_get_id("Collision");
	
	var meeting = 
		tilemap_get_at_pixel(layer_id, bbox_left, bbox_top) ||
		tilemap_get_at_pixel(layer_id, bbox_right, bbox_top) ||
		tilemap_get_at_pixel(layer_id, bbox_left, y) ||
		tilemap_get_at_pixel(layer_id, bbox_right, y);
	
	return meeting;
}