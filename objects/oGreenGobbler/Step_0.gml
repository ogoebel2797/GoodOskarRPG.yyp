/// @description Insert description here
// You can write your code in this editor

/// @description movement code

//code that runs every frame

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

script_execute(state_array[state]);
sprite_index = sprite_array[state];

if global.dash
{
	global.dashing = true;
}

if global.dashing
{
	dashTimer -= 1/room_speed;
	if dashTimer <= 0
	{
		global.dashing = false;
		dashTimer = 0.3;
	}
	if (!place_empty(x + xVector, y))
	{
	xVector = 0;
	}
	if (!place_empty(y + yVector, x))
	{
	yVector = 0;
	}
	//otherwise move fast
	if omniDirection = -2
	{
		y = y - 10;
	}
	if omniDirection = 2
	{
			y = y + 10;
	}
	//otherwise move fast
	if omniDirection = -1
	{
		x = x - 10;
	}
	if omniDirection = 1
	{
		x = x + 10;
	}
}
