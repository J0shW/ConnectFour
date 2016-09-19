///draw_frame
global.xoffset = (room_width - (global.cSize * global.gWidth)) /2;
global.yoffset = (room_height - (global.cSize * global.gHeight));

// Add the tile sprites
for (var yy = 0; yy < global.gHeight; yy++)
{
    for (var xx = 0; xx < global.gWidth; xx++)
    {
        tile = global.grid[# xx, yy];
        tx   = ((xx) * global.cSize) + global.xoffset;
        ty   = ((yy) * global.cSize) + global.yoffset;
        
        tile_add(bg_frame, 0, 0, global.cSize, global.cSize, tx, ty, -10);
    }
}
