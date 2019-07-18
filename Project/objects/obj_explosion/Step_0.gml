
if (cd <= 0)
{
	instance_destroy();
	cd = max_cd*room_speed;
}
cd -= 1;
