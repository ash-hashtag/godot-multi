extends Node

var _server = WebSocketServer.new()

func _ready():
	_server.client_connected.connect(_connected)
	_server.client_connected.connect(_disconnected)
	_server.client_close_request.connect(_close_request)
	_server.data_received.connect(_on_data)
	var err = _server.listen(3030)
	if err != OK:
		print("unable to start server")
		OS.crash("unable to start server")
	pass

func _connected(id, proto):
	print("Client %d connected with protocol: %s" % [id, proto])

func _close_request(id, code, reason):
	print("Client %d disconnecting with code: %d, reason: %s" % [id, code, reason])

func _disconnected(id, was_clean = false):
	print("Client %d disconnected, clean: %s" % [id, str(was_clean)])

func _on_data(id: int):
	# Print the received packet, you MUST always use get_peer(id).get_packet to receive data,
	# and not get_packet directly when not using the MultiplayerAPI.
	var pkt = _server.get_peer(id).get_packet()
	print("Got data from client %d: %s ... echoing" % [id, pkt.get_string_from_utf8()])
	_server.get_peer(id).put_packet(pkt)

func _process(delta):
	_server.poll()
