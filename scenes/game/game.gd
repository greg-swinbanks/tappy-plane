extends Node2D

const PIPES = preload("res://pipes/pipes.tscn")

@onready var spawn_high: Marker2D = $SpawnHigh
@onready var spawn_low: Marker2D = $SpawnLow
@onready var spawn_timer: Timer = $SpawnTimer
@onready var pipes_holder: Node = $PipesHolder


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	spawn_pipes()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func spawn_pipes() -> void:
	var new_pipes: Pipes = PIPES.instantiate()
	var ypos: float = randf_range(spawn_high.position.y, spawn_low.position.y)
	new_pipes.position = Vector2(spawn_high.position.x, ypos)
	pipes_holder.add_child(new_pipes)

func _on_spawn_timer_timeout() -> void:
	spawn_pipes()
