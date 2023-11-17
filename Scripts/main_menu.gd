extends Control

@export var game_scene: PackedScene

func _on_play_pressed():
	get_tree().change_scene_to_packed(game_scene)

func _on_quit_pressed():
	get_tree().quit()
