extends Area2D

@onready var killzone = $"../../Killzone"

func _on_body_entered(body: Node2D) -> void:
	GameManager.add_coin(killzone)
	print(GameManager.coin)
	queue_free()
	
