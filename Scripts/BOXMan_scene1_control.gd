class_name BOXMan_scene1_control extends BOXMan_td_base_control

func _on_bridge_detector_area_entered(area):
	if area.get_meta("collision_tag") == "bridge":
		set_collision_mask_value(2, false)

func _on_bridge_detector_area_exited(area):
	if area.get_meta("collision_tag") == "bridge":
		set_collision_mask_value(2, true)
