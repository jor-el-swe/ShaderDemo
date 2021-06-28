extends Button

func _ready():
	$Timer.start()

func _physics_process(delta):
	if Input.is_action_just_pressed("jump"):
		_on_playButton_pressed()

func _on_playButton_pressed():
	get_tree().change_scene("res://Assets/scenes/Level1.tscn")


func _on_Timer_timeout():
	_on_playButton_pressed()
