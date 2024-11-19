switch(_dirtomove) {

case 0:
move_x=_spdtomove;
break;


case 1:
move_y=_spdtomove;
break;


case 2:
move_x=_spdtomove;
break;


case 3:
move_y=_spdtomove;
break;


case noone:
break;

}

x+=move_x;
y+=move_y;

_collwithplatformdmgsystem();