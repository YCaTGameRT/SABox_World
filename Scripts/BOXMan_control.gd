class_name BOXMan_control extends CharacterBody2D

@onready var player_sprite = $"./Sprite2D"

var speed = 140

func _process(delta):
	var move_up = Input.is_action_pressed("movement_up")
	var move_down = Input.is_action_pressed("movement_down")
	var move_right = Input.is_action_pressed("movement_right")
	var move_left = Input.is_action_pressed("movement_left")
	
	var movement_vector = Vector2(0, 0)
	
	if move_up != move_down: movement_vector.y = 1 if move_down else -1
	if move_right != move_left:
		movement_vector.x = 1 if move_right else -1
		player_sprite.flip_h = move_right
	
	velocity = movement_vector.normalized() * speed
	move_and_slide()

func _on_bridge_detector_area_entered(area):
	if area.get_meta("collision_tag") == "bridge":
		set_collision_mask_value(2, false)

func _on_bridge_detector_area_exited(area):
	if area.get_meta("collision_tag") == "bridge":
		set_collision_mask_value(2, true)
