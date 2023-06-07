extends KinematicBody2D

var speed = Vector2(0,200)

func _physics_process(delta):
	position += speed.rotated(rotation) * delta

func _on_Area2D_body_entered(body):
	
