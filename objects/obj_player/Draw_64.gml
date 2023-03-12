var _escala = 0.5;
var _guia = display_get_gui_height();
var _spra = sprite_get_height(sprite_gui) * _escala;
var _huda = _guia - _spra;

if player_local{
draw_sprite_ext(sprite_gui_back,0,30,_huda,_escala,_escala,0,c_white,1);
if self.block == false{
draw_sprite_ext(sprite_str,0,30,_huda,(self.forca/ 45) * _escala ,_escala,0,c_white,1);
}
else if self.block == true{
draw_sprite_ext(sprite_block,0,30,_huda,(self.forca/ 45) * _escala ,_escala,0,c_white,1);
}
draw_sprite_ext(sprite_sta,0,30,_huda + 33,(self.stamina/self.maxestamina) * _escala,_escala,0,c_white,1);
draw_sprite_ext(sprite_gui,0,30,_huda,_escala,_escala,0,c_white,1);
}