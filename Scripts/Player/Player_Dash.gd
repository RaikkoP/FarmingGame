extends Node

var can_dash: bool = true;

func _process(delta):
	if(Input.is_action_just_pressed("roll") && can_dash):
		can_dash = false;
		PlayerVariables.speed += 200;
		$Duration.start();
		$Cooldowns.start();
		print("Rolled");
		
func _on_cooldowns_timeout():
	can_dash = true;


func _on_duration_timeout():
	print("Speed reset");
	PlayerVariables.speed -= 200;
