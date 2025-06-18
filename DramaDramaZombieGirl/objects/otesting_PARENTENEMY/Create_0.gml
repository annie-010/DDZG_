/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
function _mpgrid_navigation3d(_rangedist,_rangez) {
	var _rangepost,_cellsize;
	_cellsize = 32;
	_rangepost = ((floor(_rangedist/32))/2)+(2);
var _grid = mp_grid_create(x-(_rangepost * _cellsize ),y-(_rangepost *_cellsize),_rangepost,_rangepost,32,32);


return _grid;

}
// Inherit the parent event
event_inherited();

