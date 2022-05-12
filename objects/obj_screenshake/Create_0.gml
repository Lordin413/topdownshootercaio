/// @description Insert description here
// You can write your code in this editor
global.shake = 0

screenshake = function(){
	view_xport[0] = irandom_range(-global.shake, global.shake)
	view_yport[0] = irandom_range(-global.shake, global.shake)
	global.shake *= 0.95
	if(global.shake <= 1) global.shake = 0
}


