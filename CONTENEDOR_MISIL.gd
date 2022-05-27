extends Node2D


var misil = preload("res://MISIL.tscn")


func _process(delta):
	if $tiempo_de_generacion_misil.is_stopped():
		crear_misil()
		$tiempo_de_generacion_misil.start()


func crear_misil():
	var nuevo_misil = misil.instance()
	nuevo_misil.global_position = Vector2(1700, rand_range(50, 750))
	add_child(nuevo_misil)
