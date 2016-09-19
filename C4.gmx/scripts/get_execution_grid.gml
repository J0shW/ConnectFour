///get_execution_grid

// Create execution grid

// 0 = FLOOR
// 1 = WALL
// 9 = START

items = noone;
cw    = 32; // Width of cells
switch(Controller.level)
{
    case 1: items = '0,0,0,0,0,
                     0,1,1,1,0,
                     0,2,1,0,0,
                     1,1,1,0,1,
                     0,0,0,0,9'; // Layout of the level
            ew    = 5; // Level width
            eh    = 5; // Level height
            break;
            
    case 2: items = '0,0,0,1,0,
                     0,0,1,1,0,
                     1,0,0,0,0,
                     0,0,1,0,0,
                     0,0,0,0,9';
            ew    = 5;
            eh    = 5;
            break;
            
    case 3: items = '0,0,0,0,0,
                     0,0,0,0,0,
                     0,0,0,0,0,
                     0,0,0,0,0,
                     0,0,0,0,0';
            ew    = 5;
            eh    = 5;
            break;
}

e_grid = ds_grid_create(ew, eh);
ds_grid_clear(e_grid, FLOOR);

snum = '';
gx   = 0;
gy   = 0;
for (var i = 1; i <= string_length(items); i++)
{ 
    if (string_char_at(items, i) = ',' or i == string_length(items))
    {
        if (i == string_length(items))
        {
            snum += string_char_at(items, i);    
        }    
    
        // Set the value in the grid
        ds_grid_set(e_grid, gx, gy, real(snum)); 
        snum = '';
    
        // Then increase our x,y position in the grid
        if (gx+1 > ew-1)
        {
            gx = 0;
            gy++;
        }
        else
        {
            gx++;
        }       
    }
    else
    {
        snum += string_char_at(items, i);
    }    
}


// Add the walls
/*for (var yy = 1; yy < height-1; yy++)
{
    for (var xx = 1; xx < width-1; xx++)
    {
        if (grid[# xx, yy] == FLOOR)
        {   
            //Check for walls
            if (grid[# xx+1, yy] != FLOOR) grid[# xx+1, yy] = WALL;
            if (grid[# xx-1, yy] != FLOOR) grid[# xx-1, yy] = WALL;
            if (grid[# xx, yy+1] != FLOOR) grid[# xx, yy+1] = WALL;
            if (grid[# xx, yy-1] != FLOOR) grid[# xx, yy-1] = WALL;
        }
    }
}*/
