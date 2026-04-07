extends Area2D

@onready var timer: Timer = $Timer


func _on_body_entered(body: Node2D) -> void:
	print("killzone activated")
	activate_killzone()
	
func activate_killzone():
	print("Player died")
	timer.start()
	GameManager.reset_coin()
	
func _on_timer_timeout() -> void:
	get_tree().reload_current_scene()
