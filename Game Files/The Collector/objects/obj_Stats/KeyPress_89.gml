/// @DnDAction : YoYo Games.Common.Get_Global
/// @DnDVersion : 1
/// @DnDHash : 71669C55
/// @DnDArgument : "output" "go"
/// @DnDArgument : "output_temp" "1"
/// @DnDArgument : "var" "game_over"
var go = global.game_over;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 7A3EC7A8
/// @DnDArgument : "expr" "go"
if(go)
{
	/// @DnDAction : YoYo Games.Game.Restart_Game
	/// @DnDVersion : 1
	/// @DnDHash : 452CA73A
	/// @DnDParent : 7A3EC7A8
	game_restart();
}

/// @DnDAction : YoYo Games.Common.Get_Global
/// @DnDVersion : 1
/// @DnDHash : 05BDE196
/// @DnDArgument : "output" "winner"
/// @DnDArgument : "output_temp" "1"
/// @DnDArgument : "var" "game_win"
var winner = global.game_win;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 76B5FDB9
/// @DnDArgument : "expr" "winner"
if(winner)
{
	/// @DnDAction : YoYo Games.Game.Restart_Game
	/// @DnDVersion : 1
	/// @DnDHash : 344E1F53
	/// @DnDParent : 76B5FDB9
	game_restart();
}