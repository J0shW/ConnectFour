///ds_list_contains_depth(list, value_to_find, depth)
var list = argument0;
var item = argument1;
var idepth = argument2;
var found = false;

for(var i=0; i < ds_list_size(list); i++)
{
    if ds_list_find_value(list, i) = item
    {
        if ds_list_find_value(ds_Depth, i) = idepth
        {
            found = true;
            break;
        }
    }
}

return found;
