// gravidade e queda 
if !place_meeting(x,y + 1,obj_parede){
vveloc += gravidade;

}
y += vveloc;



if place_meeting(x,y + vveloc   ,obj_parede)
	{
		while !place_meeting(x, y + sign(vveloc), obj_parede){
			y += sign(vveloc);
	}	
	vveloc = 0;
}
y += vveloc 

if place_meeting(x + hveloc  ,y  ,obj_parede)
	{
		while !place_meeting(x + sign(hveloc), y , obj_parede){
			x += sign(hveloc);
	}	
	hveloc = 0;
}
// controle de direção de bola após o impacto
if toque == false{
x += hveloc 
} else  {
	
if obj_player.ataqueDir == "Direita"{


if place_meeting(x + hveloc  ,y  ,obj_parede)
	{
		while !place_meeting(x + sign(hveloc), y , obj_parede){
			x += sign(hveloc);
	}	
	velocidade = 0;
	
}
x += velocidade;


if !place_meeting(x,y + 1,obj_parede){
vveloc += gravidade;

}
y += vveloc;


if place_meeting(x,y + vveloc ,obj_parede)
	{
		while !place_meeting(x, y + sign(vveloc), obj_parede){
			y += sign(vveloc);
	}	
	vveloc = 0;

}

}



if obj_player.ataqueDir == "Esquerda"{
	
	
if place_meeting(x + hveloc  ,y  ,obj_parede)
	{
		while !place_meeting(x + sign(hveloc), y , obj_parede){
			x += sign(hveloc);
	}	
	velocidade = 0;
	
}
x -= velocidade;


if !place_meeting(x,y + 1,obj_parede){
vveloc += gravidade;

}
depth = -y;
y += vveloc;


if place_meeting(x,y + vveloc ,obj_parede)
	{
		while !place_meeting(x, y + sign(vveloc), obj_parede){
			y += sign(vveloc);
	}	
	vveloc = 0;

}

}



}
// controle de sprites
if place_meeting(x,y + 1 ,obj_parede){


sprite_index = sprite10;


}else{
sprite_index = Sprite9;
}
if self.hveloc or vveloc > 1{
instance_create_depth(x,y,0,obj_sombra)
}
depth = -300;
