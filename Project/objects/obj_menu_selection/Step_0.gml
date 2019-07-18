key_left = keyboard_check_pressed(vk_left);
key_right = keyboard_check_pressed(vk_right);
key_confirm = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space);

if (key_left)
{
	menu_index -= 1;	
}
else if (key_right)
{
	menu_index += 1;	
}

if (menu_index < 0) menu_index = 6;
if (menu_index > 6) menu_index = 0;

image_speed = 0;
image_index = menu_index;

x = menu_x;
y = menu_y;

if(key_confirm)
{
	audio_stop_all();
	switch(menu_index)
	{
		case 0: //Tutorial Beach
			room = rm_level_tutorial;
			break;
		case 1: //Level Beach
			room = rm_level_beach;
			break;
		case 2: //City
			room = rm_level_city;
			break;
		case 3: //Run 2
			room = rm_level_run2;
			break;
		case 4: //City 2
			room = rm_level_city2;
			break;
		case 5: //Run
			room = rm_level_run;
			break;
		case 6: //Boss
			room = rm_level_boss;
			break;
	}
}

