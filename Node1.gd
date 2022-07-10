extends Node
#Main branch
onready var ss = preload("res://test1stSprite.tscn")

func _ready():
	for _i in range(1):
		add_child(ss.instance()) 
