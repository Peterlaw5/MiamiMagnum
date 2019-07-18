menu_x = camera_get_view_x(view_camera[0])+300;
menu_y = room_height*0.4;
button_h = 40;

button[0] = "RIPROVA IL LIVELLO";
button[1] = "TORNA AL MENU'";

buttons = array_length_1d(button);

menu_index = 0;
last_selected = 0;