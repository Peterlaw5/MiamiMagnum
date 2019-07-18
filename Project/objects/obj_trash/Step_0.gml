var spawn_offset=0;
var spawned=0;
if(hp<=0){
	image_speed = 8;
	if(spr_curative!=noone){
		if(spr_curative==spr_cocktail){
			if(spawned%2!=0)spawn_offset=-spawn_offset;
			var inst=instance_create_layer(x+spawn_offset,y,"Weapons",obj_curative);
			inst.sprite_index=spr_curative;
			if(spawn_offset==0||++spawned%2==0)spawn_offset=abs(spawn_offset)+32;
		}else{
			for(var i=0;i<curative_drop;i++){
				if(spawned%2!=0)spawn_offset=-spawn_offset;
				var inst=instance_create_layer(x+spawn_offset,y,"Weapons",obj_curative);
				inst.sprite_index=spr_curative;
				if(spawn_offset==0||++spawned%2==0)spawn_offset=abs(spawn_offset)+32;
			}
		}
	}
	for(var i=0;i<coca_drop;i++){
		if(spawned%2!=0)spawn_offset=-spawn_offset;
		instance_create_layer(x+spawn_offset,y,"Weapons",obj_cocaine);
		if(spawn_offset==0||++spawned%2==0)spawn_offset=abs(spawn_offset)+32;
	}
	if(molotof_drop>0){
		if(spawned%2!=0)spawn_offset=-spawn_offset;
		instance_create_layer(x+spawn_offset,y,"Weapons",obj_molotof_drop);
		if(spawn_offset==0||++spawned%2==0)spawn_offset=abs(spawn_offset)+32;
	}
	obj_game_rules.destroy_score+=3;
	instance_destroy();
}