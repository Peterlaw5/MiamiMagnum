//set cocaine bar
if(room_get_name(room)=="rm_level_hellicopter"){
	hp_max=hel_hp;	
}
hp=hp_max;
get_input=true;
invulnerable=false;
if(room==rm_level_tutorial)cocaine=100;
else cocaine=0;//if(fine_livello_select(next_lvl()) cocaine=cocaine_prev_lvl;else cocaine=0;
event_inherited();
pressed_shoot=false;
special=false;
invincibility=false;





