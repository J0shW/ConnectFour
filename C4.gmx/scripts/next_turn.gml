///next_turn

if draw_check()
{
    // Its a TIE   
    show_debug_message('TIE GAME'); 
}
else if !win_check(global.turn)
{
    // Switch Turns
    if global.turn = RED
    {   
        global.turn = YELLOW;  
    }
    else
    {
        global.turn = RED;
    }
    
    // Is next turn AI controlled?
    if (global.AI_Color = global.turn)
    {
        // Start AI turn 
        Level.alarm[1] = 1;
        show_debug_message('AI!');
    } 
}
else
{
    // WIN
    global.win = true;

    if global.turn = RED
    {
        global.red_wins++;
    }
    else
    {
        global.yellow_wins++;
    }

    win_draw();
    show_debug_message('End Game');
    instance_create(0,0,End_Controller);
}
