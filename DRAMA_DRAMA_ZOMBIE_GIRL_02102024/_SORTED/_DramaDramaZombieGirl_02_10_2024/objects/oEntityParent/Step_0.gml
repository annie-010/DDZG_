
	#region
// Verificar si la lista está vacía
if ds_list_empty(_effDsList) {
    for (var u_ = 0; u_ < array_length(_effArray); u_++) {
        if _effArray[u_]._state != false {
            ds_list_add(_effDsList, _effArray[u_]);
            ////("Valor añadido 235Pas");
        }
    }
} else {
    for (var u_ = 0; u_ < array_length(_effArray); u_++) {
        if _effArray[u_]._state != false {
            // Verificar si el valor ya está en la lista antes de agregarlo
            if ds_list_find_index(_effDsList, _effArray[u_]) == -1 {
                ds_list_add(_effDsList, _effArray[u_]);
                ////("Valor añadido 235Pas");
            }
        }
    }
}
	#endregion
	
	
	
	process_effects();
	
	
	
	
	
	
	
	
	
	var _dark = instance_place(x,y,odarksectionroom) 


	if _dark!=noone {
		if _dark.visible==true { 
			visible=false;
			} else if _dark.visible==false {
			visible=true;
			}
	}
	
	
	