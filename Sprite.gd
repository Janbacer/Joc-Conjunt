extends Sprite
 

const SCREEN_WIDTH = 1024
const SCREEN_SPEED = -200


func _process(delta):
	position += Vector2(SCREEN_SPEED * delta, 0)
	
	if position.x <= 0:
		position.x += SCREEN_WIDTH
