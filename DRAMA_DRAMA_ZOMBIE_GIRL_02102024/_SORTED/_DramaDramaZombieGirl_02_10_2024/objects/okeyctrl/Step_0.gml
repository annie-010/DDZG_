if (KEY_ALT && KEY_ENTER) {
    // Alterna el estado de pantalla completa
    if (window_get_fullscreen()) {
        window_set_fullscreen(false); // Sale del modo pantalla completa
    } else {
        window_set_fullscreen(true); // Entra en el modo pantalla completa
    }
}


if KEY_GAME_RESTART {
game_restart();
}
//if KEY_ROOM_RESTART {
//room_restart();
//}
if KEY_GAME_END {
game_end();
}


/*
KEY_GAME_RESTART keyboard_check_pressed(ord("R"))
KEY_ROOM_RESTART keyboard_check_pressed(ord("T"))
KEY_GAME_END keyboard_check_pressed(vk_escape)
