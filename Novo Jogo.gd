extends PopupDialog

var Altura
var Minas
var Largura



func Start_game():
	Altura=get_node("Menu/opcoes/dificuldade/Altura/SpinBox").value()
	Minas=get_node("Menu/opcoes/dificuldade/nMinas/SpinBox").value()
	Largura=get_node("Menu/opcoes/dificuldade/Largura/SpinBox").value()
	novo_jogo(Altura,Largura,Minas)
	


		
	
	
	
	
	
	
	
	