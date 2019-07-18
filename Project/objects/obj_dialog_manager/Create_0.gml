if(!layer_exists("Dialogs")){
	layer_create(-200,"Dialogs");
}
enemies=ds_list_create();
var buffer=buffer_load("dialog.json");
var jsonText=buffer_read(buffer, buffer_text);
buffer_delete(buffer);
dialog_keeper=json_decode(jsonText);

