/// @description PHASE BASIC
randomize();
x=spawns[|index].x;
y=spawns[|index].y;
visible=true;
if(cooldown++>=molotof_delay/divider){
	var rnd=random_range(0,3);
	if(rnd==3)rnd--;
	switch(int64(rnd)){
		case 0:	{
			image_xscale=1;
			with(instance_create_layer(x+20,y-50,"Weapons",obj_molotof)){
				hsp+=4;
			}
			cooldown=0;
			throwed++;
			break;
		}
		case 1:{
			image_xscale=-1;
			with(instance_create_layer(x-20,y-50,"Weapons",obj_molotof)){
				hsp+=-4;
			}
			cooldown=0;
			throwed++;
			break;
		}
		case 2:{
			instance_create_layer(x,y-50,"Weapons",obj_molotof);
			cooldown=0;
			throwed++;
			break;
		}
	}
}
switch(divider){
	case 1:{
		if(hp<hp_max-hp_max/3){
			phase=1;	
			prev_div=divider;
			divider++;
		}
		break;
	} 
	case 2:{
		if(hp<hp_max/3){
			phase=1;	
			prev_div=divider;
			divider++;
		}
		break;
	}
}
