extends Control

@export var load_game_button: Button
@export var toggle_fullscreen_button: Button
@export var toggle_fullscreen_sprite: TextureRect
@export var to_fullscreen_texture: Texture2D
@export var to_window_texture: Texture2D

func _ready():
	if not OS.has_feature("pc"):
		toggle_fullscreen_button.hide()
	if not FileAccess.file_exists("user://save.sbws"):
		load_game_button.hide()

func _process(delta):
	if Input.is_action_just_pressed("exit"): quit()
	if Input.is_action_just_pressed("play"): play()

func toggle_fullscreen():
	if not OS.has_feature("pc"): return
	if DisplayServer.window_get_mode() == DisplayServer.WINDOW_MODE_FULLSCREEN:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
		toggle_fullscreen_sprite.texture = to_fullscreen_texture
	else:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
		toggle_fullscreen_sprite.texture = to_window_texture

func new_game():
	if FileAccess.file_exists("user://save.sbws"):
		DirAccess.remove_absolute("user://save.sbws")
	play()

func play():
	get_tree().change_scene_to_packed(load("res://Scenes/sceneI.tscn"))

func quit():
	get_tree().quit()
