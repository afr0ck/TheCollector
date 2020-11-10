/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3F59FD82
/// @DnDArgument : "expr" "other.damage"
/// @DnDArgument : "var" "dmg"
dmg = other.damage;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 5AACB887
/// @DnDComment : Check if player is falling on top of monster$(13_10)for specific boop damage
/// @DnDArgument : "expr" "vspeed > 0 and y < other.y"
if(vspeed > 0 and y < other.y)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 4DBFE558
	/// @DnDParent : 5AACB887
	/// @DnDArgument : "soundid" "snd_Blip"
	/// @DnDSaveInfo : "soundid" "snd_Blip"
	audio_play_sound(snd_Blip, 0, 0);

	/// @DnDAction : YoYo Games.Instance Variables.Set_Health
	/// @DnDVersion : 1
	/// @DnDHash : 48DAA739
	/// @DnDApplyTo : other
	/// @DnDParent : 5AACB887
	/// @DnDArgument : "health" "(100/monster_health) * -10"
	/// @DnDArgument : "health_relative" "1"
	with(other) {
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	__dnd_health += real((100/monster_health) * -10);
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 25BDF45A
	/// @DnDApplyTo : other
	/// @DnDParent : 5AACB887
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "hit"
	with(other) {
	hit = true;
	
	}

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 397DA5F7
	/// @DnDParent : 5AACB887
	/// @DnDArgument : "speed" "-10"
	/// @DnDArgument : "type" "2"
	vspeed = -10;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 5658C2E3
	/// @DnDComment : Check if monster is mushroom for special animation
	/// @DnDParent : 5AACB887
	/// @DnDArgument : "expr" "other.object_index == obj_Mushroom"
	if(other.object_index == obj_Mushroom)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6F74C263
		/// @DnDApplyTo : other
		/// @DnDParent : 5658C2E3
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "crushed"
		with(other) {
		crushed = true;
		
		}
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 6152B77A
		/// @DnDApplyTo : other
		/// @DnDParent : 5658C2E3
		/// @DnDArgument : "alarm" "1"
		with(other) {
		alarm_set(1, 30);
		
		}
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3C46234D
else
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 736B901A
	/// @DnDParent : 3C46234D
	/// @DnDArgument : "soundid" "snd_Hit"
	/// @DnDSaveInfo : "soundid" "snd_Hit"
	audio_play_sound(snd_Hit, 0, 0);

	/// @DnDAction : YoYo Games.Instance Variables.Set_Health
	/// @DnDVersion : 1
	/// @DnDHash : 58036DA0
	/// @DnDApplyTo : {obj_Stats}
	/// @DnDParent : 3C46234D
	/// @DnDArgument : "health" "obj_player.dmg"
	/// @DnDArgument : "health_relative" "1"
	with(obj_Stats) {
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	__dnd_health += real(obj_player.dmg);
	}

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 4A1A879A
	/// @DnDParent : 3C46234D
	/// @DnDArgument : "imageind" ""
	/// @DnDArgument : "spriteind" "spr_PlayerHurt"
	/// @DnDSaveInfo : "spriteind" "spr_PlayerHurt"
	sprite_index = spr_PlayerHurt;

	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 3AD8B202
	/// @DnDParent : 3C46234D
	/// @DnDArgument : "x" "-40 * other.image_xscale"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-20"
	/// @DnDArgument : "y_relative" "1"
	x += -40 * other.image_xscale;
	y += -20;

	/// @DnDAction : YoYo Games.Instance Variables.If_Health
	/// @DnDVersion : 1
	/// @DnDHash : 06FDE5F2
	/// @DnDApplyTo : {obj_Stats}
	/// @DnDParent : 3C46234D
	/// @DnDArgument : "op" "3"
	with(obj_Stats) {
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	var l06FDE5F2_0 = __dnd_health <= 0;
	}
	if(l06FDE5F2_0)
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 5BF56CA8
		/// @DnDParent : 06FDE5F2
		instance_destroy();
	}
}