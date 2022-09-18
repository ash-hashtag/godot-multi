extends Node2D

#@onready var client = preload("res://objects/client.tscn").instantiate()

func _ready():
	$Control/button.pressed.connect(_on_client_connect)

func _on_client_connect():
	get_tree().change_scene_to_file("res://objects/game.tscn")
#	add_child(client)
#	$Control/button.text = "disconnect"


func send(data: Dictionary) -> void:
#	client.send(JSON.stringify(data))
	pass
	
