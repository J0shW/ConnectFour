///AI_Bad_Columns_Plus

// Don't play somewhere that will cause P1 to win
// Find Danger columns (all the columns we can't play in)
for(var i=0; i < global.gWidth; i++)
{
    if start_drop(i)
    {
        // Set AI place in grid
        var AI_x = global.grid_x;
        var AI_y = global.grid_y;
        global.grid[# AI_x, AI_y] = global.AI_Color;
        
        // Loop through each possible P1 move
        for(var j=0; j < global.gWidth; j++)
        {
            if start_drop(j)
            {
                // Set P1 place in grid
                var P1_x = global.grid_x;
                var P1_y = global.grid_y;
                global.grid[# P1_x, P1_y] = global.P1_Color;
                
                if win_check(global.P1_Color)
                {
                    // Found a winning space for P1
                    // Add it to Bad columns array
                    if !ds_list_contains(ds_Bad, i)
                    {
                        ds_list_add(ds_Bad, i); 
                        ds_list_add(ds_Depth, rDepth);
                    }
                }
                else
                {
                    if rDepth < max_rDepth
                    {
                        rDepth++;
                        AI_Bad_Columns_Plus();    
                    }
                }
                
                // Set P1 place in grid back to empty
                global.grid[# P1_x, P1_y] = EMPTY;
            }
        }
        
        // Set P1 place in grid back to empty
        global.grid[# AI_x, AI_y] = EMPTY;
    }
    else if rDepth = 0
    {
        // This should only happen at the top level
        // If the row is full add it to the bad array
        if !ds_list_contains(ds_Bad, i)
        {
            ds_list_add(ds_Bad, i); 
            ds_list_add(ds_Depth, rDepth);
        }    
    }
}
