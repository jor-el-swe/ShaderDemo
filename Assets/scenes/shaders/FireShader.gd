extends Node2D

export(Array, Material) var materialArray 



func _on_Area2D_body_entered(body):
		if body.name == "Attila":
			print("burn player")
			body.ouch(position.x)
			$FireShader.set_collision_mask_bit(0, false)
			

var iterator = 0

func toggleMaterial():
	$ColorRect.set("material", materialArray[iterator])
	iterator+=1
	iterator %= materialArray.size()
	print("set material: ", iterator)

