key_up = keyboard_check_pressed(vk_up);
key_down = keyboard_check_pressed(vk_down);
key_left = keyboard_check_pressed(vk_left);
key_right = keyboard_check_pressed(vk_right);
key_confirm = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space);

//Menu movement

menu_move = key_down - key_up;
menu_index += menu_move;

if(menu_index < 0)
{
	menu_index = buttons - 1;
}
if(menu_index > buttons - 1)
{
	menu_index = 0;	
}
if(menu_index != last_selected)
{
	last_selected = menu_index;
}