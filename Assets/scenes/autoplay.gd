extends Node2D

var isMovingGuy = false


var evRight = InputEventAction.new()
var evJump = InputEventAction.new()

func _ready():
	evRight.action = "right"
	evJump.action = "jump"
	pass
	
func _physics_process(delta):
	


	if $floorChecker.is_colliding():
		evJump.pressed = false
		Input.parse_input_event(evJump)
		if !isMovingGuy:
			print("moves once")
			isMovingGuy = true
			evRight.pressed = true
			Input.parse_input_event(evRight)
			
	if not$floorChecker.is_colliding() and get_parent().is_on_floor():
		print("no ground!")
		
		evJump.pressed = true
		Input.parse_input_event(evJump)

