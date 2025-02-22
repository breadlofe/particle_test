extends Area2D
@export var speed: int = 200
var dir: int
@onready var TimeCreated = Time.get_ticks_msec()
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	translate(Vector2(speed*delta*dir,0))
	if Time.get_ticks_msec() - TimeCreated > 1000:
		queue_free()

func _set_dir(facing):
	dir = facing


func _on_body_entered(body):
	if body.is_in_group("enemy"):
		body.got_hit(0)
		self.queue_free()
