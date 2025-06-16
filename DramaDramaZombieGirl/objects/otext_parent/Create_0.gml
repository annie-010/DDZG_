

_isdialogactive = false;///
_bg = noone;
typeDialog = noone;
num = 0;






_text[0] = "saki@@@@@@ Este texto aparecera cuando no se le haya dado un texto que mostrar. es un Debug?";
_switched=false;
_canexit=false;
alarm[0]=30;






//_text[1] = "robot@@@@@ (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1)";
//_text[2] = "npc1@@@@@@@ (_texto : 2) (_texto : 2) (_texto : 2) (_texto : 2) (_texto : 2) (_texto : 2) (_texto : 2) (_texto : 2) (_texto : 2) (_texto : 2) (_texto : 2) (_texto : 2) (_texto : 2) (_texto : 2)(_texto : 2) (_texto : 2) (_texto : 2) (_texto : 2) (_texto : 2) (_texto : 2) (_texto : 2) (_texto : 2) (_texto : 2) (_texto : 2) (_texto : 2) (_texto : 2) (_texto : 2) (_texto : 2) (_texto : 2) (_texto : 2) (_texto : 2) (_texto : 2) (_texto : 2) (_texto : 2) (_texto : 2) (_texto : 2) (_texto : 2) (_texto : 2) (_texto : 2)";
//_text[3] = "npc2@@@@@@@ (_texto : 3) (_texto : 3) (_texto : 3) (_texto : 3) (_texto : 3) (_texto : 3) (_texto : 3) (_texto : 3) (_texto : 3) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1) (_texto : 1)";





_hinit = 1;

_textbarlimit = 70;
_charlimit = 320;
_dialogtoshow = "";
_spdchartemp = 0;
_currentdrawingchar = 0;
_spdchardrawdefault = 1.5;
display_text = "test";
_stringcopy = "";
_spdchardraw = _spdchardrawdefault;

function _dialogSystem(_dialogtype, _dialogarray) {
	static _dialogpos = 0;
	static  _chindex = -1;
	
    var _textBoxpos = 664,

        _dialogarraylenght = array_length(_dialogarray),
        _ch = ["saki@@@@@@", "robot@@@@@","mimi@@@@@@", "coordinador", "npc2@@@@@@@" , "npc2@@@@@@@" , "" , "" , "" , ""],
		_actionkey = keyboard_check_pressed(ord("I")),
        _dialogstringlength = string_length(_dialogarray[_dialogpos]);
		
		var _spkportvoice=noone;
		if _spkportvoice==noone {
		
		switch(_chindex) {
			
			case 0: _spkportvoice=snd_ch_sakivoice;
			break;
			
			
			case 1: _spkportvoice=snd_ch_robotvoice;
			break;
			
			
			
			case 2: _spkportvoice=snd_ch_mimivoice;
			break;

			case 3: _spkportvoice=snd_ch_mimivoice;
			break;
			case 4: _spkportvoice=snd_ch_mimivoice;
			break;
			
			case 5: _spkportvoice=snd_ch_mimivoice;
			break;
			
			default: _spkportvoice=snd_ch_robotvoice;
			break;
			
		
		}
		
		
		}
		
		
		
		
		
		
		
		
		
		
		


    if (_bg == noone) {
        var path = working_directory + "Screens\\Screen_" + string(num++) + ".png";
        screen_save(path);
        _bg = sprite_add(path, 0, 0, 0, 0, 0);

        _isdialogactive = true;
    } 
	
	else if (_bg != noone) {

        draw_set_color(c_white);
		    if window_get_fullscreen()
			{draw_sprite_ext(_bg, 0, 0, 0,.8,.8,0,c_white,1); }
			else if !window_get_fullscreen() {draw_sprite_ext(_bg, 0, 0, 0,1,1,0,c_white,1);}
        draw_sprite(sprtextbox_0, 0, 0, 664);
	
	
			
		
		var _spkportspr;
				switch (_chindex) {
    case 0:
_spkportspr = spr_ch_saki_portrait;
draw_sprite(_spkportspr,0,48,726);
        break;
    case 1:
_spkportspr = spr_ch_robot_portrait;
draw_sprite(_spkportspr,1,48,726);
        break;
    case 2:
_spkportspr = spr_chtext_portraitBase_00; ///MIMI
draw_sprite(_spkportspr,1,48,726);
        break;
    case 3:
_spkportspr = spr_chtext_portraitBase_00;
draw_sprite(_spkportspr,0,48,726);
        break;
		

    case 4:

_spkportspr = spr_ch_saki_portrait;
draw_sprite(_spkportspr,0,48,726);
        break;
    case 5:
_spkportspr = spr_ch_robot_portrait;
draw_sprite(_spkportspr,1,48,726);
        break;
    case 6:
_spkportspr = spr_chtext_portraitBase_00;
draw_sprite(_spkportspr,1,48,726);
        break;
    case 7:
_spkportspr = spr_chtext_portraitBase_00;
draw_sprite(_spkportspr,1,48,726);
        break;

		
		
    default:
_spkportspr = spr_chtext_portraitBase_00;
draw_sprite(_spkportspr,1,48,726);

        break;
}
		
		
						
				
		
		
        if (_dialogpos >= 0 && _dialogpos < _dialogarraylenght) {

            // Asignar el texto del diálogo actual
            _dialogtoshow = _dialogarray[_dialogpos];

            // Procesa el texto carácter por carácter
            if ((_currentdrawingchar <=_dialogstringlength)) {
				

			 // Limitar la cantidad de caracteres a 10
            var _stringcopycompare = string_copy(_dialogtoshow,0,10);

            // Comparar _stringcopy con los elementos del array _ch
            _chindex = -1;
            for (var i = 0; i < array_length(_ch); i++) {
                if (string_copy(_ch[i], 0, 10) == _stringcopycompare) {
                    _chindex = i;
                    break;
                }
            }

				///show_debug_message("current drawing char : "+ string(_currentdrawingchar) + "   dialog string lenght : " + string(_dialogstringlength) + "  current dialogpos : " + string(_dialogpos));
				
				
				        if (_currentdrawingchar<_charlimit) {
							
            _spdchartemp++;
if (_spdchartemp >= _spdchardraw) {
    _currentdrawingchar++;
    _spdchartemp = 0;

    // Reproducir sonido solo si no está sonando
    if (!audio_is_playing(_spkportvoice)) {
        audio_play_sound(_spkportvoice, 1, false);
    }
}
	            // Formateo para dividir en líneas de acuerdo con _textbarlimit
            if string_length(_stringcopy) >_textbarlimit {
                var temp_text = "";
                for (var i = 1; i <= string_length(_stringcopy); i += _textbarlimit) {
                    var line = string_copy(_stringcopy, i, _textbarlimit);
                    temp_text += line + "#"; // "#" se convertirá en un salto de línea
                }
                display_text = string_hash_to_newline(temp_text);
            } else {
                display_text = _stringcopy;
            }
        

        // Dibuja el texto en la posición designada
        

			}} 
			
			
			else if _currentdrawingchar>_dialogstringlength {
		
	} 
	
	
	_stringcopy = string_copy(_dialogtoshow, 12, _currentdrawingchar); 
	draw_text(144, (_textBoxpos-16) + (50 * _hinit), display_text);
 }

}








if (_actionkey) && _canexit==true {
 if (_dialogpos <_dialogarraylenght) {
       
        _currentdrawingchar = 0; 
        _spdchartemp = 0; 
        _stringcopy = ""; 
        
        // Avanzar al siguiente diálogo
        _dialogpos++;
		///show_debug_message("current dialogpos: " + string(_dialogpos));
    }
}


    if (_dialogpos>=_dialogarraylenght) {
		_currentdrawingchar = 0; 
        _spdchartemp = 0; 
        _stringcopy = ""; 
		_dialogpos=0;
		_chindex = -1;
        _isdialogactive = false;
        _actionkey = false;
        instance_activate_all();
        oPlayer._CurrentPlayerState = _EnumPlayerState._stand;
        instance_destroy();
     }
}
 oPlayer._CurrentPlayerState = _EnumPlayerState._dialog; 
