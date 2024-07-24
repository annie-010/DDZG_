if (KEY_ALT && KEY_ENTER) {
    // Alterna el estado de pantalla completa
    if (window_get_fullscreen()) {
        window_set_fullscreen(false); // Sale del modo pantalla completa
    } else {
        window_set_fullscreen(true); // Entra en el modo pantalla completa
    }
}