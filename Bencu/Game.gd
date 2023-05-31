extends Node2D

var ball_scene = preload("res://Bencu/ball.gd")
var ball_instance = null

func _ready():
	spawn_ball()

func spawn_ball():
	if ball_instance != null:
		remove_child(ball_instance)
	ball_instance = ball_scene.instance()
	add_child(ball_instance)
