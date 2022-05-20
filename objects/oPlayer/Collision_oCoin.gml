//when I collide with a ocoin, destroy coin and boost points
array_push(oHUD.objectsDestroyed, other.objectID);
instance_destroy(other);
global.coins +=1;
global.points +=100;