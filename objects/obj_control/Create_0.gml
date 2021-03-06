/// @description Insert description here
// You can write your code in this editor
randomize()

global.level = 1
global.player_life			= 3
restart_timer = room_speed * 2



start_room = function(){
	var _width = irandom_range(2500, 5000);
	var _height = irandom_range(2500, 5000);
	room_width = _width
	room_height = _height
			
	_x = irandom_range(100, room_width - 100)
	_y = irandom_range(100, room_height - 100)
	
	instance_create_layer(x, y, "Instances", obj_screenshake)
	if(!instance_exists(obj_player)) {
		instance_create_layer(_x, _y, "Instances", obj_player)
	}
	create_enemies()
	change_background()
}

create_enemies = function(){
	var _qtd = irandom_range(2, 4) * global.level
	
	repeat(_qtd){
		enemy_x = irandom_range(100, room_width - 100)
		enemy_y = irandom_range(100, room_height - 100)
		var _enemy = instance_create_layer(enemy_x, enemy_y, layer, obj_big_enemy)	
		
		if (instance_exists(obj_player)){
			var _dist = point_distance(_enemy.x, _enemy.y, obj_player.x, obj_player.y)
			if (_dist < 300){
				instance_destroy(_enemy,false)
			}
		
		}
	}
}
	
level_up = function(){
	var _quantity = instance_number(obj_big_enemy)
	if (_quantity <= 0){
		restart_timer--
		if (restart_timer <= 0) {
			global.level++
			room_restart();
			restart_timer = room_speed * 2
		}
	}
	
}

change_background = function(){

	var _layer_id = layer_get_id("Background"); 
	var _background_id = layer_background_get_id(_layer_id);
	var _choose_sprite = choose(spr_background,spr_background_2,spr_background_3);
	layer_background_sprite(_background_id,_choose_sprite);
}
