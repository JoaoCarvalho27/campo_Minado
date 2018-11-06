extends Node2D

export(int) var altura;
export(int) var largura;
export(int) var x_inicio;
export(int) var y_inicio;
export(int) var distancia;

var peca=[preload("res://pecatabuleiro.tscn")];
var pecas=[];

func _ready():
	pecas= criar_tabuleiro();
	dispor_pecas();
	
func criar_tabuleiro():
	var array=[]
	for i in altura:
		array.append([]);
		for j in largura:
			array[i].append(null);
	return array;
	
func dispor_pecas():
	for i in altura:
		for j in largura:
			var a=0
			var colocarpeca= peca[a].instance();
			add_child(colocarpeca);
			colocarpeca.position= escolher_sitio(i,j);

func escolher_sitio(coluna, linha):
	var novo_x= x_inicio + distancia * coluna;
	var novo_y= y_inicio + distancia * linha;
	return Vector2(novo_x , novo_y);




#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
