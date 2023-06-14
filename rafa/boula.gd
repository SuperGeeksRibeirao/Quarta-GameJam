extends Area2D
var speed = Vector2(0,350)
var random = RandomNumberGenerator.new()

func _ready():
	random.randomize()
	var my_random_number = random.randf_range(-360.0,360.0)
	rotation_degrees += my_random_number
func _physics_process(delta):
	position += speed.rotated(rotation) * delta
	



func _on_boula_body_entered(body):
	if body.name == 'parede' or "player":
		rotation = rotation
		speed = -speed
		rotation_degrees += rand_range(0,90)

