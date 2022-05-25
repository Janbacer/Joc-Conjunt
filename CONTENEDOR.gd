extends Node2D


# Declare member variables here. Examples:
# var a = 2
var obstaculo = preload("res://RAYO.tscn")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $tiempo_de_generacion.is_stopped():
		crear_obstaculo()
		$tiempo_de_generacion.start()

func crear_obstaculo():
	var nuevo_obstaculo = obstaculo.instance()
	nuevo_obstaculo.global_rotation_degrees = rand_range(0,180)
	nuevo_obstaculo.global_position = Vector2(1700, rand_range(50, 750))
	add_child(nuevo_obstaculo)
