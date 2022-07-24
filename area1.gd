extends Area2D

export var spd = 0
var extnts
var srnsize
signal testtest

func _ready():
	srnsize = get_viewport_rect().size
	extnts = get_node("Sprite").get_texture().get_size() / 2
	randomize()
	spd = 200
	set_process(true)
	set_position(srnsize /2)
	
	
func _process(delta):
	var ii = Vector2(0,0)
	ii.x = int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left")) 
	ii.y = int(Input.is_action_pressed("ui_down")) - int(Input.is_action_pressed("ui_up")) 
	set_position(position + ii * spd *delta)
	emit_signal("testtest")
