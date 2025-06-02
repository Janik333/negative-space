sprite_index = spr_blackdudepush;
var box = instance_position(x+17,y,obj_blackpushpull);
amount = 4;
if (box.x % 32 == 0)
{ 
    snapleft = false; 
    snapright = false;
}

with(box){
    if (!place_meeting(x,y+1,obj_blackwall))
        exit;
}

if(key_right && !snapright && !snapleft && !collision_point(box.x+64,y,obj_blackwall,false,false)){
    snapright = true;
    box.x += amount;
}

if(-key_left && !snapright && !snapleft && !collision_point(box.x-33,y,obj_blackwall,false,false)){
    snapleft = true;
    box.x -= amount;
}

if (snapright)
    box.x += amount;
if (snapleft)
    box.x -= amount;
    
x = box.x - 16;

