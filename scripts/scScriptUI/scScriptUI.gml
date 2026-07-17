// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function update(layer_name){
if (layer_get_visible(layer_name))
{
	
		layer_set_visible(layer_name, false);

}else{
	layer_set_visible(layer_name, true);
}

}



