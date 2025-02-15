class_name ItemData
extends Resource

enum Type {KEY, MAIN}

@export var type:= Type
@export var name: String
@export_multiline var description: String
@export var texture: Texture2D
@export var health: int
