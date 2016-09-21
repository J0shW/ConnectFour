///AI_Win_Check
var found  = false;

for(var i=0; i < global.gWidth; i++)
{
    if start_drop(i)
    {
        // Check for AI win
        global.grid[# global.grid_x, global.grid_y] = global.AI_Color;
        if win_check(global.AI_Color)
        {
            // Found a winning space
            found = true;
            column = i;
            break;
        } 
        else
        {
            // Check for player 1 win
            global.grid[# global.grid_x, global.grid_y] = global.P1_Color;    
            if win_check(global.P1_Color)
            {
                // Found a winning space
                // Take it to prevent P1 from winning
                global.grid[# global.grid_x, global.grid_y] = global.AI_Color; 
                found = true;
                column = i;
                break;
            }
        
            // Not a winning space, set it back to empty
            global.grid[# global.grid_x, global.grid_y] = EMPTY;   
        } 
    }  
}

return found;

