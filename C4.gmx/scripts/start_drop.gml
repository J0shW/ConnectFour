///start_drop(column_id)

var column_id = argument0;
var row_id    = 0;
var found     = false;
var fail      = false;

// Find its new position
while (!found and !fail and row_id < global.gHeight)
{ 
    tile = global.grid[# column_id, row_id];
    
    switch(tile) 
    {
        case EMPTY  :   if (global.grid[# column_id, row_id + 1] != EMPTY)
                            or (row_id + 1 = global.gHeight) 
                        {
                            found = true;
                        }
                        else
                        {
                            row_id++;
                        }
                        break;
                        
        case RED    :   fail = true; 
                        break;
                        
        case YELLOW :   fail = true;
                        break;
    }  
}

if found
{
    // Found, place disc here
    set_disc_x(column_id);
    set_disc_y(row_id);
    
    return true
}
else
{
    // Fail, this row is full
    return false
}
