extends Node
class_name FallComponent

@export var _actor : CharacterBody2D
@export var _gravity : float

#func _init(actor : CharacterBody2D, gravity : float) -> void:
#	_actor = actor
#	_gravity = gravity

func fall(delta : float) -> void:
	if _actor.is_on_floor():
		return
	
	_actor.velocity.y += _gravity * delta
