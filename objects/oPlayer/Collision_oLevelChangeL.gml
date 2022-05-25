/// @description Insert description here
// You can write your code in this editor
if (!global.isTransitioning)
{
	global.isTransitioning = true;
	global.enterLeft = true;
	
	if global.enterLeft
	{
		global.createdObjectID = 0;
		global.col = global.col - 1;
		room_goto(asset_get_index("r" + string(global.col) + string(global.row)));
	}
}
