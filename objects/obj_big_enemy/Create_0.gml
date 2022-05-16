/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

life				= 5
turn_direction		= room_speed * irandom_range(4,8)
speed				= irandom(2)
explosion_repeat	= 8
shake				= 12
distance_player		= 0
lay_time			= room_speed * 3
enemy_damage		= 2



lay_an_egg = function(){
	lay_time--
	if (lay_time <= 0){
		instance_create_layer(x, y, "Instances", obj_egg)	
		lay_time = room_speed * 3
	}
	
}
