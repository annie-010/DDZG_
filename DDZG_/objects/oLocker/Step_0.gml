


depth=-floor(bbox_bottom/32);


var darkSectionCollision;
darkSectionCollision =   collision_rectangle(x-16,y-16,x+16,y+16,oDarktoRoomSections,true,true);
 if  darkSectionCollision!=noone {}
 
 
 var darkCollisionPlace;
 darkCollisionPlace = instance_place(x,y,oDarktoRoomSections);
 if darkCollisionPlace!=noone {
if sectionId==noone{ sectionId=darkCollisionPlace.sectionId;}
 
 }
 
 if sectionId!=noone && instance_exists(oPlayer) {
	 if sectionId!=oPlayer.sectionId {
	 
	 visible=0;
	 
	 } else if sectionId==oPlayer.sectionId {
	 
	 visible=1;
	 
	 
	 }
 }

 
 