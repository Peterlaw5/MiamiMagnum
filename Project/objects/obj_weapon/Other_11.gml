/// @description Init arrays


#region GUN
//Idle
y_gun_offsets[0,0] = -34;
y_gun_offsets[1,0] = -32;
y_gun_offsets[2,0] = -34;
y_gun_offsets[3,0] = -32;
x_gun_offset[0,0] = 20;
//Walk
y_gun_offsets[0,1] = -34;
y_gun_offsets[1,1] = -34;
y_gun_offsets[2,1] = -32;
y_gun_offsets[3,1] = -36;
x_gun_offset[0,1] = 13 + user_id.move_speed;
//Duck
y_gun_offsets[0,2] = -15;
y_gun_offsets[1,2] = -17;
y_gun_offsets[2,2] = -15;
y_gun_offsets[3,2] = -17;
x_gun_offset[0,2] = 18;
//Jump
y_gun_offsets[0,3] = -20-user_id.jump_speed;
y_gun_offsets[1,3] = -20-user_id.jump_speed;
y_gun_offsets[2,3] = -20-user_id.jump_speed;
y_gun_offsets[3,3] = -20-user_id.jump_speed;
x_gun_offset[0,3] = 19;
//Fall
y_gun_offsets[0,4] = -26;
y_gun_offsets[1,4] = -26;
y_gun_offsets[2,4] = -26;
y_gun_offsets[3,4] = -26;
x_gun_offset[0,4] = 19;
//Aim Up
y_gun_offsets[0,5] = -59;
y_gun_offsets[1,5] = -55;
y_gun_offsets[2,5] = -55;
y_gun_offsets[3,5] = -55;
x_gun_offset[0,5] = 3;
//Walk Aim Up
y_gun_offsets[0,6] = -55;
y_gun_offsets[1,6] = -59;
y_gun_offsets[2,6] = -55;
y_gun_offsets[3,6] = -59;
x_gun_offset[0,6] = -2+user_id.move_speed;
//Aim Down
y_gun_offsets[0,7] = -10;
y_gun_offsets[1,7] = -10;
y_gun_offsets[2,7] = -10;
y_gun_offsets[3,7] = -10;
x_gun_offset[0,7] = 1;
//Death
y_gun_offsets[0,8] = -5;
y_gun_offsets[1,8] = -5;
y_gun_offsets[2,8] = -5;
y_gun_offsets[3,8] = -5;
x_gun_offset[0,8] = 20;
#endregion
#region SHOTGUN
//Idle
y_shotgun_offsets[0,0] = -34;
y_shotgun_offsets[1,0] = -32;
y_shotgun_offsets[2,0] = -34;
y_shotgun_offsets[3,0] = -32;
x_shotgun_offset[0,0] = 30;
//Walk
y_shotgun_offsets[0,1] = -34;
y_shotgun_offsets[1,1] = -34;
y_shotgun_offsets[2,1] = -32;
y_shotgun_offsets[3,1] = -36;
x_shotgun_offset[0,1] = 24+user_id.move_speed;
//Duck
y_shotgun_offsets[0,2] = -15;
y_shotgun_offsets[1,2] = -17;
y_shotgun_offsets[2,2] = -15;
y_shotgun_offsets[3,2] = -17;
x_shotgun_offset[0,2] = 20;
//Jump
y_shotgun_offsets[0,3] = -20-user_id.jump_speed;
y_shotgun_offsets[1,3] = -20-user_id.jump_speed;
y_shotgun_offsets[2,3] = -20-user_id.jump_speed;
y_shotgun_offsets[3,3] = -20-user_id.jump_speed;
x_shotgun_offset[0,3] = 29;
//Fall
y_shotgun_offsets[0,4] = -25;
y_shotgun_offsets[1,4] = -24;
y_shotgun_offsets[2,4] = -24;
y_shotgun_offsets[3,4] = -25;
x_shotgun_offset[0,4] = 29;
//Aim Up
y_shotgun_offsets[0,5] = -68;
y_shotgun_offsets[1,5] = -66;
y_shotgun_offsets[2,5] = -66;
y_shotgun_offsets[3,5] = -66;
x_shotgun_offset[0,5] = 0;
//Walk Aim Up
y_shotgun_offsets[0,6] = -66;
y_shotgun_offsets[1,6] = -68;
y_shotgun_offsets[2,6] = -66;
y_shotgun_offsets[3,6] = -68;
x_shotgun_offset[0,6] = user_id.move_speed;
//Aim Down
y_shotgun_offsets[0,7] = -4;
y_shotgun_offsets[1,7] = -4;
y_shotgun_offsets[2,7] = -4;
y_shotgun_offsets[3,7] = -4;
x_shotgun_offset[0,7] = 3;
//Death
y_shotgun_offsets[0,8] = -5;
y_shotgun_offsets[1,8] = -5;
y_shotgun_offsets[2,8] = -5;
y_shotgun_offsets[3,8] = -5;
x_shotgun_offset[0,8] = 20;
#endregion
#region MACHINEGUN
//Idle
y_machinegun_offsets[0,0] = -34;
y_machinegun_offsets[1,0] = -32;
y_machinegun_offsets[2,0] = -34;
y_machinegun_offsets[3,0] = -32;
x_machinegun_offset[0,0] = 25;
//Walk
y_machinegun_offsets[0,1] = -34;
y_machinegun_offsets[1,1] = -34;
y_machinegun_offsets[2,1] = -32;
y_machinegun_offsets[3,1] = -36;
x_machinegun_offset[0,1] = 17+user_id.move_speed;
//Duck
y_machinegun_offsets[0,2] = -15;
y_machinegun_offsets[1,2] = -17;
y_machinegun_offsets[2,2] = -15;
y_machinegun_offsets[3,2] = -17;
x_machinegun_offset[0,2] = 23;
//Jump
y_machinegun_offsets[0,3] = -33-user_id.jump_speed;
y_machinegun_offsets[1,3] = -27-user_id.jump_speed;
y_machinegun_offsets[2,3] = -24-user_id.jump_speed;
y_machinegun_offsets[3,3] = -21-user_id.jump_speed;
x_machinegun_offset[0,3] = 24;
//Fall
y_machinegun_offsets[0,4] = -26;
y_machinegun_offsets[1,4] = -26;
y_machinegun_offsets[2,4] = -26;
y_machinegun_offsets[3,4] = -26;
x_machinegun_offset[0,4] = 24;
//Aim Up
y_machinegun_offsets[0,5] = -65;
y_machinegun_offsets[1,5] = -60;
y_machinegun_offsets[2,5] = -60;
y_machinegun_offsets[3,5] = -60;
x_machinegun_offset[0,5] = 3;
//Walk Aim Up
y_machinegun_offsets[0,6] = -60;
y_machinegun_offsets[1,6] = -65;
y_machinegun_offsets[2,6] = -60;
y_machinegun_offsets[3,6] = -65;
x_machinegun_offset[0,6] = -2+user_id.move_speed;
//Aim Down
y_machinegun_offsets[0,7] = -10;
y_machinegun_offsets[1,7] = -10;
y_machinegun_offsets[2,7] = -10;
y_machinegun_offsets[3,7] = -10;
x_machinegun_offset[0,7] = 1;
//Death
y_machinegun_offsets[0,8] = -5;
y_machinegun_offsets[1,8] = -5;
y_machinegun_offsets[2,8] = -5;
y_machinegun_offsets[3,8] = -5;
x_machinegun_offset[0,8] = 20;
#endregion
#region MAGNUM
//Idle
y_magnum_offsets[0,0] = -34;
y_magnum_offsets[1,0] = -32;
y_magnum_offsets[2,0] = -34;
y_magnum_offsets[3,0] = -32;
x_magnum_offset[0,0] = 25;
//Walk
y_magnum_offsets[0,1] = -34;
y_magnum_offsets[1,1] = -34;
y_magnum_offsets[2,1] = -32;
y_magnum_offsets[3,1] = -36;
x_magnum_offset[0,1] = 18+user_id.move_speed;
//Duck
y_magnum_offsets[0,2] = -15;
y_magnum_offsets[1,2] = -17;
y_magnum_offsets[2,2] = -15;
y_magnum_offsets[3,2] = -17;
x_magnum_offset[0,2] = 23;
//Jump
y_magnum_offsets[0,3] = -33-user_id.jump_speed;
y_magnum_offsets[1,3] = -27-user_id.jump_speed;
y_magnum_offsets[2,3] = -24-user_id.jump_speed;
y_magnum_offsets[3,3] = -21-user_id.jump_speed;
x_magnum_offset[0,3] = 24;
//Fall
y_magnum_offsets[0,4] = -25;
y_magnum_offsets[1,4] = -24;
y_magnum_offsets[2,4] = -24;
y_magnum_offsets[3,4] = -25;
x_magnum_offset[0,4] = 24;
//Aim Up
y_magnum_offsets[0,5] = -65;
y_magnum_offsets[1,5] = -60;
y_magnum_offsets[2,5] = -60;
y_magnum_offsets[3,5] = -60;
x_magnum_offset[0,5] = 3;
//Walk Aim Up
y_magnum_offsets[0,6] = -60;
y_magnum_offsets[1,6] = -65;
y_magnum_offsets[2,6] = -60;
y_magnum_offsets[3,6] = -65;
x_magnum_offset[0,6] = -2+user_id.move_speed;
//Aim Down
y_magnum_offsets[0,7] = -10;
y_magnum_offsets[1,7] = -10;
y_magnum_offsets[2,7] = -10;
y_magnum_offsets[3,7] = -10;
x_magnum_offset[0,7] = 1;
//Death
y_magnum_offsets[0,8] = -5;
y_magnum_offsets[1,8] = -5;
y_magnum_offsets[2,8] = -5;
y_magnum_offsets[3,8] = -5;
x_magnum_offset[0,8] = 20;
#endregion
