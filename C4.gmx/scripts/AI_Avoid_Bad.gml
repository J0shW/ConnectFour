///AI_Avoid_Bad

// play randomly, but not in a danger column
column = irandom(6);

while !start_drop(column) or ds_list_contains(ds_Bad, column)
{   
    column = irandom(6);    
}

global.grid[# global.grid_x, global.grid_y] = global.AI_Color;

// Place random disc
instance_create(get_btn_x(column), get_btn_y(column), Disc);
