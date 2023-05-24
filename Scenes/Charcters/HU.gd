extends CharacterBody2D

@onready var line = preload("res://Scenes/path/path_KI.tscn")
var random = RandomNumberGenerator.new()

func _ready():
	random.randomize()
	pass

func _physics_process(_delta):
	var win = get_viewport().size
	velocity.y += random.randf_range(-1,1)
	velocity.x += random.randf_range(-1,1)
	move_and_slide()
	
	if win.x-50 < position.x or position.x < 50:
		queue_free()
	if win.y-50 < position.y or position.y < 50:
		queue_free()
	pass

func _on_area_2d_area_entered(area):
	var name = area.get_parent().get_name()
	#if name.find("K") == -1:
	var instance = line.instantiate()
	instance.set_father(area.get_parent())
	instance.set_mother(self)
	get_parent().add_child(instance)
	#	pass
	pass # Replace with function body.
