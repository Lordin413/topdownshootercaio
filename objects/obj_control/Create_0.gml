/// @description Insert description here
// You can write your code in this editor
randomize()

_x = irandom_range(100, room_width - 100)
_y = irandom_range(100, room_height - 100)

start_room = function(){
	instance_create_layer(x, y, "Instances", obj_screenshake)

	if(!instance_exists(obj_player)) {
		instance_create_layer(_x, _y, "Instances", obj_player)
	}
	create_enemies()
}


create_enemies = function(){
	var _qtd = irandom_range(3,7)
	
	repeat(_qtd){
		_x = irandom_range(100, room_width - 100)
		_y = irandom_range(100, room_height - 100)
		instance_create_layer(_x, _y, layer, obj_big_enemy)	
	}
}
