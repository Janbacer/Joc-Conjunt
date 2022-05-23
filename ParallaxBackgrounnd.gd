extends ParallaxBackground

var velocitat = Vector2(10,0)
func _process(delta):
	scroll_base_offset -= velocitat * delta
	velocitat += Vector2(0.1,0)
