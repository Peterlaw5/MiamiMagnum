sprite_index=spr_helicopter;

//throwable handler
if(!instance_exists(obj_throw)){
	instance_create_layer(x,y,"Weapons",obj_throw);
}


//weapon handler
if(weapon_id==noone){
	weapon_id=instance_create_layer(x+50,y,"Weapons",obj_weapon);
	weapon_id.user_id=id;
	with (weapon_id)
	{
		event_user(1);
	}
}


if(left) x-=hel_hsp; 
if(right)x+=hel_hsp;
if(up)y-=hel_vsp;
if(duck)y+=hel_vsp;
if(pressed_shoot)scr_shoot(0);
if(throw){instance_create_layer(x,y+20,"Weapons",obj_helicopter_bomb);}

if(hp<=0){
	instance_create_layer(x,y,"Weapons",obj_bomb_explosion);
	instance_create_layer(x-30,y,"Weapons",obj_bomb_explosion);
	instance_create_layer(x+30,y,"Weapons",obj_bomb_explosion);
	
	//torna al menu
}