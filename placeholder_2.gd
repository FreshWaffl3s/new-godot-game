extends Sprite2D

var preview_rotation

func _process(delta: float) -> void:
	position = get_global_mouse_position()

func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("ROTATE"):
		rotation_degrees += 100 * delta
		preview_rotation = rotation_degrees
