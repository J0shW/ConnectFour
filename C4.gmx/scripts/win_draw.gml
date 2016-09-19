///win_draw
var xx = 0;
var yy = 0;

// Create flashing circles around the winning spaces
for (i = 0; i < array_length_1d(global.win_x); i++)
{
    xx = global.xoffset + (global.cSize * global.win_x[i]);
    yy = global.yoffset + (global.cSize * global.win_y[i]);

    instance_create(xx, yy, circle);    
}
