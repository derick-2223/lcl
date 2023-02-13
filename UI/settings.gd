extends Panel

onready var animation_player = $AnimationPlayer

func _ready():
	animation_player.play("settings_anim")


func _on_CANCEL_BUTTON_pressed():
	animation_player.play("settings_cancel_anim")
