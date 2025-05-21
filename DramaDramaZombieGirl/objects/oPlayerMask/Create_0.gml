_owner=noone;
_isplayerhurtred=false;



function _check_z_collision(_obj1, _obj2) {
    // Obtener los valores de z y colheight del primer objeto (personaje)
    var obj1_z = _obj1.z;
    var obj1_z_top = obj1_z - _obj1._colheight; // Límite superior del personaje

    // Obtener los valores de z y colheight del segundo objeto (bala de cañón)
    var obj2_z = _obj2.z;
    var obj2_z_top = obj2_z - _obj2._colheight; // Límite superior de la bala

    // Comprobar colisión en el eje z (con eje invertido)
    return ((obj2_z <= obj1_z && obj2_z >= obj1_z_top) || (obj2_z_top <= obj1_z && obj2_z_top >= obj1_z_top));
}

