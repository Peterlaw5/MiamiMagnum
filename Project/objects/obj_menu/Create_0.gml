menu_x = camera_get_view_x(view_camera[0])+320;
menu_y = room_height*0.5;
button_h = 40;

button[0] = "INIZIO PARTITA";
button[1] = "ESCI";

buttons = array_length_1d(button);

menu_index = 0;
last_selected = 0;