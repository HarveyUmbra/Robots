extends Node2D

@onready var test = load("res://Scenes/Node.tscn")

var random = RandomNumberGenerator.new()
var timer_raw = 0
var timer
# Called when the node enters the scene tree for the first time.
func _ready():
	random.randomize()
	spawn(Vector2(random.randf_range(1,100),random.randf_range(1,100)))
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	timer_raw += delta
	timer = round(timer_raw)

	if timer > 4:
		var win = get_viewport().size
		spawn(Vector2(random.randf_range(1,win.x),random.randf_range(1,win.y))) #call every 4 seconds
		timer_raw = 0
		
		
	pass

func spawn(pos:Vector2):
	var instance = test.instantiate()
	instance.position = pos
	self.add_child(instance)
	
