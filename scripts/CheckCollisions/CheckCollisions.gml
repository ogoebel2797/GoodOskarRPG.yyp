// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckCollisionsX()

{
	CheckInputs();
	//Horizontal Movement
	xDirection = right - left;
	if (xDirection != 0)
	{
		image_xscale = xDirection;
	}

	xVector = xSpeed * xDirection;

	{
	
		if (place_meeting(x + xVector, y, oWall))
		{
			//check if 1 pixel to the left or right of us until we collide with oWall
			// !  means "not"
			while(!place_meeting(x + xVector, y, oWall))
				{
				//only move 1 pixel at a time until you hit a wall
				x = x + xDirection;
				}
				xVector = 0;
		}
	}
	
	if (place_meeting(x + xVector, y, oTurret))
	{
		//check if 1 pixel to the left or right of us until we collide with oWall
		// !  means "not"
		while(!place_meeting(x + xVector, y, oTurret))
			{
			//only move 1 pixel at a time until you hit a wall
			x = x + xDirection;
			}
			xVector = 0;
	}
	
//otherwise move normal
x = x + xVector;

}

function CheckCollisionsY()
{
	CheckInputs();
	
	{
	
		//Vertical Movement
		yDirection = down - up;
		yVector = ySpeed * yDirection;
	
		if (place_meeting(y + yVector, x, oWall))
			{
				//check if 1 pixel to the left or right of us until we collide with oWall
				// !  means "not"
				while(!place_meeting(y + yVector, x, oWall))
					{
					//only move 1 pixel at a time until you hit a wall
					y = y + yDirection;
					}
					yVector = 0;
	}
	
		if (place_meeting(y + yVector, x, oTurret))
			{
				//check if 1 pixel to the left or right of us until we collide with oWall
				// !  means "not"
				while(!place_meeting(y + yVector, x, oTurret))
					{
					//only move 1 pixel at a time until you hit a wall
					y = y + yDirection;
					}
					yVector = 0;
			}
		//otherwise move normal
		y = y + yVector;
	}
}