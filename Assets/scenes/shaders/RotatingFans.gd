extends Node2D

var direction = 1


# Called when the node enters the scene tree for the first time.
func _ready():
	var Mat = $ColorRect.get_material()
	Mat.set_shader_param("rotationDirection",direction)

