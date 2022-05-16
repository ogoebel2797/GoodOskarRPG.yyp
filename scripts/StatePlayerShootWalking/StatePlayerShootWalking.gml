// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StatePlayerShootWalking()
{
	//what does the state do?
	CheckCollisionsX();
	CheckCollisionsY();
	
	//animations for the state
	
	//conditions for leaving the state
	
	if (xDirection !=0)
	{
		state = states.walking;
	}
	
	if (xDirection =0)
	{
		state = states.idle;
	}

	if (attack = true)
	{
		state = states.attack;
	}

	if (haveGun = true)
	{
		state = states.shoot;
	}
}
