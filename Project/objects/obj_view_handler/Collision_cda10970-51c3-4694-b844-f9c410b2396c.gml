//camera_set_view_speed(view_camera[0], 0, 0);
obj_camera_handler.stop=true;
var cx=camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0]);
var cy=camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0]);
var ls=ds_list_create();
var spawners=collision_rectangle_list(-200,-200,cx+200,cy+200,obj_spawner,false,true,ls,false);
n_spawn=ds_list_size(ls);
for(var i=0;i<ds_list_size(ls);++i){
	ls[|i].active=true;	
	ls[|i].handler=id;
}
