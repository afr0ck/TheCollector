/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 48256824
/// @DnDArgument : "script" "scr_Facing"
/// @DnDSaveInfo : "script" "scr_Facing"
script_execute(scr_Facing);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 669E2AAC
/// @DnDArgument : "expr" "facing"
/// @DnDArgument : "var" "image_xscale"
image_xscale = facing;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 0DB87F8F
/// @DnDArgument : "key" "ord("D")"
/// @DnDArgument : "not" "1"
var l0DB87F8F_0;
l0DB87F8F_0 = keyboard_check(ord("D"));
if (!l0DB87F8F_0)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 0EFB6DB8
	/// @DnDParent : 0DB87F8F
	/// @DnDArgument : "key" "ord("A")"
	/// @DnDArgument : "not" "1"
	var l0EFB6DB8_0;
	l0EFB6DB8_0 = keyboard_check(ord("A"));
	if (!l0EFB6DB8_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7D2E15CE
		/// @DnDParent : 0EFB6DB8
		/// @DnDArgument : "var" "hspeed"
		hspeed = 0;
	}
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 76F0B3AE
/// @DnDArgument : "key" "vk_enter"
/// @DnDArgument : "not" "1"
var l76F0B3AE_0;
l76F0B3AE_0 = keyboard_check_pressed(vk_enter);
if (!l76F0B3AE_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5100F948
	/// @DnDParent : 76F0B3AE
	/// @DnDArgument : "var" "vspeed"
	if(vspeed == 0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 34BD0F71
		/// @DnDParent : 5100F948
		/// @DnDArgument : "var" "hspeed"
		if(hspeed == 0)
		{
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
			/// @DnDVersion : 1
			/// @DnDHash : 7DC5772E
			/// @DnDParent : 34BD0F71
			/// @DnDArgument : "key" "ord("S")"
			var l7DC5772E_0;
			l7DC5772E_0 = keyboard_check(ord("S"));
			if (l7DC5772E_0)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 3C9BA009
				/// @DnDParent : 7DC5772E
				/// @DnDArgument : "imageind" ""
				/// @DnDArgument : "spriteind" "spr_Crouch"
				/// @DnDSaveInfo : "spriteind" "spr_Crouch"
				sprite_index = spr_Crouch;
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 781AF13E
			/// @DnDParent : 34BD0F71
			else
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 04B52C57
				/// @DnDParent : 781AF13E
				/// @DnDArgument : "imageind" ""
				/// @DnDArgument : "spriteind" "spr_playerIdle"
				/// @DnDSaveInfo : "spriteind" "spr_playerIdle"
				sprite_index = spr_playerIdle;
			}
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3EB31D8A
		/// @DnDParent : 5100F948
		/// @DnDArgument : "var" "hspeed"
		/// @DnDArgument : "not" "1"
		if(!(hspeed == 0))
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 6D32A443
			/// @DnDParent : 3EB31D8A
			/// @DnDArgument : "imageind" ""
			/// @DnDArgument : "spriteind" "spr_playerRun"
			/// @DnDSaveInfo : "spriteind" "spr_playerRun"
			sprite_index = spr_playerRun;
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6478E202
/// @DnDArgument : "var" "vspeed"
/// @DnDArgument : "op" "1"
if(vspeed < 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 12FD9567
	/// @DnDParent : 6478E202
	/// @DnDArgument : "var" "jumpCounter"
	/// @DnDArgument : "value" "2"
	if(jumpCounter == 2)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 5EA8A97F
		/// @DnDParent : 12FD9567
		/// @DnDArgument : "imageind" ""
		/// @DnDArgument : "spriteind" "spr_playerDoubleJump"
		/// @DnDSaveInfo : "spriteind" "spr_playerDoubleJump"
		sprite_index = spr_playerDoubleJump;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 269815B1
	/// @DnDParent : 6478E202
	else
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 3E4DAC8D
		/// @DnDParent : 269815B1
		/// @DnDArgument : "imageind" ""
		/// @DnDArgument : "spriteind" "spr_playerJumpUp"
		/// @DnDSaveInfo : "spriteind" "spr_playerJumpUp"
		sprite_index = spr_playerJumpUp;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 022E4946
/// @DnDArgument : "var" "vspeed"
/// @DnDArgument : "op" "2"
if(vspeed > 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 61A2D3E1
	/// @DnDParent : 022E4946
	/// @DnDArgument : "imageind" ""
	/// @DnDArgument : "spriteind" "spr_playerJumpDown"
	/// @DnDSaveInfo : "spriteind" "spr_playerJumpDown"
	sprite_index = spr_playerJumpDown;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 0125E798
/// @DnDArgument : "key" "vk_enter"
var l0125E798_0;
l0125E798_0 = keyboard_check_pressed(vk_enter);
if (l0125E798_0)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 6A41AE49
	/// @DnDParent : 0125E798
	/// @DnDArgument : "expr" "canAttack"
	if(canAttack)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 65E5DE5B
		/// @DnDParent : 6A41AE49
		/// @DnDArgument : "spriteind" "spr_playerAttack"
		/// @DnDSaveInfo : "spriteind" "spr_playerAttack"
		sprite_index = spr_playerAttack;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 00F8141A
		/// @DnDParent : 6A41AE49
		/// @DnDArgument : "xpos" "x"
		/// @DnDArgument : "ypos" "y"
		/// @DnDArgument : "objectid" "obj_Attack"
		/// @DnDSaveInfo : "objectid" "obj_Attack"
		instance_create_layer(x, y, "Instances", obj_Attack);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 78A5A2AC
		/// @DnDParent : 6A41AE49
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "canAttack"
		canAttack = false;
	}
}

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 5C589785
/// @DnDArgument : "script" "scr_WallCollisionCheck"
/// @DnDSaveInfo : "script" "scr_WallCollisionCheck"
script_execute(scr_WallCollisionCheck);