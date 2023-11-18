extends Control

func _process(delta):
	if Input.is_action_just_pressed("exit"): quit()
	if Input.is_action_just_pressed("play"): play()

func play():
	get_tree().change_scene_to_packed(load("res://scenes/sceneI.tscn"))

func quit():
	get_tree().quit()
