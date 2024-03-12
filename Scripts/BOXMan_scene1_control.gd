class_name BOXMan_scene1_control extends BOXMan_td_base_control

func _on_bridge_detector_area_entered(area):
	if area.has_meta("collision_tag") and area.get_meta("collision_tag") == "bridge":
		set_collision_mask_value(2, false)

func _on_bridge_detector_area_exited(area):
	if area.has_meta("collision_tag") and area.get_meta("collision_tag") == "bridge":
		set_collision_mask_value(2, true)

func save_state() -> Dictionary:
	return {
		"position": {
			"x": position.x,
			"y": position.y
		},
		"on_bridge": !get_collision_mask_value(2),
		"sprite_flipped": player_sprite.flip_h
	}

func load_state(save_data: Dictionary):
	if save_data.has("on_bridge") and save_data["on_bridge"] is bool:
		set_collision_mask_value(2, !save_data["on_bridge"])
	if save_data.has("position") and save_data["position"] is Dictionary and \
	   save_data["position"].has_all(["x", "y"]) and \
	   save_data["position"]["x"] is float and save_data["position"]["y"] is float:
		position = Vector2(save_data["position"]["x"], save_data["position"]["y"])
	if save_data.has("sprite_flipped") and save_data["sprite_flipped"] is bool:
		player_sprite.flip_h = save_data["sprite_flipped"]
