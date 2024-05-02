extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	text = "0" # initial value


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_h_slider_value_changed(value):
	text = str(value)
