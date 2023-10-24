/// @description Insert description here
// You can write your code in this editor

/*
	Motor de colisão horizontal e vertical. Todos os objetos que herdam
	de "obj_entidade" irão possuir este motor. Assim que eles entrarem
	em colisão com qualquer box do tipo "obj_colisor" irão parar.
	
	Observação: Para que o motor de colisão funcione adequadamente, a
	máscara de colisão deve ser configurada como "Middle Center" para
	todos os herdeiros de "obj_entidade".
*/

// Colisão horizontal
var _chao_x = instance_place(x + vel_h, y, obj_colisor);	// Indicador de colisão horizontal com o objeto indicado

if(_chao_x) {		// Verificando se a instância Player está em colisão com a instância do objeto
	if(vel_h > 0) {			// Indo para a direita
		x = _chao_x.bbox_left - sprite_xoffset;		// Colide com a esquerda do objeto
	}
	if(vel_h < 0) {			// Indo para a esquerda
		x = _chao_x.bbox_right + (sprite_xoffset);	// Colide com a direita do objeto
	}
	vel_h = 0;				// Zera a velocidade quando colide
}

x += vel_h;

//Colisão vertical
var _chao_y = instance_place(x, y + vel_v, obj_colisor);	// Indicador de colisão vertical com o objeto indicado

if(_chao_y) {		// Verificando se a instância Player está em colisão com a instância do objeto
	if(vel_v > 0) {			// Indo para baixo
		y = _chao_y.bbox_top - sprite_yoffset;		// Colide com o topo do objeto
	}
	if(vel_v < 0){	// Indo para cima
		y = _chao_y.bbox_bottom + (sprite_yoffset);	// Colide com o fundo do objeto
	}
	vel_v = 0;				// Zera a velocidade vertical quando colide
}

y += vel_v;