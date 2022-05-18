/// @description creating variables
global.xPos = x;
global.yPos = y;
global.isTransitioning = false;
global.transitionTimer = 1;
global.enterRight = false;
global.enterLeft = false;
global.col = 0;
global.row = 0;

//code that runs one when oPlayer is created

// how many pixels per frame you want our player to move
xSpeed = 4;
ySpeed = 4;

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
global.hp = 6

//level timer
levelTimer = 100;

//invincibility timer
invTimer = 2;

omniDirection = 0;

enterGobbler = false;

mouseX = mouse_x;
mouseY = mouse_y;

hookActive = false;
haveHook = false;
haveSword = false;
haveGun = false;

enteredShip = false;
enteredGobbler = false;
enteredLean = false;

dashing = false;
dashTimer = 0.3;

attack = false;
shooting = false;

enum states
{
	walking,
	attack,
	idle,
	shoot,
	shootwalking
}

state = states.idle;

state_array[states.walking] = StatePlayerWalking;
state_array[states.attack] = StatePlayerAttack;
state_array[states.idle] = StatePlayerIdle;
state_array[states.shoot] = StatePlayerShoot;
state_array[states.shootwalking] = StatePlayerShootWalking;

sprite_array[states.walking] = sPlayerWalking;
sprite_array[states.attack] = sPlayerAttackSlash;
sprite_array[states.idle] = sPlayerIdle;
sprite_array[states.shoot] = sPlayerShoot;
sprite_array[states.shootwalking] = sPlayerShootWalking;
