extends Sprite2D

const SPEED = 0.2

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.global_position.x += SPEED
	if self.global_position.x >= 1250:
		self.global_position.x = -150
