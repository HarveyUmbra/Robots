extends Line2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var posA = get_parent().curve.get_point_position(0)
	var posB = get_parent().curve.get_point_position(1)
	var direction = posA - posB
	var shortenAmount = 10
	self.set_point_position(0,posA)
	self.set_point_position(1,posB)
	pass
