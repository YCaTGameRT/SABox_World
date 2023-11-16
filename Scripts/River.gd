class_name River extends Sprite2D

var texture_shift_speed = Vector2(-1.5, 1.5)
var texture_width = texture.get_width()
var texture_height = texture.get_height()

func _process(delta):
	region_rect.position += texture_shift_speed * delta
	
	if region_rect.position.x < -texture_width:
		region_rect.position.x += texture_width
	if region_rect.position.y > texture_height:
		region_rect.position.y -= texture_height
