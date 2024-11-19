var _createdbullet =  instance_create_layer(x,y,"_Entities", _bullet);
_createdbullet._dirtomove=_dirtoshoot;
_createdbullet.z=z;
alarm_set(0,320);