extends Camera2D

export var speed = 10.0

func _ready():
	pass

func _process(delta):
	var inpx = (int(Input.is_action_pressed("ui_right"))
	           - int(Input.is_action_pressed("ui_left")))
	position.x += inpx*speed
	var inpy = (int(Input.is_action_pressed("ui_down"))
	           - int(Input.is_action_pressed("ui_up")))
	position.y += inpy*speed