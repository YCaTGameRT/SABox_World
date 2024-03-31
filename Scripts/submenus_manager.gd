class_name Submenus_manager extends Node

@export var main_submenu: Control
func show_main_submenu(): show_submenu(main_submenu)
@export var play_submenu: Control
func show_play_submenu(): show_submenu(play_submenu)

@onready var all_submenus: Array[Control] = [main_submenu, play_submenu]
@export var back_button: Button

func show_submenu(submenu_to_show: Control):
	for submenu in all_submenus: submenu.hide()
	submenu_to_show.show()
	if submenu_to_show == main_submenu:
		back_button.hide()
	else:
		back_button.show()

func _ready():
	show_main_submenu()
