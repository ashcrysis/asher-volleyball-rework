
obj_player.ataqueDir = "Esquerda";

other.toque= true;
other.vveloc = 0;
other.velocidade = 0;
other.vveloc -= 3.4;
other.velocidade = forca-5;
effect_create_above(ef_ring, x, y+5, 0, c_white);
if controle = false {

audio_play_sound(hit,1,false);
controle = true;
}

