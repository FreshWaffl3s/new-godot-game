extends Node2D

var destroy_target

func _process(delta: float) -> void:
	position = get_global_mouse_position()
	if Input.is_action_pressed("DESTROY"):
		if destroy_target:
			destroy_target.self_destruct()

func _on_hover_detection_area_entered(area: Area2D) -> void:
	destroy_target = area.get_parent()

func _on_hover_detection_area_exited(area: Area2D) -> void:
	destroy_target = null
