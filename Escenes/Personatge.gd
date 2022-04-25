extends KinematicBody2D

var velocitat_base = 250
var velocitat = Vector2.ZERO 
var gravetat = Vector2.DOWN * 1000
var salt = Vector2.UP * 50
var pantalla = 1

func _ready():
	velocitat.y = 0
	
func _physics_process(delta):
	velocitat.x = 200
	
	if Input.is_action_pressed("Vola"):
		velocitat.y += salt.y
		
		
	velocitat += gravetat * delta
	velocitat = move_and_slide(velocitat, Vector2.UP)
	
	
