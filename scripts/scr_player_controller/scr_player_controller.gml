function scr_personagem_colisao(){
	
	
	if place_meeting(x + self.hveloc * self.veloc, y ,obj_parede ) //codigo de colisão
	{
		while !place_meeting(x + sign(self.hveloc * self.veloc), y, obj_parede ){
			x += sign(self.hveloc * self.veloc);
	}	
	
	self.hveloc = 0;
}

if place_meeting(x + self.hveloc * self.veloc, y ,obj_parede_player ) //codigo de colisão
	{
		while !place_meeting(x + sign(hveloc * veloc), y, obj_parede_player ){
			x += sign(hveloc * veloc);
	}	
	
	self.hveloc = 0;
}

self.x += self.hveloc * self.veloc 

if place_meeting(x,y + vveloc ,obj_parede )
	{
		while !place_meeting(x, y + sign(vveloc), obj_parede ){
			y += sign(vveloc);
	}	
	self.vveloc = 0;
}
self.y += vveloc }


function scr_player_andando(){
	var _input = rollback_get_input();
 //váriaveis de movimento
//movimentação






self.hveloc = (_input.direita - _input.esquerda)  ;

if !place_meeting(x,y + 1,obj_parede){
self.vveloc += gravidade;
}else{

	if _input.space_pressed{
	
	vveloc = -12.8;

	}
}


if hveloc != 0 or vveloc != 0
{
self.veloc = 5.5;
}

else {
	self.veloc = 0;
	
	}
	
	if _input.shift{
	if controle == false{
 self.veloc = 9;
 self.image_speed = 2;
	}
 }else {
 
 self.image_speed = 1;
 
 }
	




scr_personagem_colisao()

if block == false and _input.fire_pressed and !place_meeting(x,y + 1,obj_parede){
	if self.dir == "Direita"{
if self.controle == false{
self.animacao = 3;
instance_create_layer(x-20,y-120,"player",obj_hitbox_spike)
obj_hitbox_spike.forca = self.forca;
}
	}else if self.dir == "Esquerda"{
	if self.controle == false{
animacao = 3;
instance_create_layer(x-20,y-120,"player",obj_hitbox_spike_left)
obj_hitbox_spike_left.forca = self.forca;
}
	
	}
self.controle = true;
}


if _input.mbright_pressed and block == false and !place_meeting(x,y + 1,obj_parede){
	if self.dir == "Esquerda"{
if self.controle == false{
self.animacao = 3;
instance_create_layer(x-20,y-120,"player",obj_hitbox_saque_left)
obj_hitbox_saque_left.forca = self.forca;
}
	}if self.dir == "Direita"{if controle == false{
self.animacao = 3;
instance_create_layer(x-20,y-110,"player",obj_hitbox_saque)
obj_hitbox_saque.forca = self.forca;
}}
self.controle = true;
}


if _input.fire_pressed and place_meeting(x,y + 1,obj_parede){
	
	if self.dir == "Direita"{
if self.controle == false{
self.animacao = 4;
instance_create_layer(x,y,"player",obj_hitbox_bump)
obj_hitbox_bump.velocidade = self.forca;
}
	}else if self.dir == "Esquerda"{
	if self.controle == false{
animacao = 4;
instance_create_layer(x,y,"player",obj_hitbox_bump_left)
obj_hitbox_bump_left.velocidade = self.forca;
}
}
 

}



if _input.F_pressed and !_input.fire_pressed  {
	
	if self.dir == "Direita"{
if self.controle == false{
self.animacao = 5;
instance_create_layer(x,y - 65,"player",obj_hitbox_bump)
obj_hitbox_bump.velocidade = self.forca;
}
	}else if self.dir == "Esquerda"{
	if self.controle == false{
animacao = 5;
instance_create_layer(x,y-65,"player",obj_hitbox_bump_left)
obj_hitbox_bump_left.velocidade = self.forca;
}
}
 

}



if _input.B_pressed {
if block == false{block = true;}else{ block = false;}

}

if block == true && _input.fire_pressed && !place_meeting(x,y + 1,obj_parede){
if self.dir == "Esquerda"{
if self.controle == false{
self.animacao = 6;
instance_create_layer(x-40,y,"player",obj_hitbox_block_left)
obj_hitbox_block_left.forca = self.forca;
}
	}if self.dir == "Direita"{if controle == false{
self.animacao = 6;
instance_create_layer(x+40,y,"player",obj_hitbox_block);
obj_hitbox_block.forca = self.forca;
}}
self.controle = true;
}






}


function player_spawn(){
if (player_id == 0)
{
        x = 946;
}
else if (player_id == 1)
{
        x = 1776;
}
if (player_id == 2)
{
        x = 946;
}
else if (player_id == 3)
{
        x = 1776;
}


}

function input_handler()
{

var _input = rollback_get_input();
if _input.esquerda or _input.direita
{
	if place_meeting(x,y+2,obj_parede) {
	animacao = 1;
	}
}

depth = -y;

    window_set_cursor(cr_none);


 if _input.L_pressed{
 
 
switch self.dir {
	case "Direita":
 self.x = 1776;
 self.dir = "Esquerda";
	 break;
 

case "Esquerda":
 self.x = 946;
  self.dir = "Direita";
	 break;
	}
}

if hveloc == 0 and vveloc == 0 and !_input.fire and animacao != 5 {
animacao = 0;
controle = false;
}
if _input.space_pressed{
	audio_play_sound(naruto_jump_sound_effect,1,false);
animacao = 2;
} 

if _input.Q_pressed {

	self.forca -= 5;
	
if self.forca < 15{
	
	self.forca = 45;
	
	}
}

if _input.E_pressed {

	self.forca += 5;
	
if self.forca >45{
	
	self.forca = 15;
	
	}
}

if _input.G_pressed {

if (instance_number(obj_bola) <1){
	
instance_create_layer(x,y-520,"player",obj_bola);
}

}

}

function dir_handler(){

if self.xprevious < x{

self.dir = "Direita";

}else if self.xprevious > x{
self.dir = "Esquerda";


}
}

function animation_handler(){

switch player_id{
	
	case 0:
			switch self.dir{
				case "Direita":
			switch self.animacao {

			case 0:
				self.sprite_index = idle;
			break;
			case 1:
				self.sprite_index = walk;
			break;
			case 2:
				self.sprite_index = jump;
			break;
			case 3:
				self.sprite_index = spike;
			break;
			case 4:
				self.sprite_index = rec;
			break;
			case 5:
				self.sprite_index = set;
			break;
			case 6:
				self.sprite_index = block_p;
			break;

				}
					break;
				case "Esquerda":
				switch self.animacao {

			case 0:
				self.sprite_index = idle_left;
			break;
			case 1:
				self.sprite_index = walk_left;
			break;
			case 2:
				self.sprite_index = jump_left;
			break;
			case 3:
				self.sprite_index = spike_left;
			break;
			case 4:
				self.sprite_index = rec_left;
			break;
			case 5:
				self.sprite_index = set_left;
			break;
			case 6:
				self.sprite_index = block_pleft;
			break;


				}
			 	break;
			}

     break;

      case 1:
switch self.dir{
	case "Direita":
switch self.animacao {

case 0:
	self.sprite_index = idle_3;
break;
case 1:
	self.sprite_index = walk_2;
break;
case 2:
	self.sprite_index = jump_2;
break;
case 3:
	self.sprite_index = spike_2;
break;
case 4:
	self.sprite_index = rec_2;
break;
case 5:
	self.sprite_index = set256;
break;
case 6:
	self.sprite_index = block2;
break;


	}
	break;
	case "Esquerda":
	switch self.animacao {

case 0:
	self.sprite_index = idle_2_left;
break;
case 1:
	self.sprite_index = walk_2_left;
break;
case 2:
	self.sprite_index = jump_2_left;
break;
case 3:
	self.sprite_index = spike_2_left;
break;
case 4:
	self.sprite_index = rec_2_left;
break;
case 5:
	self.sprite_index = set2_left;
break;
case 6:
	self.sprite_index = block2_pleft;
break;

	}
 	break;
}
	
	break;
	
	default:
			switch self.dir{
				case "Direita":
			switch self.animacao {

			case 0:
				self.sprite_index = idle;
			break;
			case 1:
				self.sprite_index = walk;
			break;
			case 2:
				self.sprite_index = jump;
			break;
			case 3:
				self.sprite_index = spike;
			break;
			case 4:
				self.sprite_index = rec;
			case 5:
				self.sprite_index = set;
			break;
			case 6:
				self.sprite_index = block_p;
			break;
			break;

				}
					break;
				case "Esquerda":
				switch self.animacao {

			case 0:
				self.sprite_index = idle_left;
			break;
			case 1:
				self.sprite_index = walk_left;
			break;
			case 2:
				self.sprite_index = jump_left;
			break;
			case 3:
				self.sprite_index = spike_left;
			break;
			case 4:
				self.sprite_index = rec_left;
			break;
			case 5:
				self.sprite_index = set;
			break;
			case 6:
				self.sprite_index = block_pleft;
			break;

				}
			 	break;
			}

	break;
}


if animacao == 3 and fim_da_animacao(){
animacao = 2;

}

if animacao == 5 and fim_da_animacao(){
animacao = 2;
}



}

function camera_move(){

if player_local{

if (instance_number(obj_bola) > 0 ){

obj_camera.x = lerp(self.x,obj_bola.x,0.7);
obj_camera.y = lerp(self.y,obj_bola.y,0.7);
}else{

 obj_camera.y = lerp(self.y,obj_camera.y, 0.9);
obj_camera.x = lerp(self.x,obj_camera.x,0.7);
}


}

}