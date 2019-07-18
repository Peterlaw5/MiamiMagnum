/// @description PHASE WAVE
randomize();
visible=false;
going=true;
var i1=int64(random_range(0,ds_list_size(enemy_spawn)));
if(i1==ds_list_size(enemy_spawn))i1--;
var i2=int64(random_range(0,ds_list_size(enemy_spawn)));
if(i2==ds_list_size(enemy_spawn))i2--;
var spawn1=enemy_spawn[|i1];
var spawn2=enemy_spawn[|i2];

with(instance_create_layer(other.placeholders[|0].x,other.placeholders[|0].y,"spawn",obj_spawner)){
	scr_copy_spawner(spawn1);
	if(other.placeholders[|0].is_left)directioner=1;
	else directioner=-1;
	active=true;
}

with(instance_create_layer(other.placeholders[|1].x,other.placeholders[|1].y,"spawn",obj_spawner)){
	scr_copy_spawner(spawn2);
	if(other.placeholders[|1].is_left)directioner=1;
	else directioner=-1;
	active=true;
}

////spawn1.x=placeholders[|0].x;
////spawn1.y=placeholders[|0].y;
//if(placeholders[|0].is_left)spawn1.directioner=1;
//else spawn1.directioner=-1;
//spawn1.active=true;

//spawn2.x=placeholders[|1].x;
//spawn2.y=placeholders[|1].y;
//if(placeholders[|1].is_left)spawn2.directioner=1;
//else spawn2.directioner=-1;
//spawn2.active=true;

wait=(current_time/1000)+5;
phase=2;
//for(var i=0;i<ds_list_size(enemy_spawn);i++){
//	if(enemy_spawn[|i]!=spawn1||enemy_spawn[|i]!=spawn2){
//		instance_deactivate_object(enemy_spawn[|i]);	
//	}
//}

