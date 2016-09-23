///AI_Avoid_Bad
var bigDepth = 0;

// Get furthest depth
for(var i=0; i<ds_list_size(ds_Depth); i++)
{
    if ds_list_find_value(ds_Depth, i) > bigDepth
    {
        bigDepth = ds_list_find_value(ds_Depth, i);
    }    
}

// play randomly, but not in a danger column at the furthest depth
column = irandom(6);

while !start_drop(column) or !ds_list_contains_depth(ds_Bad, column, bigDepth)
{   
    column = irandom(6);    
}

global.grid[# global.grid_x, global.grid_y] = global.AI_Color;

// Place random disc
instance_create(get_btn_x(column), get_btn_y(column), Disc);
