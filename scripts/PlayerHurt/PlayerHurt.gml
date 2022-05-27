// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//trigger temporary invincibility and get damaged
function PlayerHurt()
{
	if(!oPlayer.isInvincible)
	{
		oPlayer.isInvincible = true;
		alarm_set(0,2*room_speed);
		global.hp --;
		if (global.hp < 1)
		{
			PlayerDeath();
		}
	}

}

//restart level for player death
function PlayerDeath()
{
	oHUD.objectsDestroyed = [];
	global.createdObjectID = 0;
	oHUD.levelTimer = 200;
	global.hp = 5;
	global.row = 0;
	global.col = 0;
	instance_change(oPlayer, false);
	instance_destroy(other);
	room_goto(asset_get_index("r" + string(global.col) + string(global.row)));
}