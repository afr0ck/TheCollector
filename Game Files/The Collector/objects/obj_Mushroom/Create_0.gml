/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 167F1EAA
/// @DnDArgument : "health" "100"

__dnd_health = real(100);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1B4C76AB
/// @DnDInput : 3
/// @DnDArgument : "expr" "sprite_index"
/// @DnDArgument : "expr_1" "hsp"
/// @DnDArgument : "expr_2" "hsp * image_xscale"
/// @DnDArgument : "var" "original_sprite"
/// @DnDArgument : "var_1" "original_hsp"
/// @DnDArgument : "var_2" "hsp"
original_sprite = sprite_index;
original_hsp = hsp;
hsp = hsp * image_xscale;