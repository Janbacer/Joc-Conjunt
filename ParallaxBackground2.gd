extends ParallaxBackground

var velocitat = Vector2(25,0)
func _process(delta):
	scroll_base_offset -= velocitat * delta
	velocitat += Vector2(0.1,0)
