/// @arg _response

function DialogueResponses(_response){
	switch _response {
		case 0: break; 
		case 1: NewTextBox("You gave response A!", 0); break;
		case 2: NewTextBox("You gave response B! Any further response?", 0, ["3:Yes!", "0:No"]); break;
		case 3: NewTextBox("Thanks for your responses!", 0); break;
		default: NewTextBox("!!! Unexpected default case !!!", 0); break;
	}
}