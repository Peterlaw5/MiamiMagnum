scr_menu_selection();

if(key_confirm)
{
	switch(menu_index)
	{
		case 0:
			room = rm_level_selection;
			break;
		case 1:
			game_end();
			break;
	}
}