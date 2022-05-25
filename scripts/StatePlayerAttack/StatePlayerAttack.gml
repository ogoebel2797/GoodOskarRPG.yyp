// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StatePlayerAttack()
{
	//what does the state do?
	CheckCollisionsX();
	CheckCollisionsY();
	
	//animations for the state
	
	//conditions for leaving the state
	
	if (xDirection =0) & (haveGun = false) & (haveSword = false)
	{
		state = states.idle;
	}

	if (xDirection !=0) & (haveGun = false) & (haveSword = false)
	{
		state = states.walking;
	}

	if (xDirection = 0) & (haveGun = true) & (haveSword = false)
	{
		state = states.shoot;
	}
	
	if (xDirection !=0) & (haveGun = true) & (haveSword = false)
	{
		state = states.shootwalking;
	}
}
