/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7BCDA24D
/// @DnDApplyTo : other
/// @DnDArgument : "expr" "-20"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "monster_health"
with(other) {
monster_health += -20;

}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 638B01CF
/// @DnDApplyTo : other
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "var" "hit"
with(other) {
hit = true;

}

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 5751014D
/// @DnDArgument : "speed" "-10"
/// @DnDArgument : "type" "2"
vspeed = -10;