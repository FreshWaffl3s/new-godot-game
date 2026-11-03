extends Node2D

var idk = preload("res://placeholder.tscn")
var preview = preload("res://placeholder_2.tscn")

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("BUILD"):
		var idk_instance_i_think = idk.instantiate()
		idk_instance_i_think.position = get_global_mouse_position()
		add_child(idk_instance_i_think)
	if Input.is_action_just_pressed("PREVIEW"):
		var preview_inst = preview.instantiate()
		preview_inst.position = get_global_mouse_position()
		add_child(preview_inst)
		
