/// @description Insert description here
// You can write your code in this editor
turn_direction = room_speed * random_range(2,6)

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
