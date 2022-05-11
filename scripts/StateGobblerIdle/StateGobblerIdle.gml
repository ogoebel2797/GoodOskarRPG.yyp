// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StateGobblerIdle()
{
	CheckInputs();
	CheckCollisionsY();
	
	if (xDirection !=0)
	{
		state = gstates.gwalking;
	}
	
	if (dashing)
	{
		state = gstates.gdashing;
	}
}