extends Node2D

export(Material) var rotatingFanMaterial 

var angleOffset = 0.0
export var angleIncrement = 0.5
# Called when the node enters the scene tree for the first time.

var Mat
func _ready():
	$ColorRect.set("material", rotatingFanMaterial)
	Mat = $ColorRect.get_material()
	

func tickAngle():
	angleOffset+=angleIncrement
	Mat.set_shader_param("tickAngleIncrement",angleOffset)
