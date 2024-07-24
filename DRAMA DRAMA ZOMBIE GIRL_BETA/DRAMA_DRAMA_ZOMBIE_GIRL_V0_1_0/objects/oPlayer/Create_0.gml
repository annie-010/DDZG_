#macro MOVE_SPEED_WALK_BASE 2
#macro MOVE_SPEED_RUN_BASE 4
#macro MOVE_SPEED_JUMP_BASE 10
#macro GRAVITY .60 









MOVE_CURRENT_SPEED = 0;
tilemap = layer_tilemap_get_id("Tiles_00_coll");

z=0;
floorZ = 0;
_onPlatform = false;



function _place_meeting_3d(_x,_y,_z,_obj,height) {

var xyMeeting = instance_place(_x,_y, _obj);

var zMeeting = false;

if(xyMeeting) {
zMeeting=rectangle_in_rectangle(0,xyMeeting.z,1,xyMeeting.z-xyMeeting._colheight,0,_z,1,_z-height);
}
return xyMeeting && zMeeting;
}







_colheight = 130;

move_z = 0;
move_y = 0;///pointer_null;
move_x = 0;//pointer_null;

_maskFloor = spr_ch_saki_mask_floor;
_shadowspr = spr_ch_saki_shadow;


 enum _EnumPlayerState {_inactive,_stand,_walk,_run,_menu}
_CurrentPlayerState = _EnumPlayerState._inactive;
_CurrentStatePrint="Noone";
alarm_set(0,30);

if !instance_exists(oPlayerMenu) {
 _PlayerMenu = instance_create_layer(0,0,"Instances",oPlayerMenu);
}


_currentequipPlayer = {
_Head : pointer_null,
_Chest : pointer_null,
_Weapon : pointer_null,
}

