/// @description Insert description here
// You can write your code in this editor

enterLean = true;

if enterLean and keyboard_check(ord("E"))
{
	enteredLean = true;
	instance_change(oLeanMan, false);
	instance_destroy(other);
}