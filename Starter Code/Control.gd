extends Control

var slider
var button
var sprite_scene := preload("res://Scenes/the_guy.tscn")

func _ready():
	slider = $HSlider
	button = $Button
	
	button.connect("pressed", self, "_on_button_pressed")

func _on_button_pressed():
	# Get the value of the slider
	var num_sprites = int(slider.value)
	
	# Instantiate sprites based on the slider value
	for i in range(num_sprites):
		var sprite = sprite_scene.instance()
		# Position the sprite randomly on the screen
		sprite.position = Vector2(randf_range(0, get_viewport_rect().size.x), randf_range(0, get_viewport_rect().size.y))
		add_child(sprite)
