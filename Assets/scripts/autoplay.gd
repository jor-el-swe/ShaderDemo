extends Node2D

var isMovingGuy = false


var evRight = InputEventAction.new()
var evJump = InputEventAction.new()

func _ready():
	evRight.action = "right"
	evJump.action = "jump"
	

	print("moves once")
	evRight.pressed = true
	Input.parse_input_event(evRight)
	
func _physics_process(delta):
	
	if $floorChecker.is_colliding() and get_parent().is_on_floor():
		evJump.pressed = false
		Input.parse_input_event(evJump)

			
	if not$floorChecker.is_colliding() and get_parent().is_on_floor() and (not $platformInAirChecker.is_colliding()):
		print("no ground!")
		evJump.pressed = true
		Input.parse_input_event(evJump)
		
	if $platformInAirChecker.is_colliding():
		print("platformInAir")
	
	if $platformChecker.is_colliding() and get_parent().is_on_floor():
		evJump.pressed = true
		Input.parse_input_event(evJump)

