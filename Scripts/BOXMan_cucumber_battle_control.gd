class_name BOXMan_cucumber_battle_control extends BOXMan_td_base_control

@export var anim_player: AnimationPlayer

func _ready():
	anim_player.play("cucumber_comes_animation")

func _process(delta):
	if not anim_player.is_playing():
		super._process(delta)
