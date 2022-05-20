/// @description Insert description here
// You can write your code in this editor

var _life = string(global.player_life)
var _enemy_count = string(instance_number(obj_big_enemy))
var _level = string(global.level)
draw_text(30, 60, "Vida: " + _life)
draw_text(30,90, "Inimigos Vivos: " + _enemy_count)
draw_text(30, 30, "Nivel: " + _level)


if (instance_exists(obj_player) & instance_exists(obj_big_enemy)){
	with(obj_player)
	{
	var _near	= instance_nearest(x,y, obj_big_enemy)
	var _dir	= point_direction(x, y, _near.x, _near.y)
	var _width	= camera_get_view_width(view_camera[0])
	
	draw_sprite_ext(spr_arrow, 0, _width / 2, 100, 1, 1, _dir, c_white, 1)
	}
}
