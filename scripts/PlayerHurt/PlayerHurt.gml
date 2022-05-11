// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//trigger temporary invincibility and get damaged
function PlayerHurt()
{
	if(!oPlayer.isInvincible)
	{
		oPlayer.isInvincible = true;
		alarm_set(0,2*room_speed);
		oPlayer.hp --;
		if (oPlayer.hp < 1)
		{
			PlayerDeath();
		}
	}

}

//restart level for player death
function PlayerDeath()
{
	oHUD.levelTimer = 100;
	room_goto(asset_get_index("r" + string(global.col) + string(global.row)));
}