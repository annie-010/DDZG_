alarm_set(0,60);

_msg=noone;
_msg0=noone;
_msg1=noone;
_msg2=noone;
_msg3=noone;
_msg4=noone;
_msg5=noone;
_msg6=noone;
_msg7=noone;
_canexit=false;


_type = noone;
_uniquetype=noone;
///GIFT SECTION///
_gifttype = noone;
_giftamount = noone;
_gift = noone;
_askforobjet=noone;

visible=false;

function has_key_required(_key_name) {
    if instance_exists(oPlayerMenu) {
        var menu = instance_find(oPlayerMenu, 0);

        // Rellenar la lista si está vacía
        if ds_list_empty(menu._invkeyDsList) {
            for (var i = 0; i < array_length(menu.invkey_array); i++) {
                var key = menu.invkey_array[i];
                if !is_undefined(key) && key._cantidad > 0 {
                    ds_list_add(menu._invkeyDsList, key);
                }
            }
        }

        // Mostrar contenido de la lista
        show_debug_message("🔍 Contenido de _invkeyDsList:");
        for (var j = 0; j < ds_list_size(menu._invkeyDsList); j++) {
            var itm = menu._invkeyDsList[| j];
            show_debug_message(" - " + string(itm._Name) + " x" + string(itm._cantidad));
        }

        // Buscar si se encuentra el objeto deseado
        for (var i = 0; i < ds_list_size(menu._invkeyDsList); i++) {
            var item = menu._invkeyDsList[| i];
            if item._Name == _key_name && item._cantidad > 0 {
                return true;
            }
        }
    }

    return false;
}
