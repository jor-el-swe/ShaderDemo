extends Node2D



func _ready():
	pass # Replace with function body.



func _on_Area2D_body_entered(body):
		if body.name == "Attila":
			print("burn player")
			#disableCollisions()
			#body.ouch(position.x)