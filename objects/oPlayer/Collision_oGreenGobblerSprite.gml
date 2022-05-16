/// @description Insert description here
// You can write your code in this editor

enterGobbler = true;

if enterGobbler and keyboard_check(ord("E"))
{
	enteredGobbler = true;
	instance_change(oGreenGobbler, false);
	instance_destroy(other);
}