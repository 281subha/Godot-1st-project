extends CharacterBody2D


const SPEED = 100.0
const JUMP_VELOCITY = -300.0
@onready var player_sprite = $AnimatedSprite2D

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	#if (Input.is_action_just_pressed("ui_accept") or GameManager.jump_pressed) and is_on_floor() :
	if Input.is_action_just_pressed("ui_accept") and is_on_floor() :
		velocity.y = JUMP_VELOCITY
		#GameManager.jump_pressed = false

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	#if direction == 0:
		#direction = GameManager.move_direction
	
	# Apply direction --
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	# Flip the sprite --
	if direction > 0:
		player_sprite.flip_h = false
	elif direction < 0:
		player_sprite.flip_h = true
		
	# Play Animation --
	if is_on_floor():
		if direction == 0:
			player_sprite.play("Idle")
		else:
			player_sprite.play("Run")
	else:
		player_sprite.play("Jump")
	
	move_and_slide()
