extends CharacterBody2D

var can_laser: bool = true
var can_grenade: bool = true
signal laser
signal grenade

func _process(_delta):
	
	# Input
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * 500
	move_and_slide()
	
	
	# Laser Shooting Input
	if Input.is_action_pressed("primary_action") and can_laser:
		print("Firing!")
		laser.emit()
		can_laser = false
		$LaserTimer.start()
		
		
	# Grenade Throwing Input
	if Input.is_action_pressed("secondary_action") and can_grenade:
		print("Grenade Out!")
		grenade.emit()
		can_grenade = false
		$GrenadeTimer.start()


func _on_laser_timer_timeout() -> void:
	can_laser = true


func _on_grenade_timer_timeout() -> void:
	can_grenade = true
