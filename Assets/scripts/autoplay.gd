extends Node2D

var isMovingGuy = false


var evRight = InputEventAction.new()
var evJump = InputEventAction.new()
var isAutoPlaying = false;

func _ready():
	evRight.action = "right"
	evJump.action = "jump"
	
func autoplayOnOff():
	isAutoPlaying = not isAutoPlaying
	
	if isAutoPlaying:
		print("moves forward")
		evRight.pressed = true
		
	else:
		print("stops")
		evRight.pressed = false
	
	Input.parse_input_event(evRight)
	
func _physics_process(delta):
	
	if Input.is_action_just_pressed("autoPlay"):
		autoplayOnOff()
	
	if isAutoPlaying:
		#don't jump if we are running on solid ground
		if $floorChecker.is_colliding() and get_parent().is_on_floor():
			evJump.pressed = false
			Input.parse_input_event(evJump)

				
		#jump if we detect a hole in the ground, and we are not on a platform in air
		if not$floorChecker.is_colliding() and get_parent().is_on_floor() and (not $platformInAirChecker.is_colliding()):
			print("no ground!")
			evJump.pressed = true
			Input.parse_input_event(evJump)
			
		#jumps if we detect a platform up ahead
		if $platformChecker.is_colliding() and get_parent().is_on_floor():
			evJump.pressed = true
			Input.parse_input_event(evJump)

