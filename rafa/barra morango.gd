extends KinematicBody2D

var speed = 400

func _physics_process(delta):
	var velocity = Vector2()
	if Input.is_key_pressed(KEY_W):
		velocity.y -= speed
	if Input.is_key_pressed(KEY_S):
		velocity.y += speed
	velocity = move_and_slide(velocity, Vector2(0, -1))
