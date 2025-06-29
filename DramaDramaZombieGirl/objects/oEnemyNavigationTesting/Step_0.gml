var _onplatformsystem = collision_rectangle(x-8,y-8,x+8,y+8,oplatformTesting,true,true);

///_climbcapacity+=abs(zfloor);

if _onplatformsystem {
_onplatform=true;

zfloor=_onplatformsystem._height; 


} if !_onplatformsystem {_onplatform=false;  
zfloor=0;}




/*

_climbcapacity=64;
_currentclimbcapacity=0;




if place_meeting(x,y,oplatformTesting) {
_onplatform=true;

} else {_onplatform=false;}

*/



event_inherited();


if zfloor_last==zfloor {

} else  { zfloor_last=zfloor;
	_currentclimbcapacity = abs(z + zfloor) + _climbcapacity;
	} 



// Derecha
var inst = instance_place(x + 64, y, oplatformparent);
if (inst != noone && abs(inst._height) > _currentclimbcapacity) {
    x -= 16; // Empujar hacia la izquierda
    show_debug_message("Fue empujado hacia la izquierda por altura " + string(inst._height));
}

// Abajo
inst = instance_place(x, y + 64, oplatformparent);
if (inst != noone && abs(inst._height) > _currentclimbcapacity) {
    y -= 16; // Empujar hacia arriba
    show_debug_message("Fue empujado hacia arriba por altura " + string(inst._height));
}

// Izquierda
inst = instance_place(x - 64, y, oplatformparent);
if (inst != noone && abs(inst._height) > _currentclimbcapacity) {
    x += 16; // Empujar hacia la derecha
    show_debug_message("Fue empujado hacia la derecha por altura " + string(inst._height));
}

// Arriba
inst = instance_place(x, y - 64, oplatformparent);
if (inst != noone && abs(inst._height) > _currentclimbcapacity) {
    y += 16; // Empujar hacia abajo
    show_debug_message("Fue empujado hacia abajo por altura " + string(inst._height));
}






/*
if zfloor_last=!zfloor{
	_recalculate=true;
	zfloor_last=zfloor;
	
} 





