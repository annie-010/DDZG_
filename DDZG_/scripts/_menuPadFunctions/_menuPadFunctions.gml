// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function _ArrayListSelectablePad(argument0,argument1){
	
	
	
	
var _keyup,_keydown,_keyleft,_keyright,_keytest;

_keyup = keyboard_check_pressed(ord("W"));
_keydown = keyboard_check_pressed(ord("S"));
_keyleft = keyboard_check_pressed(ord("A"));
_keyright = keyboard_check_pressed(ord("D"));
_keytest = keyboard_check_pressed(ord("T"));
	var _mpos_ = argument0;
	var _arraytolenght = argument1;
	
	
	
	
if _keyup {  var _j = array_length(_arraytolenght)-1; ///show_debug_message("PROBANDO TECLA UP DESDE SCRIPT" + string(_mpos_) + string(_arraytolenght));
	
	if _mpos_=0 {_mpos_=_j; _keyup=false;} else if _mpos_>0 {_mpos_-=1; _keyup=false;}
} else if _keydown {var _j = array_length(_arraytolenght)-1; ///show_debug_message("PROBANDO TECLA DOWN DESDE SCRIPT" + string(_mpos_) + string(_arraytolenght) );
	
	if _mpos_=_j {_mpos_=0; _keydown=false;} else if _mpos_<_j {_mpos_+=1; _keydown=false;}}


if _keytest {show_debug_message("TEST" + string(_mpos_) + string(_arraytolenght) );}

	self._mpos=_mpos_;
	return _mpos_;		
}


function _DSListSelectablePad(argument0,argument1){
	
	
	
	
var _keyup,_keydown,_keyleft,_keyright,_keytest;

_keyup = keyboard_check_pressed(ord("W"));
_keydown = keyboard_check_pressed(ord("S"));
_keyleft = keyboard_check_pressed(ord("A"));
_keyright = keyboard_check_pressed(ord("D"));
_keytest = keyboard_check_pressed(ord("T"));
	var _mpos_ = argument0;
	var _dslisttolenght = argument1;
	
	
	
	
if _keyup {  var _j = ds_list_size(_dslisttolenght)-1; ///show_debug_message("PROBANDO TECLA UP DESDE SCRIPT" + string(_mpos_) + string(_arraytolenght));
	
	if _mpos_=0 {_mpos_=_j; _keyup=false;} else if _mpos_>0 {_mpos_-=1; _keyup=false;}
} else if _keydown {var _j = ds_list_size(_dslisttolenght)-1; ///show_debug_message("PROBANDO TECLA DOWN DESDE SCRIPT" + string(_mpos_) + string(_arraytolenght) );
	
	if _mpos_=_j {_mpos_=0; _keydown=false;} else if _mpos_<_j {_mpos_+=1; _keydown=false;}}


if _keytest {show_debug_message("TEST" + string(_mpos_) + string(_dslisttolenght) );}

	self._mpos=_mpos_;
	return _mpos_;		
}





























