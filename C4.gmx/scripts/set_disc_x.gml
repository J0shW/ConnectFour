///set_disc_x(column_id)

var column = argument0;

global.grid_x = column;
global.disc_x = global.xoffset + (global.cSize * column);
