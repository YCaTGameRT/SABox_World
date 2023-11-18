extends Control

func _on_play_pressed():
	get_tree().change_scene_to_packed(load("res://scenes/sceneI.tscn"))

func _on_quit_pressed():
	get_tree().quit()
