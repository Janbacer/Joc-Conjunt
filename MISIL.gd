extends Area2D


export (int) var velocidad_misil = -600


func _process(delta):
	global_translate(Vector2.RIGHT * velocidad_misil * delta)
	if global_position.x <= -1004:
		queue_free()


func _cuerpo_entro(body):
	if body is RigidBody2D:
#		en_juego = false
		pass
