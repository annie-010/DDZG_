

switch _moving {

case true: depth = -floor(bbox_bottom/32)-2;
break;

case false: depth = -floor(bbox_bottom/32); 
break;

}