// Get Player Input
keyLeft = keyboard_check(ord("A")) || keyboard_check(vk_left);
keyRight = keyboard_check(ord("D")) || keyboard_check(vk_right);
keyUp = keyboard_check(ord("W")) || keyboard_check(vk_up);
keyDown = keyboard_check(ord("S")) || keyboard_check(vk_down);
keyActivate = keyboard_check_pressed(vk_space);

if (keyRight - keyLeft != 0) {
	inputDirection = point_direction(0, 0, keyRight - keyLeft, 0);
} else if (keyDown - keyUp != 0) {
	inputDirection = point_direction(0, 0, 0, keyDown - keyUp);
} else {
	inputDirection = point_direction(0, 0, 0, 0);
}

inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0);

// Movement
hSpeed = lengthdir_x(inputMagnitude * speedWalk, inputDirection);
vSpeed = lengthdir_y(inputMagnitude * speedWalk, inputDirection);

x += hSpeed;
y += vSpeed;