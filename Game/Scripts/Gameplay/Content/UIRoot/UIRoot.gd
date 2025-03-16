extends Control
class_name UIRoot

@export var finish_screen : Control
@export var quit_button : Button

func _ready() -> void:
	hide_finish_screen()
	quit_button.pressed.connect(get_tree().quit)

func show_finish_screen() -> void:
	finish_screen.show()

func hide_finish_screen() -> void:
	finish_screen.hide()
