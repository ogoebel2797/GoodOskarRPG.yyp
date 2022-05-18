if global.enterLeft
{
	oPlayer.x = global.xPos + ((room_width - 64) - sprite_width);
	oPlayer.y = global.yPos;
}

else if global.enterRight
{
	oPlayer.x = 100;
	oPlayer.y = 850;
}

else
{
	oPlayer.x = 100;
	oPlayer.y = 850;
}
