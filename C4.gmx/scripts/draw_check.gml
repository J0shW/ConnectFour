///draw_check()
var draw = true;

if ds_grid_value_exists(global.grid, 0, 0, global.gWidth-1, global.gHeight-1, EMPTY)
{
    draw = false;
}

return draw;

