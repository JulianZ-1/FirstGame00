extends CharacterBody2D

@onready var animated_sprite = $AnimatedSprite2D

var SPEED = 130.0
const JUMP_VELOCITY = -300.0

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):

	var direction = Input.get_axis("move_left", "move_right")
		
	if is_on_floor():
		if direction == 0:
			animated_sprite.play("idle")
		else:
			animated_sprite.play("run")
	else:
		animated_sprite.play("jump")
	
	if Input.get_axis("run_left", "run_right"):
		SPEED = 200
	else:
		SPEED = 130
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	
	if direction < 0:
		animated_sprite.flip_h = true
	if direction > 0:
		animated_sprite.flip_h = false

	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	move_and_slide()
