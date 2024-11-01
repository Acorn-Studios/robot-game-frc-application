extends CharacterBody3D


const SPEED = 5.0
const JUMP_VELOCITY = 4.5 

var wheel_deg : int = 0
var move_dir : Vector3 = Vector3.ZERO
var wheel_turn_speed : int = 5
var input_dir : Vector3 = Vector3.ZERO
var speed : float = 100.0
var win : bool = false


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	if not win:
		input_dir.x = Input.get_axis("a", "d")
		input_dir.z = Input.get_axis("w", "s")
		var direction = (transform.basis * Vector3(input_dir.x, 0, input_dir.z)).normalized()
		if direction:
			velocity.x = direction.x * SPEED
			velocity.z = direction.z * SPEED
		else:
			velocity.x = move_toward(velocity.x, 0, SPEED)
			velocity.z = move_toward(velocity.z, 0, SPEED)
	
	if Input.is_action_just_pressed("r"):
		get_tree().reload_current_scene()
	
	
	move_and_slide()

func _on_area_3d_body_entered(body):
	if body.is_in_group("Player"):
		$"../RichTextLabel".show()
		win = true
