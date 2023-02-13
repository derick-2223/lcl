extends Node2D

const yor = preload("res://characters/yor_.tscn")
onready var spawn_1 = $spawn1
onready var spawntimer_1 = $spawntimer1
onready var first_locker = $first_locker


func _ready():
	spawntimer_1.start()

func spawn_1():
	var yor_spawn = yor.instance()
	self.add_child(yor_spawn)
	yor_spawn.global_position = spawn_1.global_position
	

func _on_spawn_1_timer_timeout():
	spawn_1()
	

