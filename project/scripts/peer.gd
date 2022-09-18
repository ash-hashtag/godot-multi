extends Node

signal _peer_transform

var p_id: float

var peer = WebRTCPeerConnection.new()

var chat = peer.create_data_channel("chat", {"id": 1, "negotiated": true})

func _ready(): 
	set_process(false)
	randomize()
	p_id = float(randi())

func init():
	peer.session_description_created.connect(_on_session)
	peer.ice_candidate_created.connect(_on_ice_candidate)
	peer.create_offer()
	set_process(true)


func _process(_delta):
	peer.poll()

	if chat.get_ready_state() == chat.STATE_OPEN && chat.get_available_packet_count() > 0:
		var packet = chat.get_packet()
		var sbp = StreamPeerBuffer.new()
		sbp.data_array = packet
		_peer_transform.emit(sbp)

func send_message(text: String):
	chat.put_packet(text.to_utf8_buffer())

func send(tr: Array[float]):
	tr.append(p_id)
	var sbp = StreamPeerBuffer.new()
	sbp.put_var(tr)
	if peer.get_connection_state() == peer.STATE_CONNECTED:
		chat.put_packet(sbp.data_array)
#	else:
#		print(peer.get_connection_state())

func on_remote_ice(mid, index, sdp):
	peer.add_ice_candidate(mid, index, sdp)
	print("got an ice mid: ", mid, " index ", index, " sdp ", sdp)

func _on_ice_candidate(mid, index, sdp):
	var data = {"mid": mid, "index": index, "sdp": sdp}
	get_parent().send(JSON.stringify(data))
	print("sent an ice ", data)

func _on_session(type, sdp):
	peer.set_local_description(type, sdp)
	var data = {"type": type, "sdp": sdp}
	get_parent().send(JSON.stringify(data))
	print("sent sdp ", data)
	pass

func on_remote_session(type, sdp):
	peer.set_remote_description(type, sdp)

func _on_message(text: String):
	print("recieved a message ", text)
	get_parent().add_message(text)
	pass
