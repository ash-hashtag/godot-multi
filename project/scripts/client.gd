extends Node

const websocketUrl = "ws://127.0.0.1:3030"
@onready var peer = $Peer
var _client = WebSocketClient.new()

func _ready():
	_client.connection_established.connect(_connected)
	_client.connection_closed.connect(_closed)
	_client.connection_error.connect(_closed)
	_client.data_received.connect(_on_data)
	var err = _client.connect_to_url(websocketUrl)
	print(err)
	if err != OK:
		print("unable to connect to server", err)
		OS.crash("failed to connect to server")
		set_process(false)
	pass

func _connected(proto: String) -> void:
	print("Connected successfully", proto)
	peer.init()
	print("Added peer")

func _on_data() -> void:
	var data = JSON.parse_string(_client.get_peer(1).get_packet().get_string_from_utf8())
	print("recieved ", data)
	if data.has_all(["type", "sdp"]):
		peer.on_remote_session(data["type"], data["sdp"])
	elif data.has_all(["mid", "index", "sdp"]):
		peer.on_remote_ice(data["mid"], data["index"], data["sdp"])

func _closed(clean: bool) -> void:
	print("connection closed ", clean)

func _process(delta):
	_client.poll()

func send(text: String):
	_client.get_peer(1).put_packet(text.to_utf8_buffer())

func add_message(text: String):
	get_parent().get_node("Control/messages").text += text + '\n'
