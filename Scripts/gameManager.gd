extends Node

var ui_manager = null
var coin = 0
var is_restart = false

func _ready() -> void:
	Engine.time_scale = 0
	

func Resume_game():
	Engine.time_scale = 1

func Pause_game():
	Engine.time_scale = 0
	
func Restart_game():
	Reset_coin()
	is_restart = true
	get_tree().reload_current_scene()

func Game_over():
	ui_manager.ShowGameoverPopup()
	Reset_coin()

func Add_coin(killzone):
	coin += 1
	
	if coin == 17:
		killzone.activate_killzone()

func Reset_coin():
	coin = 0

func Quit():
	get_tree().quit()



# Called when the node enters the scene tree for the first time.
#func _ready() -> void:
	#pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#pass
