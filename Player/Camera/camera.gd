extends Camera2D

var cam_move_speed : int = 900
var direction : Vector2 = Vector2.ZERO

func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("CAM-UP"):
		direction.y = -1
	elif Input.is_action_pressed("CAM-DOWN"):
		direction.y = 1
	else:
		direction.y = 0
	if Input.is_action_pressed("CAM-RIGHT"):
		direction.x = 1
	elif Input.is_action_pressed("CAM-LEFT"):
		direction.x = -1
	else:
		direction.x = 0
	
	position += direction.normalized() * cam_move_speed * delta
