extends CharacterBody2D

const jumpVel = -900.0
const antiJumpVel = 900.0

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta
	
	if Input.is_action_just_pressed("jump"):
		velocity.y = jumpVel
	
	if Input.is_action_just_pressed("anti-jump"):
		velocity.y = antiJumpVel
	
	move_and_slide()
