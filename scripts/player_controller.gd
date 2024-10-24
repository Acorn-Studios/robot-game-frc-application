extends RigidBody3D

var wheel_deg : int = 0
var move_dir : int = 0
var wheel_turn_speed : int = 5
var input_dir : Vector3 = Vector3.ZERO
var speed: float = 10.0
var body_size : float = 1.0  # Half the side length of the square robot body
var wheel_force : float = 10.0  # Force applied by each wheel

# Called every frame
func _physics_process(delta: float) -> void:
	# Update the wheel's angle based on input
	wheel_deg += wheel_turn_speed * delta * move_dir

	# Calculate the torques from each wheel's force
	var total_torque: float = calculate_total_torque()

	# Update the robot's angular velocity based on total torque
	var angular_acceleration: float = total_torque / calculate_moment_of_inertia()
	var angular_velocity: float = angular_acceleration * delta

	# Apply the angular velocity to the RigidBody3D
	apply_torque_impulse(Vector3(0, angular_velocity, 0))

# Calculate the total torque acting on the body due to wheel forces
func calculate_total_torque() -> float:
	# Position of the wheels relative to the center (assuming square robot)
	var L: float = body_size  # Distance from center to wheel

	# Calculate torque from each wheel
	var torque_per_wheel: float = wheel_force * L  # Torque = Force * Distance
	return 4 * torque_per_wheel  # Total torque (4 wheels)

# Calculate the moment of inertia for the square robot body
func calculate_moment_of_inertia() -> float:
	# Moment of inertia for a square plate: I = (1/3) * mass * (2L)^2
	var L: float = body_size
	return (1.0 / 3.0) * mass * (2.0 * L) * (2.0 * L)


# Direction of movement in degrees
var movement_angle: float = 0.0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	input_dir = Vector3(Input.get_axis("ui_left","ui_right"), 0, Input.get_axis("ui_up","ui_down"))
	#rotation_degrees.y += ((360*(round(abs(wheel_deg-move_dir)/360)))-abs(wheel_deg-move_dir))/wheel_turn_speed # ((360*(round(abs(wheel_deg-move_dir)/360)))-abs(wheel_deg-move_dir))/wheel_turn_speed
	#linear_velocity = input_dir * Vector3(speed,0,speed)
	move_dir = rad_to_deg(atan2(input_dir.z, input_dir.x))
	wheel_deg = lerp(wheel_deg, int(rotation_degrees.y), 1/wheel_turn_speed)
