/// @description Inserte aquí la descripción
// Puede escribir su código en este editor



if _owner!=noone {
x=_owner.x; y=_owner.y;

switch  ClothPos
{
	
	case ClothState.Back_: depth=_owner.depth-2; image_xscale=_owner.image_xscale; draw_text(x,y+16,"EQUIP" + string(depth));
	
	break;

	case ClothState.Front_: depth=_owner.depth+2; image_xscale=_owner.image_xscale;
	
	break;
	
	case ClothState.INACTIVE:
	
	break;
}


///depth=_owner.depth;
}
























