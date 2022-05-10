/// @description Insert description here
// You can write your code in this editor
turn_direction = room_speed * random_range(2,6)

distance_player = 200

life = 2

enemy_moviment = function()
{
direction = irandom(359)
speed = irandom(3)
image_angle = direction
}

enemy_moviment()

stay_in_room = function(){
	image_angle = direction
	if(x + sprite_width/2 > room_width || x - sprite_width/2 < 0){
	hspeed *= -1;
}
	if(y + sprite_height/2 > room_height || y - sprite_height/2 < 0){
	vspeed *= -1;
}
}

change_direction = function(){
	turn_direction--
	if (turn_direction <= 0){
	 enemy_moviment()
	 turn_direction = room_speed * random_range(2,6)
	}
}

follow_player = function(){
	if (instance_exists(obj_player)){
		var _distance = point_distance(x, y, obj_player.x, obj_player.y)
		
			if (_distance <= distance_player){
				var _distance_player = point_direction(x, y, obj_player.x, obj_player.y)
				direction = _distance_player
		}
	}
}

///@method lost_life(valor_damage);
lost_life = function(_damage){
	if (_damage == undefined){
		_damage = 1
	}
	life -= _damage
	if (life <= 0){
		instance_destroy()
		enemy_explosion()
		instance_create_layer(x, y, "Shots", obj_remains)
	}
}

enemy_explosion = function(){
	repeat(7){
		instance_create_layer(x, y, "Shots", obj_enemy_piece)
}
}
