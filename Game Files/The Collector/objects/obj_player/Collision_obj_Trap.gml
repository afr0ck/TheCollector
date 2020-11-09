/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 70C92C3D
/// @DnDApplyTo : {obj_Stats}
/// @DnDArgument : "health" "-1"
/// @DnDArgument : "health_relative" "1"
with(obj_Stats) {
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
__dnd_health += real(-1);
}

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 2FFE5568
/// @DnDArgument : "imageind" ""
/// @DnDArgument : "spriteind" "spr_PlayerHurt"
/// @DnDSaveInfo : "spriteind" "spr_PlayerHurt"
sprite_index = spr_PlayerHurt;

/// @DnDAction : YoYo Games.Instance Variables.If_Health
/// @DnDVersion : 1
/// @DnDHash : 1FFC6A16
/// @DnDApplyTo : {obj_Stats}
with(obj_Stats) {
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
var l1FFC6A16_0 = __dnd_health == 0;
}
if(l1FFC6A16_0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 52B5178F
	/// @DnDParent : 1FFC6A16
	instance_destroy();
}