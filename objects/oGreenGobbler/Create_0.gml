/// @description Insert description here
// You can write your code in this editor

// how many pixels per frame you want our player to move
xSpeed = 5;
ySpeed = 5;

//what direction the player is moving. 1 = right, -1 = left, 0 = not moving at all {facing front???]
xDirection = 0;

yVector = 0;

//what direction the player is moving. 1 = up, -1 = down, 0 = not moving at all {facing front???]
yDirection = 0;

xVector = 0;

//coins and points

//invincibility
isInvincible = false;

//health points
hp = 8


//invincibility timer
invTimer = 2;

enteredShip = false;
dashing = false;
dashTimer = 0.1;

enum gstates
{
	gwalking,
	gdashing,
	gidle
}

state = gstates.gwalking;

state_array[gstates.gwalking] = StateGobblerWalking;
state_array[gstates.gdashing] = StateGobblerDashing;
state_array[gstates.gidle] = StateGobblerIdle;

sprite_array[gstates.gwalking] = sGreenGobblerWalking;
sprite_array[gstates.gdashing] = sGreenGobblerDashing;
sprite_array[gstates.gidle] = sGreenGobblerIdle;