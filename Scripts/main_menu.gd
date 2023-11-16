extends Control

var s = "res://scenes/sceneI.tscn"


func _ready():


func _on_play_pressed():
	get_tree().change_scene(s)


func _on_quit_pressed():
	 # Replace with function body.
