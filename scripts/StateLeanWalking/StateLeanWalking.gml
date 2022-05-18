// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StateLeanWalking()
{
	//what does the state do?
	CheckCollisionsX();
	CheckCollisionsY();
	
	//animations for the state
	
	//conditions for leaving the state
	
	if (xDirection =0)
	{
		state = lstates.lidle;
	}

	if (sliding)
	{
		state = lstates.lsliding;
	}
}
