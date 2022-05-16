/// @description Insert description here
// You can write your code in this editor//display current coin count
draw_text(64 , 64, "Coins: " +string(global.coins));
draw_text(64 , 96, "Points: " +string(global.points));
draw_text(64 , 128, "HP: " +string(global.hp));
draw_text(64 , 160, "Level Time Remaining: " +string(floor(levelTimer)));
draw_text(64 , 192, "xPos: " + string(global.xPos));
draw_text(64 , 224, "yPos: " + string(global.yPos));
draw_text(64 , 244, "Enter Left: " + string(global.enterLeft));
draw_text(64 , 264, "Enter Right: " + string(global.enterRight));
draw_text(64 , 284, "Transition Timer: " + string(global.transitionTimer));
draw_text(64 , +300, "Transition: " + string(global.isTransitioning));
