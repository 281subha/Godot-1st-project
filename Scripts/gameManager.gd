extends Node

@onready var killzone = $"../../Killzone"
var coin = 0

func add_coin():
	coin += 1
	
	if coin == 17:
		killzone.activate_killzone()

func reset_coin():
	coin = 0


# Called when the node enters the scene tree for the first time.
#func _ready() -> void:
	#pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#pass
