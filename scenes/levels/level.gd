extends Node2D

var test_array: Array[String] = ["Test", "Test2", "Test3"]


func _ready():
	$Logo.rotation_degrees = 90
	
	print(test_array[0])
	
func _process(delta):
	$Logo.rotation_degrees += 25 * delta
	
	if $Logo.position.x > 1000:
		$Logo.pos.x = 0
		
	#print(Input.is_action_pressed("left"))
func test_function(): 
	print('This is a test function')
