if(hp<=0){
	instance_create_layer(x,y,"Weapons",obj_explosion);
	obj_game_rules.destroy_score+=5;
	instance_destroy();
}