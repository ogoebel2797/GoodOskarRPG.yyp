/// @description Insert description here
// You can write your code in this editor

if keyboard_check_pressed(vk_shift)
{
	instance_change(oPlayer, false);
}



global.xPos = x;
global.yPos = y;

if global.isTransitioning
{
	global.transitionTimer -= 1/room_speed;
	if global.transitionTimer <=0
	{
		global.enterLeft = false;
		global.enterRight = false;
		global.isTransitioning = false;
		global.transitionTimer = 1;
	}
}

if haveHook
{
	if (mouse_check_button_pressed(mb_right))
	{
		mouseX = mouse_x;
		mouseY = mouse_y;
		if (place_meeting(mouseX, mouseY, oWall))
		{
			hookActive = true;
		}
	}

	if hookActive
	{
		x += (mouseX - x) * 0.1;
		y += (mouseY - y) * 0.1;
	}

	if (mouse_check_button_released(mb_right))
	{
		hookActive = false;
	}
}

if (mouse_check_button_pressed(mb_left))
	{
		mouseX = mouse_x;
		mouseY = mouse_y;
		var bullet = instance_create_layer(x, y, "Instances", oSpaceshipProjectile)
		with (bullet)
	{
		speed = 6;
		direction = point_direction(x, y, oPlayer.mouseX, oPlayer.mouseY)
		// move_towards_point(oPlayer.mouseX,oPlayer.mouseY, speed);
	}
}

yDirection = down - up;
yVector = 4 * yDirection;
xDirection = right - left;
xVector = xSpeed * xDirection;

//keyboard check and imputs
right = keyboard_check(ord("D"));
left = keyboard_check(ord("A"));
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));

if left
{
	omniDirection = -1;
}

if right
{
	omniDirection = 1;
}

if up
{
	omniDirection = -2;
}

if down
{
	omniDirection = 2;
}

//Horizontal Movement
xDirection = right - left;
xVector = xSpeed * xDirection;

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

else
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

//Vertical Movement
yDirection = down - up;
yVector = ySpeed * yDirection;

//check to see if there is a wall, and if there is, stop movement, if there isn't continue movement

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

else
{
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