extends CharacterBody2D

@export var speed = 300


var up = "up"
var down = "down"
var left = "left"
var right = "right"

@onready var weapon = $weapon_container.get_child(0)


func _input(event):
	var input_direction = Input.get_vector(left,right, up, down)
	velocity = input_direction * speed
	
	#if event is InputEventKey:
		#var keycode = DisplayServer.keyboard_get_keycode_from_physical(event.physical_keycode)
		#print(OS.get_keycode_string(keycode))
		#if Input.is_action_just_pressed("Q"):
			#up = "Q"
			#print("up = q")

func _physics_process(delta):
	look_at(get_global_mouse_position())
	
	attack_movement()
	
	move_and_slide()

func attack_movement():
	if Input.is_action_just_pressed("lmb"):
		stadard_attack()

func stadard_attack():
	print(weapon.name)
	weapon.standard_attacke(global_position, get_global_mouse_position())
