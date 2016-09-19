///win_check
var color    = argument0;
var temp_win = false;
var dir      = 'none';

// Check Vertical Down
if !temp_win
{
    global.dx = global.grid_x;
    global.dy = global.grid_y;
    
    clear_win_array();
    add_win_array(0);
    
    global.count = 1;
    global.count += get_count(0,1, global.count, color);
    
    if global.count >= global.check
    {
        temp_win = true;
        dir = 'Vertical';
    }
}

// Horizontal Check
if !temp_win
{
    global.dx = global.grid_x;
    global.dy = global.grid_y;
    
    clear_win_array();
    add_win_array(0);
    
    global.count = 1;
    
    global.count += get_count(1,0, global.count, color);
    
    global.dx = global.grid_x;
    global.dy = global.grid_y;
    
    global.count += get_count(-1,0, global.count, color);

    // Add Right and Left
    if global.count >= global.check
    {
        temp_win = true;
        dir = 'Horizontal';
    }
}  

// Diagonal Top Left to Bottom Right '\'
if !temp_win
{
    global.dx = global.grid_x;
    global.dy = global.grid_y;
    
    clear_win_array();
    add_win_array(0);
    
    global.count = 1;
    
    global.count += get_count(-1,-1, global.count, color);
    
    global.dx = global.grid_x;
    global.dy = global.grid_y;
    
    global.count += get_count(1,1, global.count, color);

    // Add Right and Left
    if global.count >= global.check
    {
        temp_win = true;
        dir = 'Diagonal \ ';
    }
} 

// Diagonal Top Right to Bottom Left '/'
if !temp_win
{
    global.dx = global.grid_x;
    global.dy = global.grid_y;
    
    clear_win_array();
    add_win_array(0);
    
    global.count = 1;
    
    global.count += get_count(1,-1, global.count, color);
    
    global.dx = global.grid_x;
    global.dy = global.grid_y;

    global.count += get_count(-1,1, global.count, color);

    // Add Right and Left
    if global.count >= global.check
    {
        temp_win = true;
        dir = 'Diagonal / ';
    }
} 

// Win check
if temp_win
{
    show_debug_message('WIN!' + dir);
    return true;
}
else
{
    return false;
}

