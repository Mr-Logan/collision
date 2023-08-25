extends CharacterBody2D



# Called when the node enters the scene tree for the first time.
func _ready():
	velocity = Vector2(1,1)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	var collision = move_and_collide(velocity*10)
	
	if collision:
		velocity=velocity.bounce(collision.get_normal())

