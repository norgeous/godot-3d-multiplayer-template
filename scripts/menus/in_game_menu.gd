extends Node

func _ready() -> void:
	$".".visible = false

func show():
	$".".visible = true
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

func hide():
	$".".visible = false
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _unhandled_input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("in-game-menu"):
		if ($".".visible):
			hide()
		else:
			show()

func _on_resume_pressed() -> void:
	hide()

func _on_quit_pressed() -> void:
	get_tree().quit()
