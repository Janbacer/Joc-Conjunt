extends Node

var viu = true
var vel_obs = -100
var distancia = 1
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if viu:
		vel_obs -= 0.1
	else:
		vel_obs = -100
	
