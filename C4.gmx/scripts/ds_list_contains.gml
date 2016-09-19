///ds_list_contains(list, value_to_find)
var list = argument0;
var item = argument1;
var found = false;

for(var i=0; i < ds_list_size(list); i++)
{
    if ds_list_find_value(list, i) = item
    {
        found = true;
        break;
    }
}

return found;
