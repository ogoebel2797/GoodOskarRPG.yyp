/// @description Insert description here
// You can write your code in this editor
enterShip = true;

if enterShip and keyboard_check(ord("E"))
{
	enteredShip = true;
	instance_change(oSpaceship, false);
	instance_destroy(other);
}