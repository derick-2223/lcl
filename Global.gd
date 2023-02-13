extends Node

signal catch

func catch_signal():
	emit_signal("catch", true)
	print("signal emitted")
