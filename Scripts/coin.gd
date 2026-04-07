extends Area2D


func _on_body_entered(body: Node2D) -> void:
	GameManager.add_coin()
	print(GameManager.coin)
	queue_free()
	
