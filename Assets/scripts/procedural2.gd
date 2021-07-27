extends Node2D

var ds = 4
var width = 128
var height = 128

var r = 0
var g = 0
var b = 0

var h = float(height)
var w = float(width)

var t= 1
# Called when the node enters the scene tree for the first time.
func _ready():
	#OS.set_window_size(Vector2(width*ds, height*ds))
	#set_process(true)
	pass # Replace with function body.


func _process(delta):
	t += delta
	update()
	
func _draw():
	for x in range(width):
		for y in range(height):
			
			g = 0.72 *rand_range(0.2,0.3*tan((y-int(acos(t*4)*10)*y%(40*x+1)-t*18.0)/w))+b; b = 0.38*g; r = g-b

			draw_rect(Rect2(Vector2(x*ds,y*ds), Vector2(ds,ds)), Color(r,g,b))
			
