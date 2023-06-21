extends Area2D
var speed = Vector2(0,350)
var random = RandomNumberGenerator.new()
var PontoPlayer1 = 0
var PontoPlayer2 = 0
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



func _on_Area2D2_area_entered(area):
	PontoPlayer1 = PontoPlayer1 + 1
	global_position = Vector2(759,591)
	rotation_degrees += random.randf_range(-360.0,360.0)
	
func _on_Area2D_area_entered(area):
	PontoPlayer2 = PontoPlayer2 + 1
	global_position = Vector2(759,591)
	rotation_degrees += random.randf_range(-360.0,360.0)


func _on_Area2D4_area_entered(area):
	global_position = Vector2(759,591)
	rotation_degrees += random.randf_range(-360.0,360.0)
