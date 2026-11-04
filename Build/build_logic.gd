extends Node2D

var wall_preview : PackedScene = preload ("res://Build/Buildables/Wall/preview/wall_preview.tscn")

var preview_toggle : bool = false

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("PREVIEW"):
		preview_toggle = !preview_toggle
		if preview_toggle == true:
			var wall_preview_instance : Node = wall_preview.instantiate()
			wall_preview_instance.position = get_global_mouse_position()
			add_child(wall_preview_instance)
