extends KinematicBody2D

var movimento = Vector2()
var speed = 500

func _physics_process(delta):
	
	if Input.is_key_pressed(KEY_W):
		movimento.y = -speed
	elif Input.is_key_pressed(KEY_S):
		movimento.y = speed
		
	move_and_slide(movimento)
