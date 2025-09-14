extends Node3D

@export var shake_intensity: float = 0.2
@export var shake_duration: float = 0.15

var time_since_shake_start = 0.0

func _process(delta):
	time_since_shake_start += delta
	if time_since_shake_start > shake_duration:
		var shake_offset = Vector3(randf_range(-1, 1), randf_range(-1, 1), randf_range(-1, 1)) * shake_intensity
		self.transform.origin = shake_offset
		time_since_shake_start = 0
