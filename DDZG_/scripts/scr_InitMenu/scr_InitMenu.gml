function scr_MenuInit() 


{
	switch (room) 
	{
		
		case r_test_menu_00:
				switch (mpos)
	{ 
	     case 0:	///COMENZAR EL JUEGO
		 room_goto(r_2doFloor); 

			   break;

	     case 1: ///OPCIONES 
		 room_goto(r_test_optionsmenu_00);
				break;
	     case 2: ///SALIR DEL JUEGO
		 game_end(0);
		 break;
		 
		 
		 }
	
		
		break;
		
		
		
		case r_test_optionsmenu_00:
		
		switch (mpos)
	{ 
	     case 0:	///CONFIGURAR SONIDO
		 room_goto(r_test_menu_00); 

			   break;

	     case 1: ///CONFIGURAR BOTONES
		 room_goto(r_test_menu_00);
				break;
	     case 2: ///REGRESAR AL MENU PRINCIPAL
		 room_goto(r_test_menu_00);
		 break;
		 
		 
		 }
	
		
		break;
		
	
	}
	
	
	
	


	
}