extends AnimatedSprite


# Declare member variables here. Examples:
var starting = false
var cont = 0
var cont2 = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	modulate.a8 = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if starting == false and modulate.a8 == 0:
		starting = true
	if starting:
		if cont < 3:
			if cont2 == 0:
				if modulate.a8 < 50:
					modulate.a8 += 3
				else:
					cont2 = 1
			else:
				if modulate.a8 > 0:
					modulate.a8 -= 3
				else:
					cont2 = 0
					cont += 1
		else:
			if modulate.a8 < 255:
				modulate.a8 += 3
				
