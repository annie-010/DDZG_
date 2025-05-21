if (keyboard_check_pressed(ord("B"))) {
    var msg = "";

    // Array con las claves en el orden original
    var ordered_keys = [
        "_isPlaying",
        "_firstSwitch", "_secondSwitch", "_thirdSwitch", "_fourthSwitch", "_fifthSwitch",
        "_sixthSwitch", "_seventhSwitch", "_eighthSwitch", "_ninthSwitch", "_tenthSwitch",
        "_eleventhSwitch", "_twelfthSwitch", "_thirteenthSwitch", "_fourteenthSwitch",
        "_fifteenthSwitch", "_sixteenthSwitch", "_seventeenthSwitch", "_eighteenthSwitch",
        "_nineteenthSwitch", "_twentiethSwitch"
    ];

    // Recorremos el array en orden y mostramos los valores
    for (var i = 0; i < array_length(ordered_keys); i++) {
        var key = ordered_keys[i];
        var value = variable_struct_get(_hevents_0, key);
        
        // Convertimos true/false a 1/0
        msg += key + ": " + string(value * 1) + " | ";
    }

    show_debug_message(msg);
}
