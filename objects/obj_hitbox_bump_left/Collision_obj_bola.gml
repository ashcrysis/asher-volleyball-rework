if other.controle3 == 0 {
other.controle3 = 0;
other.toque = false	 
other.velocidade = 0;
other.vveloc = 0;
other.hveloc = 0;
other.vveloc-= velocidade/4;
other.hveloc += (velocidade/6.6) * -1;

other.velocidade -= 10;
other.audio_play_sound(hit4,1,false);
effect_create_above(ef_ring, x, y, 0, c_white);
}