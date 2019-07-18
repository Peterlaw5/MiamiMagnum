scr_menu_selection();

image_alpha += 0.1;

if(key_confirm)
{
	audio_stop_all();
	switch(menu_index)
	{
		case 0:
			room = rm_level_selection;
			break;
		case 1:
			room = rm_start_screen;
			break;
	}
}