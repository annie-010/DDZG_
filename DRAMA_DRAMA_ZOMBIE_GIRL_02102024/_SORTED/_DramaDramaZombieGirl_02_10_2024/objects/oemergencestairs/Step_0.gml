var _collision = place_meeting(x,y,oPlayer);


if _type=="_up" {image_index=1;} else if _type=="_down"  {image_index=0;}




if _collision {
	
	show_debug_message("COLISION DE ESCALERAS");
	
switch (room) {


case r_playable_minus1th_hideway:  if id == inst_1B46FF07 {
room_goto(r_playable_minus2th_hideway);
}
break; 


case r_playable_minus2th_hideway:  if id == inst_4D158EB5 {
room_goto(r_playable_minus1th_hideway);

with(oPlayer) {
	
x = 190;
y = 384;
alarm_set(0,60);
_CurrentPlayerState=_EnumPlayerState._dialog;
}

}
break; 



case r_playable_exitcorridor_1th:
if image_index==0 {
room_goto(r_playable_exitcorridor_Minus1);
with(oPlayer) {
	
x = 413;
y = 381;
alarm_set(0,60);
_CurrentPlayerState=_EnumPlayerState._dialog;
}

} else if image_index==1 {room_goto(r_playable_exitcorridor_2th);
	
	
	with(oPlayer) {
	
x = 739;
y = 381;
alarm_set(0,60);
_CurrentPlayerState=_EnumPlayerState._dialog;
}
	
	
	}
break;




case r_playable_1th_public:

if image_index==0 {
room_goto(r_playable_minus1th_hideway);
with(oPlayer) {
	
x = 216;
y = 450;
alarm_set(0,60);
_CurrentPlayerState=_EnumPlayerState._dialog;
}

} else if image_index==1 {room_goto(r_playable_exitcorridor_2th);
	
	
	with(oPlayer) {
	
x = 739;
y = 381;
alarm_set(0,60);
_CurrentPlayerState=_EnumPlayerState._dialog;
}
	
	
	}

break;









case r_playable_exitcorridor_2th:
if image_index==0 {
room_goto(r_playable_exitcorridor_1th);
with(oPlayer) {
	
x = 413;
y = 381;
alarm_set(0,60);
_CurrentPlayerState=_EnumPlayerState._dialog;
}

} else if image_index==1 {room_goto(r_playable_exitcorridor_3th);
	
	
	with(oPlayer) {
	
x = 739;
y = 381;
alarm_set(0,60);
_CurrentPlayerState=_EnumPlayerState._dialog;
}
	
	
	}
break;

case r_playable_exitcorridor_3th:

if image_index==0 {
room_goto(r_playable_exitcorridor_2th);
with(oPlayer) {
	
x = 413;
y = 381;
alarm_set(0,60);
_CurrentPlayerState=_EnumPlayerState._dialog;
}

} else if image_index==1 {room_goto(r_playable_exitcorridor_4th);
	
	
	with(oPlayer) {
	
x = 739;
y = 381;
alarm_set(0,60);
_CurrentPlayerState=_EnumPlayerState._dialog;
}
	
	
	}

break;


case r_playable_exitcorridor_4th:


if image_index==0 {
room_goto(r_playable_exitcorridor_3th);
with(oPlayer) {
	
x = 413;
y = 381;
alarm_set(0,60);
_CurrentPlayerState=_EnumPlayerState._dialog;
}

} else if image_index==1 {room_goto(r_playable_exitcorridor_5th);
	
	
	with(oPlayer) {
	
x = 739;
y = 381;
alarm_set(0,60);
_CurrentPlayerState=_EnumPlayerState._dialog;
}
	
	
	}




break;



case r_playable_exitcorridor_5th:

if image_index==0 {
room_goto(r_playable_exitcorridor_4th);
with(oPlayer) {
	
x = 413;
y = 381;
alarm_set(0,60);
_CurrentPlayerState=_EnumPlayerState._dialog;
}

} else if image_index==1 {room_goto(r_playable_exitcorridor_6th);
	
	
	with(oPlayer) {
	
x = 739;
y = 381;
alarm_set(0,60);
_CurrentPlayerState=_EnumPlayerState._dialog;
}
	
	
	}

break;


case r_playable_exitcorridor_6th:


if image_index==0 {
room_goto(r_playable_exitcorridor_5th);
with(oPlayer) {
	
x = 413;
y = 381;
alarm_set(0,60);
_CurrentPlayerState=_EnumPlayerState._dialog;
}

} else if image_index==1 {room_goto(r_playable_exitcorridor_6th);
	
	
	with(oPlayer) {
	
x = 739;
y = 381;
alarm_set(0,60);
_CurrentPlayerState=_EnumPlayerState._dialog;
}
	
	
	}






break;



case r_playable_exitcorridor_Minus1:
break;





}

}








/*
if _type!=noone {

switch (_type) {

case "_up" :
image_index=0;
break;


case "_down" :
image_index=1;
break;


}
}


var _instanceplayerColl = place_meeting(x,y,oPlayer);

if _instanceplayerColl {
depth=oPlayer.depth+4;


}