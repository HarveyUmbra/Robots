extends Node2D

@onready var KI = preload("res://Scenes/Charcters/KI_Default.tscn")
@onready var KI_Camera = preload("res://Scenes/Charcters/KI_Camera.tscn")
@onready var HU_Standart = preload("res://Scenes/Charcters/HU_Default.tscn")
@onready var HU_Alone = preload("res://Scenes/Charcters/HU_Alone.tscn")
@onready var spawntimer: Timer = $Timer

var random = RandomNumberGenerator.new()

func _ready():
	random.randomize()
	spawntimer.start()
	pass # Replace with function body.

func _process(_delta):
	pass

func _on_timer_timeout():
	match random.randi_range(0,5):
		0,1:
			var instance = KI.instantiate()
			instance.position = get_new_spawn_position()
			self.add_child(instance)
			pass
		2:
			var instance = KI_Camera.instantiate()
			instance.position = get_new_spawn_position()
			self.add_child(instance)
			pass
		3,4:
			var instance = HU_Standart.instantiate()
			instance.position = get_new_spawn_position()
			self.add_child(instance)
			pass
		5:
			var instance = HU_Alone.instantiate()
			instance.position = get_new_spawn_position()
			self.add_child(instance)
			pass
	pass

func get_new_spawn_position() -> Vector2:
	var win = get_viewport().size
	return Vector2(random.randf_range(1,win.x),random.randf_range(1,win.y))
