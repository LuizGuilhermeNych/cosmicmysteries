/// @description Insert description here
// You can write your code in this editor

var _up		= keyboard_check(vk_up);
var _down	= keyboard_check(vk_down);
var _left	= keyboard_check(vk_left);
var _right	= keyboard_check(vk_right);

// Motor de movimentação do personagem
if ((_up xor _down) or (_left xor _right)) {								// Só move se estiver apertando alguma tecla, separadamente
	var _dir = point_direction(0, 0, (_right - _left), (_down - _up));		// Identifica qual direção o jogador se move
	
	var _max_velh = lengthdir_x(max_vel, _dir);
	vel_h = lerp(vel_h, _max_velh, aceleracao);		// Atribuindo o valor para a velocidade horizontal
	
	var _max_velv = lengthdir_y(max_vel, _dir);
	vel_v = lerp(vel_v, _max_velv, aceleracao);		// Atribuindo o valor para a velocidade vertical
} else {	// Não está apertando nenhuma tecla de movimento
	// Perdendo velocidade exponencialmente quando solta as teclas de direção
	vel_h = lerp(vel_h, 0, aceleracao);
	vel_v = lerp(vel_v, 0, aceleracao);
}




