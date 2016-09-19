///get_count(inc_dx, inc_dy, check_dx, check_dy, color_to_count)
var inc_dx = argument0; // -1, 0, 1 (Negative, None, Positive)
var inc_dy = argument1;
var cur_count = argument2;
var color = argument3;
var temp_count = 0;

for(var i = cur_count; i < global.check; i++) 
{
    global.dx += inc_dx;
    global.dy += inc_dy;

    if (global.dx >= 0) and (global.dx <= global.gWidth) and (global.dy >= 0) and (global.dy <= global.gHeight)
    {
        if global.grid[# global.dx, global.dy] != color
        {
            break;
        }
        else
        {
            temp_count++;
            add_win_array(i);
        }
    }
}

return temp_count;
