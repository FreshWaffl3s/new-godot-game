extends Node2D

var idk = preload("res://placeholder.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("BUILD"):
		var idk_instance_i_think = idk.instantiate()
# the position has to be on the mouse but careful you have to move the player node to the mouse
		add_child(idk_instance_i_think)
