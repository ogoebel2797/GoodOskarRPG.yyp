// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StateLeanIdle()
{
	CheckInputs();
	CheckCollisionsY();
	
	if (xDirection !=0)
	{
		state = lstates.lwalking;
	}

	if (sliding)
	{
		state = lstates.lsliding;
	}
}
