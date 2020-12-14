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
	
	// Interaction logic
	if (keyActivate) {
		// 1. Check for an entity to activate
		// 2. If there's nothing or there's no activation script - do nothing
		// 3. If there's something to activate, activate it
		// 4. If it's an NPC, make it face towards you
		
		var _activateX = lengthdir_x(10, direction);
		var _activateY = lengthdir_y(10, direction);
		activate = instance_place(x + _activateX, y + _activateY, pEntity);
			
		if (activate != noone && activate.entityActivateScript != -1) {
			ScriptExecuteArray(activate.entityActivateScript, activate.entityActivateArgs);
				
			if (activate.entityNPC){
				with (activate) {
					direction = point_direction(x, y, other.x, other.y);
					image_index = CARDINAL_DIR
				}
			}
		}
	}
	
	// Change to WalkState
	if (keyRun) {
		state = PlayerStateWalk;
	}
}