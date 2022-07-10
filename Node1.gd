extends Node

onready var ss = preload("res://test1stSprite.tscn")

func _ready():
	for _i in range(100):
		add_child(ss.instance()) 
