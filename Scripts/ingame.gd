extends Node2D

func _process(delta):
	if Input.is_action_just_pressed("exit"): exit()

func exit():
	get_tree().change_scene_to_packed(load("res://scenes/main_menu.tscn"))



