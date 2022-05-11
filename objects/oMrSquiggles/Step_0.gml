/// @description Insert description here
// You can write your code in this editor

xDirection = sign(oPlayer.x - x);
xVector = xSpeed * xDirection;

if (abs(oPlayer.x - x) < 128)
{
	x = x + xVector
}

yDirection = sign(oPlayer.y - y);
yVector = ySpeed * yDirection;

if (abs(oPlayer.y - y) < 128)
{
	y = y + yVector
}
