extends Area2D

func _on_Area2D_body_entered(body):
	if body.name == "Attila":
		get_tree().change_scene(get_parent().get("path"))

