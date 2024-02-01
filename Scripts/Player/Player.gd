extends CharacterBody2D

func _ready():
	pass

func get_input():
	var input_direction = Input.get_vector("left","right","up","down");
	return input_direction * PlayerVariables.speed;

func _process(delta):
	velocity = get_input();
	move_and_slide();
