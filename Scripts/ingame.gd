extends Node

@export var game_scene1: PackedScene

var simultaneous_scene = preload("res://scenes/main_menu.tscn").instantiate()

func _on_button_pressed():
	get_tree().root.add_child(simultaneous_scene)



