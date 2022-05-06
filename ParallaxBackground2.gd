extends ParallaxBackground


const SCREEN_WIDTH = 1024
const SCREEN_SPEED = -200

func _process(delta):
	scroll_base_offset -= Vector2(65,0) * delta
