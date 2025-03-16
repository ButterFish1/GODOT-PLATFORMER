extends Node
class_name MoveComponent

signal speed_changed(value : float)

@export var _actor : CharacterBody2D
@export var _speed : float:
	get:
		return _speed
	set(value):
		_speed = value
		speed_changed.emit(value)

#func _init(actor : CharacterBody2D, speed : float) -> void:
#	_actor = actor
#	_speed = speed

func move(direction : float, delta : float) -> void:
	_actor.velocity.x = direction * _speed * delta

func change_speed(new_value : float) -> void:
	_speed = new_value
