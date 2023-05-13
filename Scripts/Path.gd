extends Path2D

@onready var line = load("res://Scenes/test.tscn")
var random = RandomNumberGenerator.new()

var father
var mother

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if father != null and mother != null:
		var instance = line.instantiate()
		add_child(instance)
		self.curve.set_point_position(0,father.position)
		self.curve.set_point_position(1,mother.position)
		print(self.curve.get_point_position(0))
		print(self.curve.get_point_position(1))
		pass
	else:
		queue_free()
		pass
	pass
	
func set_father(_father):
	father = _father
func set_mother(_mother):
	mother = _mother
func get_father():
	return father
