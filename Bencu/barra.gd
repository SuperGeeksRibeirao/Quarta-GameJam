extends KinematicBody2D

var speed = 500
var movimento = Vector2()

func _physics_process(delta):
	
	if Input.is_action_pressed("ui_up"):
		movimento.y = -speed
	elif Input.is_action_pressed("ui_down"):
		movimento.y = speed
	else:
		movimento.y = speed - speed
	move_and_slide(movimento)
