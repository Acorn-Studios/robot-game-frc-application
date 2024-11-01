extends Path3D

var t : float = 0
@export var speed : float = 2
@export var rotation_ : Vector3 = Vector3.ZERO


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	t += 1 * delta
	if $PathFollow3D.progress_ratio < 82.33:
		$PathFollow3D.progress_ratio = t * speed
	else:
		$PathFollow3D/CamRoot/Camera3D.current = false
