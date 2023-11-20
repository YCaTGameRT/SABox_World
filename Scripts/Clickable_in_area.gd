class_name Clickable_in_area extends Node

var _clickable = false

@export var area_for_player: Area2D
@export var area_for_clicks: Area2D

func _ready():
	area_for_player.body_entered.connect(_player_area_entered)
	area_for_player.body_exited.connect(_player_area_exited)
	area_for_clicks.input_event.connect(_clicks_area_input_event)

func _player_area_entered(body):
	if body.get_meta("collision_tag") == "player":
		_clickable = true

func _player_area_exited(body):
	if body.get_meta("collision_tag") == "player":
		_clickable = false

func _clicks_area_input_event(viewport, event, shape_idx):
	if _clickable and event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		_on_click()

func _on_click(): pass
