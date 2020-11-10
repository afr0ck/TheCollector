/// @DnDAction : YoYo Games.Common.Get_Global
/// @DnDVersion : 1
/// @DnDHash : 4A18D450
/// @DnDArgument : "output" "go"
/// @DnDArgument : "output_temp" "1"
/// @DnDArgument : "var" "game_over"
var go = global.game_over;

/// @DnDAction : YoYo Games.Common.Get_Global
/// @DnDVersion : 1
/// @DnDHash : 515300B1
/// @DnDArgument : "output" "winner"
/// @DnDArgument : "output_temp" "1"
/// @DnDArgument : "var" "game_win"
var winner = global.game_win;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 47C25B5F
/// @DnDArgument : "expr" "go or winner"
if(go or winner)
{
	/// @DnDAction : YoYo Games.Game.End_Game
	/// @DnDVersion : 1
	/// @DnDHash : 1EDA0926
	/// @DnDParent : 47C25B5F
	game_end();
}