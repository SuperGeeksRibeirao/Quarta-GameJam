extends KinematicBody2D

export var speed = 400

func _physics_process(delta):
	var velocity = Vector2()
	if Input.is_action_pressed("ui_up"):
		velocity.y -= speed
	if Input.is_action_pressed("ui_down"):
		velocity.y += speed
	velocity = move_and_slide(velocity, Vector2(0, -1))
