if global.enterLeft
{
	oPlayer.x = global.xPos + ((room_width - 64) - sprite_width);
	oPlayer.y = global.yPos;
}

else if global.enterRight
{
	oPlayer.x = 31;
	oPlayer.y = 671
}

else
{
	oPlayer.x = 31;
	oPlayer.y = 671;
}
