extends KinematicBody2D
var velocitat = Vector2.ZERO 
var gravetat = Vector2.DOWN * 1200
var limit_velocitat_y = -700
var salt = Vector2.UP * 50 * 60
var pantalla = 1
var distancia = 1
var acc = 0
var viu = true


func _ready():
	velocitat.x = 0
#	position = Vector2(480,50)

func _physics_process(delta):
	if viu:
		velocitat.x = 0
		if Input.is_action_pressed("Vola"):
			if velocitat.y > limit_velocitat_y:
				velocitat.y += salt.y * delta
			if velocitat.y < limit_velocitat_y:
				velocitat.y = limit_velocitat_y
	else:
		pass
#	if position.x > 1000:
#		velocitat.x = velocitat.x * -1 
	
	velocitat += gravetat * delta
	velocitat = move_and_slide(velocitat, Vector2.UP)

	anima(velocitat)
	
func anima(velocitat: Vector2):
	var animacio: AnimatedSprite = $AnimatedSprite
	var particules: Particles2D = $Particles2D
	if viu:
		if Input.is_action_just_pressed("Vola"):
			particules.emitting = true
			$sobalas.playing= true
			#crea_projectils()
		if Input.is_action_just_released("Vola"):
			animacio.play("quiet")
			particules.emitting = false
			$sobalas.playing = false
		if position.y > 770:
			animacio.play("correr")
		if Input.is_action_pressed("Vola"):
			animacio.play("volar")
	else:
		animacio.play("volar i morir")
		particules.emitting = false
		$sobalas.playing = false
	
#func crea_projectils():
#	var escena_projectils = load("res://Jan/Escenes/Projectil.tscn")
#	var nou_projectil = escena_projectils.instance()
#	nou_projectil.velocitat = Vector2.DOWN * 1200
#	nou_projectil.global_position = global_position
#	get_parent().add_child(nou_projectil)
	


func _on_Timer_timeout():
	distancia = distancia + acc
	update_distancia()
	if acc > 5:
		acc = 5
	else:
		acc += 0.005
	
func update_distancia():
	$CanvasLayer/Label.text = str(floor(distancia))




func _on_MISIL_body_entered(body):
	viu = false

