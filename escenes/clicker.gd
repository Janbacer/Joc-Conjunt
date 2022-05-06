extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
func _physics_process(delta):	
	if Input.is_action_just_pressed("clic esquerra"):
		position = get_global_mouse_position()




func _on_Area2D_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	get_tree().change_scene("res://escenes/mort.tscn")
