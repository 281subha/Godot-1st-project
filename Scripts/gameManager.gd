extends Node

var coin = 0

func add_coin(killzone):
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
