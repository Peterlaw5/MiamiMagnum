/// @description EXIT DIALOG MODE

//destroy all dialog objects
layer_destroy("Dialogs");

//active player
obj_player.get_input=true;

//active enemies
for(var i=0;i<ds_list_size(obj_dialog_manager.enemies);i++){
	obj_dialog_manager.enemies[|i].active=true;	
}