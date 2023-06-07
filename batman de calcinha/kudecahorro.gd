extends Area2D

var speed = Vector2(0,200)



func _physics_process(delta):
	position += speed.rotated(rotation) * delta
	
func _on_Are2D_body_entered(body):
	
	
	
	if body.name == "Player1" or "Player2" or "Parede":
		rotation = -rotation
		speed =-speed
	
