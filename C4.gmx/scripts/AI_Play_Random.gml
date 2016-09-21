///AI_Play_Random

// play randomly in a danger column
column = irandom(6);

while !start_drop(column)
{   
    column = irandom(6);    
}

global.grid[# global.grid_x, global.grid_y] = global.AI_Color;

// Place random disc
instance_create(get_btn_x(column), get_btn_y(column), Disc);
