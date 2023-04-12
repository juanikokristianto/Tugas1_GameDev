extends CharacterBody2D

var SPEED = 200

func _ready():
	pass 

func _process(_delta):
	#novement
	movement_diag()
	move_and_slide()
		
func movement():
	if Input.get_action_strength("move_down"):
		position.y += SPEED
	elif Input.get_action_strength("move_up"):
		position.y += SPEED
	elif Input.get_action_strength("move_right"):
		position.y += SPEED
	elif Input.get_action_strength("move_left"):
		position.y += SPEED
	
func movement_diag():
		var x_move = Input.get_action_strength("right")-Input.get_action_strength("left")
		var y_move = Input.get_action_strength("down")-Input.get_action_strength("up")
		velocity = Vector2(x_move, y_move) * SPEED
		return velocity
