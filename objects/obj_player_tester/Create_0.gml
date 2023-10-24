/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

max_vel = 4;
aceleracao = .2;

keyboard_set_map(ord("A"), vk_left);	// Mapeia a tecla A para esquerda
keyboard_set_map(ord("D"), vk_right);	// Mapeia a tecla D para direita
keyboard_set_map(ord("W"), vk_up);		// Mapeia a tecla W para cima
keyboard_set_map(ord("S"), vk_down);	// Mapeia a tecla S para baixo