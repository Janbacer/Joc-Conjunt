extends ParallaxBackground
func _process(delta):
	scroll_base_offset -= Vector2(80,0) * delta
