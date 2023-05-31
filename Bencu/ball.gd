extends KinematicBody2D

export var speed = 400

var velocity = Vector2()

func _ready():
	var random_direction = rand_range(0, 1)
	if random_direction < 0.5:
		velocity = Vector2(speed, -speed)
	else:
		velocity = Vector2(-speed, speed)

func _physics_process(delta):
	move_and_slide(velocity)
