extends Node3D

@export var shake_intensity: float = 0.2
@export var shake_duration: float = 0.05

var time_since_shake_start = 0.0
var original_transform: Transform3D

func _ready():
	original_transform = self.transform

func _process(delta):
	time_since_shake_start += delta
	if time_since_shake_start > shake_duration:
		var shake_offset = Vector3(randf_range(-1, 1), randf_range(-1, 1), randf_range(-1, 1)) * shake_intensity
		
		self.transform.origin = original_transform.origin + shake_offset
		
		time_since_shake_start = 0
