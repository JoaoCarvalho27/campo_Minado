extends PopupDialog

var Altura
var Minas
var Largura


#funcao que vai dar valor as variaveis que vamos usar no jogo , dadas pelo input do jogador 
func Start_game():
	Altura=get_node("Menu/opcoes/dificuldade/Altura/SpinBox").value()
	Minas=get_node("Menu/opcoes/dificuldade/nMinas/SpinBox").value()
	Largura=get_node("Menu/opcoes/dificuldade/Largura/SpinBox").value()
	novo_jogo(Altura,Largura,Minas)
	


		
	
	
	
	
	
	
	
	