// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateRun(){
	// Movement
	hSpeed = lengthdir_x(inputMagnitude * speedRun, inputDirection);
	vSpeed = lengthdir_y(inputMagnitude * speedRun, inputDirection);

	// Check collision and set set speed if not colliding
	PlayerCollision();

	// Update Sprite index
	var _oldSprite = sprite_index;
	if (inputMagnitude != 0) {
		direction = inputDirection;
		sprite_index = spriteRun;
	} else {
		sprite_index = spriteIdle;
	}

	if (_oldSprite != sprite_index) {
		localFrame = 0;
	}

	// Updating image index
	PlayerAnimateSprite();
	
	// Change to WalkState
	if (keyRun) {
		state = PlayerStateWalk;
	}
}