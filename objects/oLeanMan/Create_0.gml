/// @description Insert description here
// You can write your code in this editor

// how many pixels per frame you want our player to move
xSpeed = 5;
ySpeed = 5;

//health points
hp = 8

//invincibility
isInvincible = false;

//invincibility timer
invTimer = 2;



enteredShip = false;
sliding = false;
slideTimer = 1;

enum lstates
{
	lwalking,
	lsliding,
	lidle
}

state = lstates.lwalking;

state_array[lstates.lwalking] = StateLeanWalking;
state_array[lstates.lsliding] = StateLeanSliding;
state_array[lstates.lidle] = StateLeanIdle;

sprite_array[lstates.lwalking] = sLeanManWalking;
sprite_array[lstates.lsliding] = sLeanManIdle;
sprite_array[lstates.lidle] = sLeanManIdle;