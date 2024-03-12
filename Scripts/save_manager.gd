class_name Save_manager extends Singleton

@export var player: BOXMan_scene1_control

func _ready():
	super._ready()
	load_game()

func load_game():
	if not FileAccess.file_exists("user://save.sbws"): return
	
	var save_file: FileAccess = FileAccess.open("user://save.sbws", FileAccess.READ)
	var save_data: Dictionary = JSON.parse_string(save_file.get_line())
	save_file.close()
	
	if save_data.has("player") and save_data["player"] is Dictionary:
		player.load_state(save_data["player"])

func save_game():
	if FileAccess.file_exists("user://save.sbws"):
		DirAccess.remove_absolute("user://save.sbws")
	
	var save_data: Dictionary = {
		"player": player.save_state()
	}
	
	var save_file: FileAccess = FileAccess.open("user://save.sbws", FileAccess.WRITE)
	save_file.store_line(JSON.stringify(save_data))
	save_file.close()
