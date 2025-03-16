extends Node2D
class_name FinishZone

@export var _area_2d : Area2D
@export var _ui_root : UIRoot

func _ready() -> void:
	_area_2d.body_entered.connect(_on_body_entered)
	
func _on_body_entered(body : Node2D) -> void:
	if(not body is CharacterBody2D):
		return
	
	show_victory_screen()
	
func show_victory_screen() -> void:
	_ui_root.show_finish_screen()
	print("finish")
