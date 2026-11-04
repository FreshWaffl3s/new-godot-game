extends Node2D

var can_build : bool = true
var snapping_toggle : bool = true
var rotation_speed : int = 90
var rotation_increments : float = 22.5
var parent : Node2D
var wall : PackedScene = preload("res://Build/Buildables/Wall/build/wall.tscn")

func _ready() -> void:
	parent = get_parent()

func _process(delta: float) -> void:
	position = get_global_mouse_position()
	
	if parent.preview_toggle == false:
		queue_free()
		return
	if Input.is_action_pressed("ROTATE") and snapping_toggle == false:
		rotation_degrees += rotation_speed * delta

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("BUILD") and can_build == true:
		var wall_instance = wall.instantiate()
		wall_instance.position = position
		wall_instance.rotation = rotation
		add_child(wall_instance)
	elif event.is_action_pressed("SNAPPING"):
		snapping_toggle = !snapping_toggle
	elif event.is_action_pressed("ROTATE") and snapping_toggle:
		rotation_degrees += rotation_increments
