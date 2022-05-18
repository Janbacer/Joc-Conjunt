extends KinematicBody2D
var velocitat = Vector2.ZERO 
var gravetat = Vector2.DOWN * 1200
var salt = Vector2.UP * 35
var pantalla = 1
var distancia = 0
var acc = 0

func _ready():
	velocitat.x = 1
#	position = Vector2(480,50)
	
func _physics_process(delta):
	if Input.is_action_pressed("Vola"):
		velocitat.y += salt.y
	if position.x > 1000:
		velocitat.x = velocitat.x * -1 
		
	velocitat += gravetat * delta
	velocitat = move_and_slide(velocitat, Vector2.UP)

	anima(velocitat)
	
func anima(velocitat: Vector2):
	var animacio: AnimatedSprite = $AnimatedSprite
	var particules: Particles2D = $Particles2D
	
	if Input.is_action_just_pressed("Vola"):
		animacio.play("volar")
		particules.emitting = true
		#crea_projectils()
	if Input.is_action_just_released("Vola"):
		animacio.play("quiet")
		particules.emitting = false
	if position.y > 800:
		animacio.play("correr")
		
#func crea_projectils():
#	var escena_projectils = load("res://Jan/Escenes/Projectil.tscn")
#	var nou_projectil = escena_projectils.instance()
#	nou_projectil.velocitat = Vector2.DOWN * 1200
#	nou_projectil.global_position = global_position
#	get_parent().add_child(nou_projectil)
	


func _on_Timer_timeout():
	distancia = distancia + acc
	update_distancia()
	acc += 0.01

func update_distancia():
	$CanvasLayer/Label.text = str(floor(distancia))
