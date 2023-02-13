extends Control

onready var dialog = $"../dialog".dialog_1

var dialog_index = 0
var finished
var active

var position
var expression

onready var point_1 = $"../point1"
onready var point_2 = $"../point2"
onready var point_3 = $"../point3"
onready var point_4 = $"../point4"
onready var point_5 = $"../point5"



func _ready():
	load_dialog()
	
func _physics_process(delta):
	if active:
		if Input.is_action_just_pressed("ui_select"):
			if finished == true:
				load_dialog()
			else:
				$Textbox/Tween.stop_all()
				$Textbox/RichTextLabel.percent_visible = 1
				finished = true
				
		if $Textbox/Name.text == "Melissa":
			$melissa.visible = true
			if position == "1":
				$melissa.global_position = point_1.global_position
			if position == "2":
				$melissa.global_position = point_2.global_position
			if position == "3":
				$melissa.global_position = point_3.global_position
			if position == "4":
				$melissa.global_position = point_4.global_position
			if position == "5":
				$melissa.global_position = point_5.global_position
				
		if $Textbox/Name.text == "Shiolp":
			$shiolp.visible = true
			if position == "1":
				$shiolp.global_position = point_1.global_position
			if position == "2":
				$shiolp.global_position = point_2.global_position
			if position == "3":
				$shiolp.global_position = point_3.global_position
			if position == "4":
				$shiolp.global_position = point_4.global_position
			if position == "5":
				$shiolp.global_position = point_5.global_position
		
		if $Textbox/Name.text == "Tamara":
			$tamara.visible = true
			if position == "1":
				$tamara.global_position = point_1.global_position
			if position == "2":
				$tamara.global_position = point_2.global_position
			if position == "3":
				$tamara.global_position = point_3.global_position
			if position == "4":
				$tamara.global_position = point_4.global_position
			if position == "5":
				$tamara.global_position = point_5.global_position
		
		if $Textbox/Name.text == "Eila":
			$eila.visible = true
			if position == "1":
				$eila.global_position = point_1.global_position
			if position == "2":
				$eila.global_position = point_2.global_position
			if position == "3":
				$eila.global_position = point_3.global_position
			if position == "4":
				$eila.global_position = point_4.global_position
			if position == "5":
				$eila.global_position = point_5.global_position

func load_dialog():
	if dialog_index < dialog.size():
		active = true
		finished = false
		
		$Textbox.visible = true
		$Textbox/RichTextLabel.bbcode_text = dialog[dialog_index]["Text"] 
		$Textbox/Name.text = dialog[dialog_index]["Name"]
		
		position = dialog[dialog_index]["Position"]
		expression = dialog[dialog_index]["Expression"]
		
		$Textbox/RichTextLabel.percent_visible = 0
		$Textbox/Tween.interpolate_property(
			$Textbox/RichTextLabel, "percent_visible", 0 , 1, 2,
			Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
		)
		$Textbox/Tween.start()
	else:
		$Textbox.visible = false
		finished = true
		active = false
	dialog_index += 1

func _on_Tween_tween_completed(object, key):
	finished = true
