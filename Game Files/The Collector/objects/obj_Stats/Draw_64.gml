/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 13618ABD
draw_set_colour($FFFFFFFF & $ffffff);
var l13618ABD_0=($FFFFFFFF >> 24);
draw_set_alpha(l13618ABD_0 / $ff);

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

/// @DnDAction : YoYo Games.Drawing.Draw_Sprites_Stacked
/// @DnDVersion : 1
/// @DnDHash : 2ED22E81
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

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 60FDCC1B
/// @DnDArgument : "x" "60"
/// @DnDArgument : "y" "60"
/// @DnDArgument : "var" "tmp"
draw_text(60, 60, string("Caption: ") + string(tmp));