/// @description Insert description here
// You can write your code in this editor
slow = room_speed
speed = irandom_range(3, 10)
direction = irandom(359)
image_angle = direction

slow_down = function(){
	slow --
	if (slow <= 0){
		image_alpha -= .01
		speed *= 0.9
	}
	if (image_alpha <= 0) instance_destroy()
}
