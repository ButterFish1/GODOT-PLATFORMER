extends Node
class_name JumpComponent

signal is_jumping_state_changed(value : bool)

@export var _actor : CharacterBody2D
@export var _force : float

var _is_jumping : bool

#func _init(actor : CharacterBody2D, force : float) -> void:
#	_actor = actor
#	_force = force

func jump() -> void:
	if(_is_jumping or not _actor.is_on_floor()):
		return
	
	_actor.velocity.y = _force
