extends Area2D


func _process(delta):
	global_translate(Vector2.RIGHT * global_var.vel_obs * delta)
	if global_position.x <= -404:
		queue_free()
	self.visible = global_var.viu


func _cuerpo_entro_rayo(body):
	if body is KinematicBody2D:
		global_var.viu = false
