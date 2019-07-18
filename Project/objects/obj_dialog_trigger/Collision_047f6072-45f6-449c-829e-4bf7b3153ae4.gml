//stop player
with(obj_player){
	get_input=false;
	scr_init_actions();
}

//stop enemies
collision_rectangle_list(0,0,640,360,obj_enemy,false,true,obj_dialog_manager.enemies,false);
for(var i=0;i<ds_list_size(obj_dialog_manager.enemies);i++){
	obj_dialog_manager.enemies[|i].active=false;
}


var inst=instance_create_layer(obj_dialog_manager.x,obj_dialog_manager.y,"Dialogs",obj_dialog);
with(inst){
	dialog=obj_dialog_manager.dialog_keeper[?other.dialog_label];
	event_user(0);
}
instance_destroy();

