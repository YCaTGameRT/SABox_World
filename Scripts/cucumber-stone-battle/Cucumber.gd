class_name Cucumber extends CharacterBody2D

@export var _player: CharacterBody2D
@export var _anim: AnimationPlayer

@onready var _sprite = $"./sprite"

var _speed = 30

func _physics_process(delta):
	if not _anim.is_playing():
		var vector = (_player.position - position).normalized()
		velocity = vector * _speed
		
		if vector.x > 0:
			_sprite.flip_h = false
		elif vector.x < 0:
			_sprite.flip_h = true
		
		move_and_slide()
