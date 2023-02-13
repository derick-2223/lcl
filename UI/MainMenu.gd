extends Control

const settings_scene = preload("res://UI/Panel.tscn")

onready var background = $background
onready var background_timer = $background_timer
onready var background_animation = $background_animation
onready var tentacle_anim_1 = $tentacle_anim1
onready var tentacle_anim_2 = $tentacle_anim2
onready var tentacle_anim_3 = $tentacle_anim3
onready var tentacle_anim_4 = $tentacle_anim4
onready var title_anim_1 = $title_anim1
onready var background_music = $background_music
onready var button_hover_sound = $button_hover_sound
onready var settings_vector = $settings_vector

onready var continue1 = $VBoxContainer/Continue
onready var new__game = $VBoxContainer/New_Game


func _ready():
	
	continue1.disabled = true
	
	background.frame = 0
	tentacle_anim_1.play("t1")
	tentacle_anim_2.play("t2")
	tentacle_anim_3.play("t3")
	tentacle_anim_4.play("t4")
	
	title_anim_1.play("title_1")
	
	background_music.play()

func _on_background_timer_timeout():
	background_animation.play("background_anim")


func _on_New_Game_mouse_entered():
	button_hover_sound.play()


func _on_New_Game_pressed():
	button_hover_sound.play()


func _on_Settings_pressed():
	settings_popup()
	
func settings_popup():
	var settings_spawn = settings_scene.instance()
	self.add_child(settings_spawn)
	settings_spawn.rect_global_position = settings_vector.global_position

func _on_Quit_pressed():
	get_tree().quit()
