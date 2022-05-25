// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StatePlayerShootWalking()
{
	//what does the state do?
	CheckCollisionsX();
	CheckCollisionsY();
	
	//animations for the state
	
	//conditions for leaving the state
	
	if (xDirection !=0) & (haveGun = false) & (haveSword = false)
	{
		state = states.walking;
	}
	
	if (xDirection =0) & (haveGun = false) & (haveSword = false)
	{
		state = states.idle;
	}

	if (attack = true) & (haveGun = false) & (haveSword = true)
	{
		state = states.attack;
	}

	if (xDirection =0) & (haveGun = true) & (haveSword = false)
	{
		state = states.shoot;
	}
}
