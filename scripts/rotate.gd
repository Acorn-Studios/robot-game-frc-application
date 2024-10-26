extends Node3D

@export var xrot : float = 0
@export var yrot : float = 0
@export var zrot : float = 0

func _process(delta) -> void:
	rotation += Vector3(xrot,yrot,zrot) * delta
