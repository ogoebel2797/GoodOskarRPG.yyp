// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StatePlayerIdle()
{
	CheckInputs();
	CheckCollisionsY();
	
	if (xDirection !=0) & (haveGun = false) & (haveSword = false)
	{
		state = states.walking;
	}

	if (attack = true) & (haveGun = false) & (haveSword = true)
	{
		state = states.attack;
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
