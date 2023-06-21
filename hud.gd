extends TextureButton


func _ready():
	pass 





func _on_TextureButton_pressed():
	get_tree().change_scene("res://rafa/sena do rafa.tscn")


func _on_Exit_pressed():
	get_tree().quit()
