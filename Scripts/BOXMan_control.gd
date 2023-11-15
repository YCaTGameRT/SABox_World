class_name BOXMan_control extends CharacterBody2D

var speed = 14000

func _process(delta):
	var move_up = Input.is_action_pressed("movement_up")
	var move_down = Input.is_action_pressed("movement_down")
	var move_right = Input.is_action_pressed("movement_right")
	var move_left = Input.is_action_pressed("movement_left")
	
	var movement_vector = Vector2(0, 0)
	
	if move_up != move_down: movement_vector.y = 1 if move_down else -1
	if move_right != move_left: movement_vector.x = 1 if move_right else -1
	
	velocity = movement_vector.normalized() * speed * delta
	move_and_slide()
