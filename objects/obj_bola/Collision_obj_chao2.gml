
if controle3 == 0 {
vveloc = 0;
vveloc-= velocidade/6;
controle3 = 1;
velocidade -= 10;
audio_play_sound(hit4,1,false);
//obj_juiz.animacao = 2;
//audio_play_sound(apito,0.2,false);
alarm[0] = 120;
effect_create_above(ef_ellipse, x, y, 0, c_white);
}else if controle3 == 1 && place_meeting(x,y+1,obj_parede){
velocidade = 0;
hveloc = 0;
if pulo == 1 {
vveloc -= 2 ;
pulo = 0.5;
effect_create_above(ef_ring, x, y, 0, c_white);
audio_play_sound(hit4,1,false);
}

if pulo == 0.5 {
vveloc -= 1.2 ;
pulo = 0;
effect_create_above(ef_ring, x, y, 0, c_white);
audio_play_sound(hit4,1,false);
}
}