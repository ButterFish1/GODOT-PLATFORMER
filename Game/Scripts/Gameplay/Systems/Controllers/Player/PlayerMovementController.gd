extends Node
class_name PlayerMovementController

@export var _actor : CharacterBody2D
@export var _move_component : MoveComponent
@export var _jump_component : JumpComponent
@export var _fall_component : FallComponent

func _physics_process(delta: float) -> void:
	_move_component.move(Input.get_axis("ui_left","ui_right"),delta)
	
	if Input.is_key_pressed(KEY_SPACE):
		_jump_component.jump()
	
	_fall_component.fall(delta)
	_actor.move_and_slide()
	
