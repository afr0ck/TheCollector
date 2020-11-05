/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 13618ABD
draw_set_colour($FFFFFFFF & $ffffff);
var l13618ABD_0=($FFFFFFFF >> 24);
draw_set_alpha(l13618ABD_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 595616B1
/// @DnDArgument : "sprite" "spr_Hud"
/// @DnDSaveInfo : "sprite" "spr_Hud"
draw_sprite(spr_Hud, 0, 0, 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
/// @DnDVersion : 1
/// @DnDHash : 5DF7C6F1
/// @DnDArgument : "x" "20"
/// @DnDArgument : "y" "30"
/// @DnDArgument : "caption" ""
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
draw_text(20, 30, string(__dnd_score));

/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Lives
/// @DnDVersion : 1
/// @DnDHash : 355ECA68
/// @DnDArgument : "x" "60"
/// @DnDArgument : "y" "45"
/// @DnDArgument : "sprite" "spr_lives"
/// @DnDSaveInfo : "sprite" "spr_lives"
var l355ECA68_0 = sprite_get_width(spr_lives);
var l355ECA68_1 = 0;
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
for(var l355ECA68_2 = __dnd_lives; l355ECA68_2 > 0; --l355ECA68_2) {
	draw_sprite(spr_lives, 0, 60 + l355ECA68_1, 45);
	l355ECA68_1 += l355ECA68_0;
}

/// @DnDAction : YoYo Games.Instance Variables.Get_Health
/// @DnDVersion : 1
/// @DnDHash : 61CF77B3
/// @DnDArgument : "var" "tmp"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
tmp = __dnd_health;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7393E69D
/// @DnDArgument : "var" "tmp"
/// @DnDArgument : "not" "1"
if(!(tmp == 0))
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprites_Stacked
	/// @DnDVersion : 1
	/// @DnDHash : 2ED22E81
	/// @DnDParent : 7393E69D
	/// @DnDArgument : "x" "62"
	/// @DnDArgument : "y" "20"
	/// @DnDArgument : "sprite" "spr_heart"
	/// @DnDArgument : "number" "tmp"
	/// @DnDSaveInfo : "sprite" "spr_heart"
	var l2ED22E81_0 = sprite_get_width(spr_heart);
	var l2ED22E81_1 = 0;
	for(var l2ED22E81_2 = tmp; l2ED22E81_2 > 0; --l2ED22E81_2) {
		draw_sprite(spr_heart, 0, 62 + l2ED22E81_1, 20);
		l2ED22E81_1 += l2ED22E81_0;
	}
}

/// @DnDAction : YoYo Games.Common.Get_Global
/// @DnDVersion : 1
/// @DnDHash : 46102B45
/// @DnDArgument : "output" "go"
/// @DnDArgument : "output_temp" "1"
/// @DnDArgument : "var" "game_over"
var go = global.game_over;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 5CED80C2
/// @DnDArgument : "expr" "go"
if(go)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 0FA05832
	/// @DnDParent : 5CED80C2
	/// @DnDArgument : "x" "camera_get_view_width(view_camera[0])  / 2"
	/// @DnDArgument : "y" "camera_get_view_height(view_camera[0])  / 2"
	/// @DnDArgument : "sprite" "spr_GameOver"
	/// @DnDSaveInfo : "sprite" "spr_GameOver"
	draw_sprite(spr_GameOver, 0, camera_get_view_width(view_camera[0])  / 2, camera_get_view_height(view_camera[0])  / 2);
}