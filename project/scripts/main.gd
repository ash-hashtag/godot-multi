extends Node2D

const APP_ID = 480
var steam_id
var is_online = false
var is_owned = false
#@onready var client = preload("res://objects/client.tscn").instantiate()

func _ready():
	if !(OS.has_feature("steam") || OS.is_debug_build()):
		print("steam is not enabled")
		return
	
	$Control/button.pressed.connect(_on_client_connect)
	
	Steam.lobby_created.connect(_on_lobby_created)
	Steam.lobby_match_list.connect(_on_lobby_match_list)
	Steam.join_requested.connect(_on_join_requested)
	Steam.lobby_chat_update.connect(_on_chat_update)
	Steam.lobby_data_update.connect(_on_lobby_data)
	Steam.lobby_message.connect(_on_lobby_message)
	Steam.lobby_joined.connect(_on_lobby_joined)
	
#	if !Steam.isSteamRunning():
#		printerr("Steam is not running")
#		return
#	Steam.restartAppIfNecessary(APP_ID)
	
	var init = Steam.steamInit()
	print("Did Steam Initialize?: " + str(init))
	
	if init["status"] != 1:
		print("Failed to Initialize Steam "+ str(init['verbal']))
		get_tree().quit()
	steam_id = Steam.getSteamID()
	is_online = Steam.loggedOn()
	is_owned = Steam.isSubscribed()
	
	var myName = Steam.getPersonaName()
	print("My name ", myName)
	
	check_cmd_args()

func _process(delta):
	Steam.run_callbacks()

func _on_client_connect():
	get_tree().change_scene_to_file("res://objects/game.tscn")

#### Steam Signals ######
func _on_lobby_created():
	pass

func _on_lobby_match_list():
	pass

func _on_join_requested():
	pass

func _on_chat_update():
	pass

func _on_lobby_joined():
	pass

func _on_lobby_message():
	pass

func _on_lobby_data():
	pass

##########################
### CMD LINE ARGS ######
##########################


func check_cmd_args():
	var args = OS.get_cmdline_args()
	if !args.is_empty():
		for arg in args:
			pass
	pass
