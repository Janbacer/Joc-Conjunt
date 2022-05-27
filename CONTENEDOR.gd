extends Node2D


var obstaculo = load("res://RAYO.tscn")
var misil = load("res://MISIL.tscn")


func _process(delta):
	if $tiempo_de_generacion.is_stopped():
		crear_obstaculo()
		$tiempo_de_generacion.start()
		
	if $tiempo_misil.is_stopped():
		crear_misil()
		$tiempo_misil.start()


func crear_misil():
	var nuevo_misil = misil.instance()
	nuevo_misil.global_position = Vector2(1700, rand_range(50, 750))
	add_child(nuevo_misil)

func crear_obstaculo():
	var nuevo_obstaculo = obstaculo.instance()
	nuevo_obstaculo.global_rotation_degrees = rand_range(0,180)
	nuevo_obstaculo.global_position = Vector2(1700, rand_range(50, 750))
	add_child(nuevo_obstaculo)
