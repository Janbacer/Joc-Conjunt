extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if global_var.viu == false and self.visible == false:
		self.visible = true
		if $anim.is_playing() == false:
			$anim.play("mover")
		$"pn-actual".text = "Puntució: " + str(floor(global_var.distancia))
