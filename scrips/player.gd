extends CharacterBody2D

@export var speed = 600

var up = "up"
var down = "down"
var left = "left"
var right = "right"


func _input(event):
	var input_direction = Input.get_vector(left,right, up, down)
	velocity = input_direction * speed
	
	if event is InputEventKey:
		var keycode = DisplayServer.keyboard_get_keycode_from_physical(event.physical_keycode)
		print(OS.get_keycode_string(keycode))
		#if Input.is_action_just_pressed("Q"):
			#up = "Q"
			#print("up = q")

func _physics_process(delta):
	
	move_and_slide()
