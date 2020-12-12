state = PlayerStateWalk;

if(room == ROOM_MAIN){
	collisionMap = layer_tilemap_get_id(layer_get_id("Collision"));
}

image_speed = 0;
hSpeed = 0;
vSpeed = 0;
speedWalk = 1.0;
speedRun = 2.0;

spriteWalk = sPlayableCharacterWalk;
spriteRun = sPlayableCharacterRun;
spriteIdle = sPlayableCharacter;
localFrame = 0;
