/// @arg _message
/// @arg _background
/// @arg [_responses]
function NewTextBox(_message, _background, _responses){
	var _obj;
	
	if (instance_exists(oText)) {
		_obj = oTextQueued;
	} else {
		_obj = oText;
	}
	
	with instance_create_layer(0, 0, "Instances", _obj) {
		message = _message;
		if (instance_exists(other)) {
			originInstance = other.id;
		} else {
			originInstance = noone;
		}
		
		if (_background != undefined) {
			background = _background;
		} else {
			background = 0;
		}
		
		if (_responses != undefined) {
			// Trim markers from response
			responses = _responses;
			for (var i = 0; i < array_length(_responses); i++){
				var _markerPosition = string_pos(DIALOG_MARKER, responses[i]);
				responseScripts[i] = string_copy(responses[i], 1, _markerPosition - 1);
				responseScripts[i] = real(responseScripts[i]);
				responses[i] = string_delete(responses[i], 1, _markerPosition);
			}
			show_debug_message("Response Scripts");
			show_debug_message(responseScripts);
		} else {
			responses = [-1];
			responseScripts = [-1];
		}
	}
	
	with (oPlayer) {
		if (state != PlayerStateLocked) {
			lastState = state;
			state = PlayerStateLocked;
		}
	}
}