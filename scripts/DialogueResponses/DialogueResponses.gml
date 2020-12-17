/// @arg _response

function DialogueResponses(_response){
	switch _response {
		case 0: break; 
		case 1: NewTextBox("You gave response A!", 0); break;
		case 2: NewTextBox("You gave response B! Any further response?", 0, ["3:Yes!", "0:No"]); break;
		case 3: NewTextBox("Thanks for your responses!", 0); break;
		case 4: NewTextBox("Tudo bem, aproveita o ano de bixo!", 0); break;
		case 5: NewTextBox("O desafio e quem consegue\ncomer 2 bandejoes mais rapido. Bora?", 0, ["6:Claro!", "7:Acho que vou passar..."]); break;
		case 6: NewTextBox("Boa! E so sair pelo Minerva!", 0); break;
		case 7: NewTextBox("Beleza, mas nao deixe de assistir la fora do Minerva", 0); break;
		default: NewTextBox("!!! Unexpected default case !!!", 0); break;
	}
}