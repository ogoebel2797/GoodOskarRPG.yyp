// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StatePlayerIdle()
{
	CheckInputs();
	CheckCollisionsY();
	
	if (xDirection !=0)
	{
		state = states.walking;
	}

	if (attack = true)
	{
		state = states.attack;
	}
	
	if (shooting = true)
	{
		state = states.shoot;
	}
}
