extends KinematicBody2D

var movimento = Vector2()
var speed = 500

func _physics_process(delta):
	
	if Input.is_action_pressed("ui_up"):
		movimento.y = -speed
	elif Input.is_action_pressed("ui_down"):
		movimento.y = speed
		
	move_and_slide(movimento)
