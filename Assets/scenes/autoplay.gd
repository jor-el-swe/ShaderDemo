extends Node2D


func _ready():
	pass
	
func _physics_process(delta):
	var ev = InputEventAction.new()
	# Set as move_left, pressed.
	ev.action = "right"
	ev.pressed = true
	# Feedback.
	Input.parse_input_event(ev)

