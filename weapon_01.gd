extends Node2D

var range = 500
var circle_01 = preload("res://circle_01.tscn")

func standard_attacke(player_pos, mouse_pos):
	var vector = mouse_pos-player_pos
	if int(vector.length()) < range:
		print(int(vector.length()))
		var new_particle = circle_01.instantiate()
		new_particle.global_position = mouse_pos

		get_tree().root.get_child(0).get_node("particle_container").add_child(new_particle)
	else:
		print("out of range")
