sprite_index = spr_whitedudepush;
image_xscale = -1;
var box = instance_position(x-32,y,obj_whitepushpull);
amount = 4;
if (box.x % 32 == 0)
{ 
    snapleft = false; 
    snapright = false;
}

with(box){
    if (!place_meeting(x,y+1,obj_whitewall))
        exit;
}

if(key_right && !snapright && !snapleft && !collision_point(box.x+64+32,y,obj_whitewall,false,false) && collision_point(box.x+64,box.y+64,obj_whitewall,false,false))
    snapright = true;

if(-key_left && !snapright && !snapleft && !collision_point(box.x-1,y,obj_whitewall,false,false))
    snapleft = true;

if (snapright)
    box.x += amount;
if (snapleft)
    box.x -= amount;
    
x = box.x+80;
