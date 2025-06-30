var _onplatformsystem = collision_rectangle(x-8,y-8,x+8,y+8,oplatformTesting,true,true);

///_climbcapacity+=abs(zfloor);

if _onplatformsystem {
_onplatform=true;

zfloor=_onplatformsystem._height; 


} if !_onplatformsystem {_onplatform=false;  
zfloor=0;}


if zfloor_last==zfloor {

} else  { zfloor_last=zfloor;
	_currentclimbcapacity = abs(z + zfloor) + _climbcapacity;
	} 


separate_from_wall_enemiez();


event_inherited();












/*
if zfloor_last=!zfloor{
	_recalculate=true;
	zfloor_last=zfloor;
	
} 





