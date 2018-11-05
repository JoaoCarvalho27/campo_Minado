extends PanelContainer

var TamanhoTabuleiro = Vector2(10,10)
var numeroMinas = 15
var blocos_carregados = 0

func _ready():
	get_node('inicio/info/countMinas/valor').set_text(str(numeroMinas))
	get_node("inicio/info/novo")
	novo_jogo(10,10,10)
	
#gera o tabuleiro com os inputs dados pelo jogador
func novo_jogo(Altura,Largura,Minas):
	TamanhoTabuleiro= Vector2(Largura,Altura)
	numeroMinas=Minas
	TamanhoTabuleiro.x=Largura
	TamanhoTabuleiro.y=Altura
	
	get_node("inicio/tabuleiro").set_columns(TamanhoTabuleiro.x)
	for y in range(TamanhoTabuleiro.y):
		for x in range(TamanhoTabuleiro.x):
			var bloco= preload("res://tabuleiro.tscn")
			bloco.set_meta('pos',Vector2(x,y))
			
			
#vai distribuir as minas ao longo do tabuleiro de forma randomica
func distribuir_minas(M):
	#diferentes tipos de minas 
	var M1
	var M2
	var M3
	var minepos1
	var minepos2
	var minepos3
	#distribuicao do numero de minas de cada tipo consoante o input do jogador
	if M>=20 and M<30:
		M1=5
		M2=5
		M3=M-(M2+M1)
	if M>=10 and M<20:
		M1=3
		M2=3
		M3= M-(M2+M1)
	if M>=30:
		M1=10
		M2=10
		M3= M-(M2+M1)
		
	while M1>0:
		minepos1 = randi() % int(TamanhoTabuleiro.x*TamanhoTabuleiro.y)
		if not get_node("inicio/tabuleiro").get_child(minepos1).mine:
			get_node("inicio/tabuleiro").get_child(minepos1).mine = true
			M1 -= 1
	
	while M2>0:
		minepos2 = randi() % int(TamanhoTabuleiro.x*TamanhoTabuleiro.y)
		if not get_node("inicio/tabuleiro").get_child(minepos2).mine:
			if not get_node("inicio/tabuleiro").get_child(minepos1).mine:
				get_node("inicio/tabuleiro").get_child(minepos2).mine = true
				M2 -= 1
	
	while M3>0:
		minepos3 = randi() % int(TamanhoTabuleiro.x*TamanhoTabuleiro.y)
		if not get_node("inicio/tabuleiro").get_child(minepos3).mine:
			if not get_node("inicio/tabuleiro").get_child(minepos2).mine:
				if not get_node("inicio/tabuleiro").get_child(minepos1).mine:
					get_node("inicio/tabuleiro").get_child(minepos3).mine = true
					M3 -= 1


func num_vizinhos(pos):
	var lista_vizinhos=[]
	     lista_vizinhos=minepos3 
         lista_vizionhos


#tem de avaliar os vizinhos com o sitio das minas  



#janela onde o jogador vai poder por o seu input
func _on_Novo_pressed():
	get_node('Novo Jogo').popup_centered()
	
	



