extends CollisionShape3D


func _process(delta):
	if is_colliding:
		$"../../RichTextLabel".show
		print("yay")
