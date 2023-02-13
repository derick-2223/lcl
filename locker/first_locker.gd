extends KinematicBody2D

var girl = null
var catch_sgnal = Global

onready var animation_player = $AnimationPlayer
onready var detectionzone = $detectionzone



func _process(delta):
	if Input.is_action_just_pressed("ui_select"):
		animation_player.play("openlocker_anim")


func _on_detectionzone_body_entered(body):
	if body.is_in_group("girls"):
		girl = body
		catch_sgnal.catch_signal()
		print("girl detected")

func _on_detectionzone_body_exited(body):
	girl = null
