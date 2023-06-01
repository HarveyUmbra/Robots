extends Sprite2D

var random = RandomNumberGenerator.new()
var Image1 = load("res://Images/Human_Variant.svg")
var Image2 = load("res://Images/Human_Alone.svg")
var Image3 = load("res://Images/Human_Variant2.svg")
# Called when the node enters the scene tree for the first time.
func _ready():
	match random.randi_range(0,2):
		0:
			self.texture = Image1
		1:
			self.texture = Image2
		2:
			self.texture = Image3
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
