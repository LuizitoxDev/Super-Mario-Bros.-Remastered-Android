extends TouchScreenButton

# Todas as actions que esse botão deve ativar
@export var up_actions: Array[String] = ["run_0", "action_0","ui_back"]

func _ready() -> void:
	pressed.connect(_on_pressed)
	released.connect(_on_released)

func _on_pressed() -> void:
	for act in up_actions:
		Input.action_press(act)

func _on_released() -> void:
	for act in up_actions:
		Input.action_release(act)
