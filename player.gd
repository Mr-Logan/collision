extends StaticBody2D

var speed=3
var direction = Vector2.ZERO
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func GetInput():
	direction = Input.get_vector("ui_left","ui_right","ui_up","ui_down")
	direction.x =0
	if Input.is_action_pressed("ui_accept"):
		get_tree().quit()
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	GetInput()
	position+=direction*speed
