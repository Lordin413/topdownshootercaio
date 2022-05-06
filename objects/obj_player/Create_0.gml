/// @description Insert description here
// You can write your code in this editor


player_speed = 5
horizontal_speed = 0
vertical_speed = 0
delay_shot = 0
speed_shot = 15
wait_shot = room_speed * 0.2
sprite_time = 0


player_move = function(){
	
var right,left,up,down;

	var right=keyboard_check(ord("D"));
	var left=keyboard_check(ord("A"));
	var up=keyboard_check(ord("W"));
	var down=keyboard_check(ord("S"));

horizontal_speed=(right-left)*player_speed;
vertical_speed=(down-up)*player_speed;

y+= vertical_speed;
x+= horizontal_speed;

if ( right || left || up || down){
	image_speed=1;
}else
{
	image_index=6;
	image_speed=0;
}

}
	
	
shooting = function (){
	var _mouse = point_direction(x, y, mouse_x, mouse_y)
	image_angle = _mouse
	
	
	var _fire = mouse_check_button(mb_left)
	
	if (_fire){
		if (delay_shot <= 0){
			var _shot = instance_create_layer(x, y, "Shots", obj_shot)
			_shot.speed = speed_shot
			_shot.direction = _mouse
			delay_shot = wait_shot
			sprite_index = spr_player_shooting
		}else{
			delay_shot--
		}
	}
}

shooting_effect = function(){
	if(sprite_index = spr_player_shooting){
		sprite_time--
	}
	if (sprite_time <= 0){
		sprite_index = spr_player
		sprite_time = room_speed * 0.3
	}
}
