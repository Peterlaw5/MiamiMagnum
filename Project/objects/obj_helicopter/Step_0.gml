if(x<=camera_get_view_x(view_camera[0])+145){
	stop=true;	
}
if(stop){
	x+=3;	
	start_x=x;
	if(x>camera_get_view_x(view_camera[0])+150){
		stop=false;
	}
}
if(!stop){
	event_inherited();
}
if(counter<=0){
	var collider=collision_line(x,y,x,room_height,obj_car,false,false);
	if(collider!=noone&&object_is_ancestor(collider.object_index,obj_car)){
		if(collider.sprite_index!=spr_camion){
			instance_create_layer(x,y,"Weapons",obj_helicopter_bomb);	
			counter=cooldown*30;
		}
	}
}else counter--;
