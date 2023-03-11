
rollback_define_input(
{
        esquerda: ord("A"),
        direita: ord("D"),
        space: vk_space,
        fire: mb_left,
		shift : vk_lshift,
	 	mbright: mb_right,
		Q : ord("Q"),
		E : ord("E"),
		G : ord("G"),
		L : ord("L"),
		N : ord("N"),
		F: ord("F"),
		B: ord("B")
});



rollback_define_player(obj_player, "player");

if (!rollback_join_game()){

     rollback_create_game(1,true);
}
