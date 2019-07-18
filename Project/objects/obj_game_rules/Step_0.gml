if (keyboard_check_pressed(vk_escape) && room != rm_start_screen && room != rm_game_over)
{
	instance_create_layer(x,y,layer,obj_pause);
}