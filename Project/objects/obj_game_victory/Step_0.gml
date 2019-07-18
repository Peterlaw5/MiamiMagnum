x = room_width*0.5;
y = room_height*0.5;

if (keyboard_check_pressed(vk_escape))
{
	audio_stop_all();
	room = rm_start_screen;
}