extends Node2D

var amount = h_slider.value



@onready var h_slider = $HSlider
@onready var counting_label = $CountingLabel
	
func _ready():
	counting_label.text = str(amount)
	
func _on_h_slider_value_changed(value):
	pass
