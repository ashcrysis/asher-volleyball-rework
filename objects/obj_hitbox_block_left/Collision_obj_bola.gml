
obj_player.ataqueDir = "Esquerda";

other.toque= true;
other.vveloc += 1;
other.velocidade = forca;
effect_create_above(ef_ring, x, y, 0, c_white);
if controle = false {

audio_play_sound(hit,1,false);
controle = true;
}
