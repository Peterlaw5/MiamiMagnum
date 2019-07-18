with(instance_create_layer(x,y-20,"Weapons",obj_explosion)){
	depth=-201;	
	thrower=obj_barrel_explosion;
}
with(instance_create_layer(x+15,y,"Weapons",obj_explosion)){
	depth=-200;	
	thrower=obj_barrel_explosion;
}
with(instance_create_layer(x-15,y,"Weapons",obj_explosion)){
	depth=-200;	
	thrower=obj_barrel_explosion;
}
with(instance_create_layer(x,y,"Weapons",obj_explosion)){
	depth=-202;	
	thrower=obj_barrel_explosion;
}
event_inherited();

