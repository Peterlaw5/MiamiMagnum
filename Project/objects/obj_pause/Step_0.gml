scr_menu_selection();

x = menu_x;
y = menu_y;

if(key_confirm)
{	audio_stop_all();
	switch(menu_index)
	{
		case 0:
			instance_activate_all();
			instance_destroy(self);
			break;
		case 1:
			
			room_restart();
			break;
		case 2:
		
			room = rm_start_screen;
			break;
	}
}