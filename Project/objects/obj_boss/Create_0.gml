randomize();
spawns=ds_list_create();
enemy_spawn=ds_list_create();
placeholders=ds_list_create();
collision_rectangle_list(0,0,room_width,room_height,obj_boss_spawn,false,true,spawns,false);
collision_rectangle_list(0,0,room_width,room_height,obj_spawner,false,true,enemy_spawn,false);
collision_rectangle_list(-50,0,room_width+50,room_height,obj_boss_spawn_placeholder,false,true,placeholders,false);
/*for(var i=0; i<ds_list_size(enemy_spawn);i++){
	enemy_spawn[|i].x=-300;
	enemy_spawn[|i].y=-300;
}*/
divider=1;
index=random_range(0,3);
if(index==3)index--;
cooldown=0;
phase=0;
wait=0;
throwed=0;
prev_div=1;
hp_max=120;
hp=hp_max;
draw_health_boss = 0;
event_inherited();