class_name Singleton extends Node

static var node: Node

func _ready():
	if node == null:
		node = self
	else:
		queue_free()
