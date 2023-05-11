extends Node2D

@onready var scene = load("res://Scenes/Node.tscn")

var random = RandomNumberGenerator.new()

var timer_raw = 0
var timer
# Called when the node enters the scene tree for the first time.
func _ready():
	random.randomize()
	var instance = scene.instantiate()
	var instance2 = scene.instantiate()
	instance.position = Vector2(500,300)
	instance2.position = Vector2(500,350)
	self.add_child(instance)
	self.add_child(instance2)
	pass # Replace with function body.
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
#	timer_raw += delta
#	timer = round(timer_raw)
#	var instance = scene.instantiate()
#	if timer > 4:
#		var win = get_viewport().size
#
#		instance.position = Vector2(random.randf_range(1,win.x),random.randf_range(1,win.y))
#		self.add_child(instance)
#		timer_raw = 0
	pass
