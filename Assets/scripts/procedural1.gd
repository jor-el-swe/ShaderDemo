extends Node2D

var ds = 1
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
			
			var m = 3/pow(sin(3*t)+PI/2,2)
			
			var f1 = (2-m)*pow(x-w/2,2.0)/120	
			var f2 = (-2+m)*pow(x-w/2,2.0)/120
			
			r = -abs(y -    (2.5*h/3)+12*m +f1) +1.3
			g = -abs(y - (h-(2.5*h/3)+12*m) +f2) +1.3

			b=g
			draw_rect(Rect2(Vector2(x*ds,y*ds), Vector2(ds,ds)), Color(r,g,b))
			
