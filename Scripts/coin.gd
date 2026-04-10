extends Area2D

@onready var killzone = $"../../Killzone"

func _on_body_entered(body: Node2D) -> void:
	GameManager.Add_coin(killzone)
	print(GameManager.coin)
	queue_free()
	
