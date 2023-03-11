  estado = scr_player_andando;
image_xscale = 2.8;
image_yscale = 2.8;
audioControl = false;
y = 1220;

script_execute(player_spawn);


naruto = 0;
veloc = 1.3;
ataqueDir = "";
esquerda = keyboard_check(ord("A"));
direita = keyboard_check(ord("D"));
space = keyboard_check_pressed(vk_space);
vveloc = 0;
hveloc = 0;
gravidade = 0.4;
animacao = 0;
controle = false;

sEsquerda = keyboard_check_released(ord("A"));
sDireita = keyboard_check_released(ord("D"));
bolas = 0;
forca = 25;  
block = false;
dir = "Direita";
