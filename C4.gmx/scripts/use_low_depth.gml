///use_low_depth(column, depth)
var column = argument0;
var idepth = argument1;

for(var i=0; i < ds_list_size(ds_Bad); i++)
{
    if ds_list_find_value(ds_Bad, i) = column
    {
        if ds_list_find_value(ds_Depth, i) > idepth
        {
            // set depth in ds_Depth to the lower value, iDepth
            ds_list_replace(ds_Depth, i, idepth);
            break;
        }
    }
}
