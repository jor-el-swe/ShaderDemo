extends Label


var colorArray = ["8dfb80", "fa7fb5", "867ffa", "a7236a"]
var index = 0
func _on_BPMSync_BPM_Tick():
	add_color_override("font_color", Color(colorArray[index]))
	index +=1
	index = index%4
	print(" color cycle index: ", index)
