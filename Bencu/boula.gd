extends Area2D
var speed = Vector2(0,200)

func _ready():
	rotation_degrees += rand_range(0,360)

func _physics_process(delta):
	position += speed.rotated(rotation) * delta




func _on_boula_body_entered(body):
	if body.name == 'parede':
		rotation = -rotation
		speed = -speed
		rotation_degrees += rand_range(90,-90)
