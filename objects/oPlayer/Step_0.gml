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
	
if shoot
	{
		mouseX = mouse_x;
		mouseY = mouse_y;
		var bullet = instance_create_layer(x, y, "Instances", oPlayerProjectile)
		with (bullet)
	{
		speed = 6;
		direction = point_direction(x, y, oPlayer.mouseX, oPlayer.mouseY)
		// move_towards_point(oPlayer.mouseX,oPlayer.mouseY, speed);
	}
}
