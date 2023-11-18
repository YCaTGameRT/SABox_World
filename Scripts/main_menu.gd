extends Control

@export var toggle_fullscreen_sprite: TextureRect
@export var to_fullscreen_texture: Texture2D
@export var to_window_texture: Texture2D

func _process(delta):
	if Input.is_action_just_pressed("exit"): quit()
	if Input.is_action_just_pressed("play"): play()

func toggle_fullscreen():
	if DisplayServer.window_get_mode() == DisplayServer.WINDOW_MODE_FULLSCREEN:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
		toggle_fullscreen_sprite.texture = to_fullscreen_texture
	else:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
		toggle_fullscreen_sprite.texture = to_window_texture

func play():
	get_tree().change_scene_to_packed(load("res://scenes/sceneI.tscn"))

func quit():
	get_tree().quit()
