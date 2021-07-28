extends Node


func _on_BPM_Tick():
		for child in get_children():
			if child.has_method("toggleMaterial"):
				child.toggleMaterial()
