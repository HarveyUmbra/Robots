extends Label

var random = RandomNumberGenerator.new()
var array = ["א","ב","ג","ד","ה","ו","ז","ח","ט","י","כ","ל","מ","נ","ס"]
# Called when the node enters the scene tree for the first time.
func _ready():
	self.set_text(array[random.randi_range(0,array.size()-1)])
	pass # Replace with function body.
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
