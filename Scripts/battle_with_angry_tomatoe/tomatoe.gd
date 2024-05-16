class_name tomatoe extends CharacterBody2D

@export var _player: CharacterBody2D
@export var _anim2: AnimationPlayer

@onready var _sprite = $"./sprite"

var _speed = 20

func _physics_process(delta):
	if not _anim2.is_playing():
		var vector = (_player.position - position).normalized()
		velocity = vector * _speed
		
		if vector.x > 0:
			_sprite.flip_h = true
		elif vector.x < 0:
			_sprite.flip_h = false
		
		move_and_slide()
