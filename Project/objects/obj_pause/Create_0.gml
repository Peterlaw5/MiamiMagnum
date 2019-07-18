instance_deactivate_all(true);
instance_activate_object(self);
instance_activate_object(obj_controller);

menu_x = camera_get_view_x(view_camera[0])+320;
menu_y = room_height*0.5;
button_h = 40;

button[0] = "RIPRENDI PARTITA";
button[1] = "RIPROVA LIVELLO";
button[2] = "TORNA AL MENU'";

buttons = array_length_1d(button);

menu_index = 0;
last_selected = 0;



