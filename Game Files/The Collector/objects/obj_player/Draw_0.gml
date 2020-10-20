/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 09B2E3D5
/// @DnDArgument : "key" "vk_enter"
/// @DnDArgument : "not" "1"
var l09B2E3D5_0;
l09B2E3D5_0 = keyboard_check_pressed(vk_enter);
if (!l09B2E3D5_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6D3BF988
	/// @DnDParent : 09B2E3D5
	/// @DnDArgument : "var" "vspeed"
	if(vspeed == 0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6A3BEF34
		/// @DnDParent : 6D3BF988
		/// @DnDArgument : "var" "hspeed"
		if(hspeed == 0)
		{
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
			/// @DnDVersion : 1
			/// @DnDHash : 54775002
			/// @DnDParent : 6A3BEF34
			/// @DnDArgument : "key" "ord("S")"
			var l54775002_0;
			l54775002_0 = keyboard_check(ord("S"));
			if (l54775002_0)
			{
				/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
				/// @DnDVersion : 1
				/// @DnDHash : 28837C0D
				/// @DnDParent : 54775002
				/// @DnDArgument : "x" "x"
				/// @DnDArgument : "y" "y"
				/// @DnDArgument : "xscale" "facing"
				/// @DnDArgument : "sprite" "spr_Crouch"
				/// @DnDArgument : "frame" "image_index"
				/// @DnDSaveInfo : "sprite" "spr_Crouch"
				draw_sprite_ext(spr_Crouch, image_index, x, y, facing, 1, 0, $FFFFFF & $ffffff, 1);
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 5CAE42FD
			/// @DnDParent : 6A3BEF34
			else
			{
				/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
				/// @DnDVersion : 1
				/// @DnDHash : 5922548A
				/// @DnDParent : 5CAE42FD
				/// @DnDArgument : "x" "x"
				/// @DnDArgument : "y" "y"
				/// @DnDArgument : "xscale" "facing"
				/// @DnDArgument : "sprite" "spr_playerIdle"
				/// @DnDArgument : "frame" "image_index"
				/// @DnDSaveInfo : "sprite" "spr_playerIdle"
				draw_sprite_ext(spr_playerIdle, image_index, x, y, facing, 1, 0, $FFFFFF & $ffffff, 1);
			}
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2B6FD218
		/// @DnDParent : 6D3BF988
		/// @DnDArgument : "var" "hspeed"
		/// @DnDArgument : "not" "1"
		if(!(hspeed == 0))
		{
			/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
			/// @DnDVersion : 1
			/// @DnDHash : 6D92CC5A
			/// @DnDParent : 2B6FD218
			/// @DnDArgument : "x" "x"
			/// @DnDArgument : "y" "y"
			/// @DnDArgument : "xscale" "facing"
			/// @DnDArgument : "sprite" "spr_playerRun"
			/// @DnDArgument : "frame" "image_index"
			/// @DnDSaveInfo : "sprite" "spr_playerRun"
			draw_sprite_ext(spr_playerRun, image_index, x, y, facing, 1, 0, $FFFFFF & $ffffff, 1);
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3BD7DFF9
/// @DnDArgument : "var" "vspeed"
/// @DnDArgument : "op" "1"
if(vspeed < 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 33D69C4B
	/// @DnDParent : 3BD7DFF9
	/// @DnDArgument : "var" "jumpCounter"
	/// @DnDArgument : "value" "2"
	if(jumpCounter == 2)
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 59C2F418
		/// @DnDParent : 33D69C4B
		/// @DnDArgument : "x" "x"
		/// @DnDArgument : "y" "y"
		/// @DnDArgument : "xscale" "facing"
		/// @DnDArgument : "sprite" "spr_playerDoubleJump"
		/// @DnDArgument : "frame" "image_index"
		/// @DnDSaveInfo : "sprite" "spr_playerDoubleJump"
		draw_sprite_ext(spr_playerDoubleJump, image_index, x, y, facing, 1, 0, $FFFFFF & $ffffff, 1);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 6472EA80
	/// @DnDParent : 3BD7DFF9
	else
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 37B21DD8
		/// @DnDParent : 6472EA80
		/// @DnDArgument : "x" "x"
		/// @DnDArgument : "y" "y"
		/// @DnDArgument : "xscale" "facing"
		/// @DnDArgument : "sprite" "spr_playerJumpUp"
		/// @DnDArgument : "frame" "image_index"
		/// @DnDSaveInfo : "sprite" "spr_playerJumpUp"
		draw_sprite_ext(spr_playerJumpUp, image_index, x, y, facing, 1, 0, $FFFFFF & $ffffff, 1);
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2B877731
/// @DnDArgument : "var" "vspeed"
/// @DnDArgument : "op" "2"
if(vspeed > 0)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 4D216659
	/// @DnDParent : 2B877731
	/// @DnDArgument : "x" "x"
	/// @DnDArgument : "y" "y"
	/// @DnDArgument : "xscale" "facing"
	/// @DnDArgument : "sprite" "spr_playerJumpDown"
	/// @DnDArgument : "frame" "image_index"
	/// @DnDSaveInfo : "sprite" "spr_playerJumpDown"
	draw_sprite_ext(spr_playerJumpDown, image_index, x, y, facing, 1, 0, $FFFFFF & $ffffff, 1);
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 0E0562BB
/// @DnDArgument : "key" "vk_enter"
var l0E0562BB_0;
l0E0562BB_0 = keyboard_check_pressed(vk_enter);
if (l0E0562BB_0)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 73517AED
	/// @DnDParent : 0E0562BB
	/// @DnDArgument : "expr" "canAttack"
	if(canAttack)
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 147BE49E
		/// @DnDParent : 73517AED
		/// @DnDArgument : "x" "x"
		/// @DnDArgument : "y" "y"
		/// @DnDArgument : "xscale" "facing"
		/// @DnDArgument : "sprite" "spr_playerAttack"
		/// @DnDSaveInfo : "sprite" "spr_playerAttack"
		draw_sprite_ext(spr_playerAttack, 0, x, y, facing, 1, 0, $FFFFFF & $ffffff, 1);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 05AA9D3E
		/// @DnDParent : 73517AED
		/// @DnDArgument : "var" "canAttack"
		canAttack = 0;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 554D3933
	/// @DnDParent : 0E0562BB
	else
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 276BC0D3
		/// @DnDParent : 554D3933
		/// @DnDArgument : "x" "x"
		/// @DnDArgument : "y" "y"
		/// @DnDArgument : "xscale" "facing"
		/// @DnDArgument : "sprite" "spr_playerIdle"
		/// @DnDArgument : "frame" "image_index"
		/// @DnDSaveInfo : "sprite" "spr_playerIdle"
		draw_sprite_ext(spr_playerIdle, image_index, x, y, facing, 1, 0, $FFFFFF & $ffffff, 1);
	}
}

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 0E67E73F
/// @DnDArgument : "caption" ""Testing Grounds: ""
/// @DnDArgument : "var" "hspeed"
draw_text(0, 0, string("Testing Grounds: ") + string(hspeed));