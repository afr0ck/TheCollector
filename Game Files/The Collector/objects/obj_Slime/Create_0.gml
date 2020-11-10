/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 3466E034
/// @DnDArgument : "health" "100"

__dnd_health = real(100);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 25F98031
/// @DnDInput : 2
/// @DnDArgument : "expr" "sprite_index"
/// @DnDArgument : "expr_1" "hsp * image_xscale"
/// @DnDArgument : "var" "original_sprite"
/// @DnDArgument : "var_1" "hsp"
original_sprite = sprite_index;
hsp = hsp * image_xscale;