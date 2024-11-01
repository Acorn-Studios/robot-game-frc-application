extends Node3D

var sense = .5
@onready var root = $".."
@export var Clamp : bool = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if !Input.is_action_pressed("esc"):
		Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
	else:
		Input.mouse_mode = Input.MOUSE_MODE_VISIBLE

func _unhandled_input(event):
	# inputs for mouse
	if event is InputEventMouseMotion:
		if Input.get_mouse_mode() == Input.MOUSE_MODE_CAPTURED:
			root.rotation.y += -event.relative.x * sense / 100
			rotation.x += -event.relative.y * sense / 100
			
			#clap y
			rotation.x = clamp(rotation.x, deg_to_rad(-45), deg_to_rad(20))
	
