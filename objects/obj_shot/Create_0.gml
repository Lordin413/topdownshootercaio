/// @description Insert description here
// You can write your code in this editor

brilho = spr_shot_effect
timer = room_speed * 0.8

image_xscale = 2
image_yscale = image_xscale


shot_effect = function(){
	var x_effect = image_xscale * 1.1
	var y_effect = image_yscale * 1.1
	draw_self()
	gpu_set_blendmode(bm_normal)
	draw_sprite_ext(brilho,0,x,y,x_effect, y_effect,image_angle,c_red,0.7)
	gpu_set_blendmode(bm_normal)

}
	
lerp_effect = function(){
	image_xscale = lerp(image_xscale, 1, 0.8)
	image_yscale = image_xscale
}


shot_destruction = function(){
	
	if (timer <= 0){
		instance_destroy()
	}else{
		timer--
	}
}
