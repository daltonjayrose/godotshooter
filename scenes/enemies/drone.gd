extends CharacterBody2D

func _process(_delta):
	var direction = Vector2(1, 0)
	velocity = direction * 500
	move_and_slide()
