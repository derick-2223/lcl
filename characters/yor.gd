extends KinematicBody2D

var velocity = Vector2.ZERO
var speed = 120
var acceleration = 20
var friction = 120
var connect_signal = Global

onready var animation_player = $AnimationPlayer

func _ready():
	animation_player.play("walk_left")
	connect_signal.connect("catch", self, "_on_catch")

func _physics_process(delta):
	velocity = Vector2(1, 0)
	move_and_slide(velocity * speed * acceleration * delta)

func _on_catch(value):
	if value == true:
		velocity = Vector2.ZERO
		move_and_slide(velocity)
