extends Path2D

var father
var mother

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if father != null and mother != null:
		self.curve.set_point_position(0,father.position)
		self.curve.set_point_position(1,mother.position)
		print(father.position)
		print(mother.position)
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
