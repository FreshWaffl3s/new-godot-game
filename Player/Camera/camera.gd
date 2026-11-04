extends Camera2D

var cam_move_speed : int = 900
var direction : Vector2 = Vector2.ZERO

func _process(delta: float) -> void:
	direction = Vector2(Input.get_axis("CAM-LEFT", "CAM-RIGHT"), Input.get_axis("CAM-UP", "CAM-DOWN"))
	position += direction.normalized() * cam_move_speed * delta
