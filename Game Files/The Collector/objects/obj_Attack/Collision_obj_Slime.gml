/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 22BFB4F1
/// @DnDApplyTo : other
/// @DnDArgument : "health" "(100/monster_health) * -20"
/// @DnDArgument : "health_relative" "1"
with(other) {
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
__dnd_health += real((100/monster_health) * -20);
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

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 605280C3
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "obj_player"
var l605280C3_0 = false;
l605280C3_0 = instance_exists(obj_player);
if(l605280C3_0)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 3F7DED70
	/// @DnDApplyTo : other
	/// @DnDParent : 605280C3
	/// @DnDArgument : "x" "20 * obj_player.image_xscale"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	with(other) {
	x += 20 * obj_player.image_xscale;
	
	}
}