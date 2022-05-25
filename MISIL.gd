extends Area2D


export (int) var velocidad = -300


func _process(delta):
	global_translate(Vector2.RIGHT * velocidad * delta)
	if global_position.x <= -404:
		queue_free()


func _cuerpo_entro(body):
	if body is RigidBody2D:
#		en_juego = false
		pass
