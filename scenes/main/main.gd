extends Control


@onready var score_label: Label = $MarginContainer/ScoreLabel

func _ready() -> void:
	score_label.text = str(ScoreManager.get_high_score())


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("fly"):
		GameManager.load_game_scene()
