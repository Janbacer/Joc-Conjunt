extends KinematicBody2D

var velocitat_base = 250
var velocitat = Vector2.ZERO 
var gravetat = Vector2.DOWN * 1000
var acceleracio = Vector2.RIGHT * 50
var salt = Vector2.UP * 35
var pantalla = 1

func _ready():
	velocitat.x = 1
	
func _physics_process(delta):
	
	
	if Input.is_action_pressed("Vola"):
		velocitat.y += salt.y
		
	if position.x > 1000:
		velocitat.x = velocitat.x * -1 
		
	velocitat += acceleracio * delta
	velocitat += gravetat * delta
	velocitat = move_and_slide(velocitat, Vector2.UP)
