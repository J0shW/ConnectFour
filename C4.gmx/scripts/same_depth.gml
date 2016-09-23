///same_depth(depth)

//check if all of the values in ds_Depth are 0
var dpth = argument0;
var same = true;

for (var i=0; i < ds_list_size(ds_Depth); i++)
{
    if ds_list_find_value(ds_Depth, i) != dpth
    {
        same = false;
    }    
}

return same;


