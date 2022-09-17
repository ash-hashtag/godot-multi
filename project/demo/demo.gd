extends Node2D

#@onready var client = preload("res://objects/client.tscn").instantiate()

func _ready():
	$Control/button.pressed.connect(_on_client_connect)
	$Control/sendbtn.pressed.connect(_on_send)

func _on_client_connect():
	get_tree().change_scene_to_file("res://objects/game.tscn")
#	add_child(client)
#	$Control/button.text = "disconnect"

func _on_send():
	var textEdit = $Control/TextEdit
#	client.get_node("Peer").send_message(textEdit.text)
	textEdit.text = ""

func send(data: Dictionary) -> void:
#	client.send(JSON.stringify(data))
	pass
	
