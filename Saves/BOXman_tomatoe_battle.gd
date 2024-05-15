class_name BOXman_tomatoe_battle extends BOXMan_td_base_control

@export var anim_player2: AnimationPlayer

func _ready():
	anim_player2.play("tomatoe_morph_anim")

func _process(delta):
	if not anim_player2.is_playing():
		super._process(delta)
