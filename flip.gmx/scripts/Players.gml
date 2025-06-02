//Initialize Variables
grav = 0.6;
hsp = 0;
vsp = 0;
jumpspeed = 9; //13 jumps 2 squares
movespeed = 0;
previousmovespeed = 0;
grabbing = false;
accel = 0;
isairborne = true;
previousmovespeed = 0;
aircontrol = 0;
pause = 0;
state = states.normal;
snapleft = false;
snapright = false;
gamepad_set_axis_deadzone(0,0.4);
gamepad_set_axis_deadzone(1,0.4);
