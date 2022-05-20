/// @description Insert description here
// You can write your code in this editor
slow = room_speed
speed = irandom_range(6, 12)
direction = irandom(359)
image_angle = direction
cause_damage = false

slow_down = function(){
	slow --
	if (slow <= 0){
		image_alpha -= .01
		speed *= 0.5
	}
	if (image_alpha <= 0) instance_destroy()
}
	
	
friendly_fire = function(){
	var _colide = instance_place(x, y, obj_enemy_functions)
	
	if (cause_damage){
		if (_colide){
		_colide.lost_life(1)
		instance_destroy()
		}
	}
}
