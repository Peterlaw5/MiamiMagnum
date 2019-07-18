if(!damaged){
	if(thrower==obj_barrel_explosion||thrower==obj_bomb_explosion){
		other.hp=-1;
	}else {
		other.hp -= damage_enemy;
	}
}
