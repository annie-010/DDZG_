/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

 _iluminar=instance_place(x,y,oEntity);


if _iluminar!=noone && _iluminar._canbesee==true 
{
	visible=0; image_blend=c_red; show_debug_message("Luz Debería ser invisible");} else {visible=1;}

var subject = max(oPlayer); ///,oTextBox_test_01



if instance_exists(subject) && _iluminar==noone {

var  _distance = point_distance(x,y,subject.x, subject.y-subject.z-48);


if _distance>rangeLight {visible=1;} else {visible=0;}


}































