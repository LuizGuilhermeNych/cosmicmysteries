/// @description Insert description here
// You can write your code in this editor

var _up		= keyboard_check(vk_up);
var _down	= keyboard_check(vk_down);
var _left	= keyboard_check(vk_left);
var _right	= keyboard_check(vk_right);

vel_h = (_right - _left) * max_vel; // Movimentação horizontal do personagem
vel_v = (_down - _up) * max_vel;	// Movimentação vertical do personagem

if(_up){
	estado = "cima";
} else if(_down){
	estado = "baixo";
} else if(_left){
	estado = "esquerda";
} else if(_right){
	estado = "direita";
}

switch(estado) {
	case "cima":
		sprite_index = spr_blue_walk_up;
		break;
	case "baixo":
		sprite_index = spr_blue_walk_down;
		break;
	case "direita":
		sprite_index = spr_blue_walk_right;
		break;
	case "esquerda":
		sprite_index = spr_blue_walk_left;
		break;
}