extends Node2D

export(Material) var rotatingFanMaterial 

var angleOffset = 0.0
export var angleIncrement = 0.5
# Called when the node enters the scene tree for the first time.

var Mat
func _ready():
	Mat = $ColorRect.get_material()
	$ColorRect.set("material", rotatingFanMaterial)


func tickAngle():
	#angleOffset+=angleIncrement
	angleOffset+=angleIncrement
	Mat.set_shader_param("tickAngleIncrement",angleOffset)
	print("set angle tick: ", angleOffset)
