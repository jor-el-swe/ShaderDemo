extends Panel

export var BPM = 116
const BARS = 4

var playing = false
const COMPENSATE_FRAMES = 2
const COMPENSATE_HZ = 60.0

export(float, -0.5, 0.5, 0.01) var trim = 0.0


# Used by system clock.
var time_begin
var time_delay


func strsec(secs):
	var s = str(secs)
	if (secs < 10):
		s = "0" + s
	return s


func _process(_delta):
	if !playing or !$Player.playing:
		return

	var time = 0.0
	# Obtain from ticks.
	time = (OS.get_ticks_usec() - time_begin) / 1000000.0
	# Compensate.
	time -= time_delay

	time -= trim
	var beat = int(time * BPM / 60.0)
	var seconds = int(time)
	var seconds_total = int($Player.stream.get_length())
	$Label.text = str("BEAT: ", beat % BARS + 1, "/", BARS, " TIME: ", seconds / 60, ":", strsec(seconds % 60), " / ", seconds_total / 60, ":", strsec(seconds_total % 60))


func _ready():

	time_begin = OS.get_ticks_usec()
	time_delay = AudioServer.get_time_to_next_mix() + AudioServer.get_output_latency()
	playing = true
	$Player.play()


