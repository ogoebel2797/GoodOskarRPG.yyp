/// @description Insert description here
// You can write your code in this editor

if (isInvincible)
{
	invTimer -= 1/room_speed;
	if (invTimer < 0)
	{
		invTimer = 0.5;
		isInvincible = false;
	}
}

turnTimer -= 1/room_speed;
if (invTimer < 0)
{
	turnTimer = 2.5;
	yDirection = -yDirection
}
yVector = ySpeed * yDirection

if (place_meeting(y + yVector, x, oWall))
	{
		yDirection = -yDirection;
		turnTimer = 2.5;
	}
	
	if (place_meeting(y + yVector, x, oPlayer))
	{
		yDirection = -yDirection;
		turnTimer = 2.5;
	}

y = y + yVector;