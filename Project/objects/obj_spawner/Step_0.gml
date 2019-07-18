if(active){
	if(n_melee>0){
		if(counter++>=cooldown_melee_frames){
			with(instance_create_layer(x,y,"Enemies",obj_enemy_melee)){
				dir=other.directioner;
				active=true;	
			}
			counter=0;
			n_melee--;
		}
	}else if(n_ranged_gun){
		if(counter++>=cooldown_gun_frames){
			with(instance_create_layer(x,y,"Enemies",obj_enemy_ranged)){
				dir=other.directioner;
				active=true;	
			}
			counter=0;
			n_ranged_gun--;
		}
	}else if(n_ranged_machinegun){
		if(counter++>=cooldown_machinegun_frames){
			with(instance_create_layer(x,y,"Enemies",obj_enemy_machinegun)){
				dir=other.directioner;
				active=true;	
			}
			counter=0;
			n_ranged_machinegun--;
		}
	}else if(n_ranged_shotgun){
		if(counter++>=cooldown_shotgun_frames){
			with(instance_create_layer(x,y,"Enemies",obj_enemy_shotgun)){
				dir=other.directioner;
				active=true;	
			}
			counter=0;
			n_ranged_shotgun--;
		}
	}else if(n_ranged_magnum){
		if(counter++>=cooldown_magnum_frames){
			with(instance_create_layer(x,y,"Enemies",obj_enemy_magnum)){
				dir=other.directioner;
				active=true;	
			}
			counter=0;
			n_ranged_magnum--;
		}
	}
}
var n_enemies=n_melee+n_ranged_gun+n_ranged_machinegun+n_ranged_magnum+n_ranged_shotgun;
if(n_enemies<=0){
	//handler.n_spawn--;
	instance_destroy();	
}