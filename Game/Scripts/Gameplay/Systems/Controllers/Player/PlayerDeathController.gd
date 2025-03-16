extends Node
class_name PlayerDeathController

@export var _actor : CharacterBody2D
@export var _max_y_position : float

func _process(delta: float) -> void:
	print(_actor.position.y)
	if max(_actor.position.y,0) > _max_y_position:
		get_tree().reload_current_scene()
		
