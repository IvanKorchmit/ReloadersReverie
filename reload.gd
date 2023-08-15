extends Node3D


@export var weapon: Gun

@onready var animation_player = $db/AnimationPlayer
@onready var animation_tree = $db/AnimationTree

var cooldown: bool = false
var animation_name: String = ""

var current_barrel: int = 0 
