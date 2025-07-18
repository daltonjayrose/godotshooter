extends CharacterBody2D

func _process(delta):
	
	# Input
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * 500
	move_and_slide()
	
	
	# Laser Shooting Input
	if Input.is_action_pressed("primary_action"):
		print("Firing")
		
	# Grenade Throwing Input
	if Input.is_action_pressed("secondary_action"):
		print("Grenade Out!")
