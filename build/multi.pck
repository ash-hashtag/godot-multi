GDPC                  �
                                                                         T   res://.godot/exported/133200997/export-023773b42dc67874135d794fa62e277d-client.scn  �      y      �܁�/y��Lo��ـC    P   res://.godot/exported/133200997/export-17ab855984f9d361952c52f1b9189f3a-main.scn       �      �t�$�^�ͫ��gwm��    T   res://.godot/exported/133200997/export-35d6e51b3c2596456d00ed12dd79cb1c-dummy.scn   p      �      4J��MXu���MW)�j�    X   res://.godot/exported/133200997/export-704e956d50d02a7b2f0e639e0adda0e4-multi_peer.scn  �      x      �I_/��.$�g�N    T   res://.godot/exported/133200997/export-be84786c25e2ec82335e5f085993941f-server.scn          q      I�Z��)���Yf�'    X   res://.godot/exported/133200997/export-de7466bf0ba81ba9b562c4a70daf6395-other_peer.scn  p      '      �>�+q��z�m�yN/�    P   res://.godot/exported/133200997/export-fa1fe529667f00fef77615248dc1d103-peer.scn�      m      Ej_!���hWĈ��    P   res://.godot/exported/133200997/export-fb76a69341a71d27f6f5dce1b13c8bf0-game.scn0      �      �X�6X˘j�q|����    T   res://.godot/exported/133200997/export-fd917217c4a5592248a679abd5f3a5fe-player.scn              ��\V�ۙ���о        res://.godot/extension_list.cfg �@              
bs�]]3�����*�B    H   res://.godot/imported/square.png-a07b0c09e99da012e8f7e5d58d728c57.ctex          n       �(�c��T@��J��^       res://.godot/uid_cache.bin  p?      u      o�M݋�b-v^���S        res://assets/square.png.import  p       �      3Hd"\YX�`*=�k+�       res://demo/demo.gd  `      �      ��c�qE&i���ݷ�        res://objects/client.tscn.remap �;      c       raY�Mjw�>
�C        res://objects/dummy.tscn.remap  �;      b       Ut��-<h2<��-        res://objects/game.tscn.remap   `<      a       f���;�^}*�M��        res://objects/main.tscn.remap   �<      a       �e"�3	��K�w4    $   res://objects/multi_peer.tscn.remap @=      g       ���`B)g���CK�    $   res://objects/other_peer.tscn.remap �=      g       7sQd��k�l��*�        res://objects/peer.tscn.remap    >      a       ުTUJ�&" t( �4        res://objects/player.tscn.remap �>      c       ���`����h[DC�2�        res://objects/server.tscn.remap  ?      c       �lO�֥*i;F��       res://project.binaryA      �       �kQӦ�vDȊ,�2��       res://scripts/client.gd �"            btKnP\F�dx�!XW�       res://scripts/game.gd   �'      <      &��㐐�l:U�*l       res://scripts/multi_peer.gd  *      o       ��!�d��˾;�x       res://scripts/peer.gd   p*      d      ��j{}wi_1�<�!$Y       res://scripts/player.gd �0             e|eµ���X^����R       res://scripts/server.gd �3      D      [�c�z?��ņ�f|�        res://webrtc/webrtc.gdextension 08      F      �;R��2Q���� cG    ����;�}(:GST2            ����                        6   RIFF.   WEBPVP8L"   /�� �������@���E�?�?�������='[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://bf2xinq1wdqgj"
path="res://.godot/imported/square.png-a07b0c09e99da012e8f7e5d58d728c57.ctex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/square.png"
dest_files=["res://.godot/imported/square.png-a07b0c09e99da012e8f7e5d58d728c57.ctex"]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_compression=1
compress/bptc_ldr=0
compress/normal_map=0
compress/channel_pack=0
mipmaps/generate=false
mipmaps/limit=-1
roughness/mode=0
roughness/src_normal=""
process/fix_alpha_border=true
process/premult_alpha=false
process/normal_map_invert_y=false
process/hdr_as_srgb=false
process/hdr_clamp_exposure=false
process/size_limit=0
detect_3d/compress_to=1
�extends Node2D

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
	
[�6]�S�.q ڥRSRC                     PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://scripts/client.gd ��������   PackedScene    res://objects/peer.tscn ���v/L_   Script    res://scripts/peer.gd ��������      local://PackedScene_syxtt p         PackedScene          	         names "         Client    script     metadata/_edit_vertical_guides_ "   metadata/_edit_horizontal_guides_    Node    Peer    	   variants                                                node_count             nodes        ��������       ����                                                              conn_count              conns               node_paths              editable_instances              version             RSRCHue�_[�RSRC                     PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   _bundled    
   Texture2D    res://assets/square.png ��B6�&      local://RectangleShape2D_6s54t ]         local://PackedScene_qxl1w �         RectangleShape2D       
     �B  �B         PackedScene          	         names "   	      dummy    CharacterBody2D    CollisionShape2d    shape    CollisionShape2D 	   Sprite2d    scale    texture 	   Sprite2D    	   variants                 
   ��L>��L>                node_count             nodes        ��������       ����                      ����                            ����                         conn_count              conns               node_paths              editable_instances              version             RSRC��9�%�rD���mRSRC                     PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://scripts/game.gd ��������   PackedScene    res://objects/dummy.tscn �v,��d�   PackedScene    res://objects/client.tscn �e�G�o�   Script    res://scripts/client.gd ��������   PackedScene    res://objects/player.tscn �������*   Script    res://scripts/player.gd ��������      local://PackedScene_ed6jt          PackedScene          	         names "         game    script    dummy    Node2D    Client     metadata/_edit_vertical_guides_ "   metadata/_edit_horizontal_guides_    Node    Player    CharacterBody2D 	   Camera2d    current 	   Camera2D    	   variants                                                                                 node_count             nodes     *   ��������       ����                                                                      	                                 
   ����                   conn_count              conns               node_paths              editable_instances              version             RSRC�	n0|RSRC                     PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://demo/demo.gd ��������      local://PackedScene_3wory 
         PackedScene          	         names "         main    script    Node2D    Control    layout_mode    anchors_preset    offset_right    offset_bottom    button    offset_left    offset_top    text    Button    	   variants    
                              @�D    � D     �B     �B     CC     3C      start
       node_count             nodes     )   ��������       ����                            ����                                            ����   	      
                     	             conn_count              conns               node_paths              editable_instances              version             RSRC!��RSRC                     PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://scripts/multi_peer.gd ��������      local://PackedScene_v8808          PackedScene          	         names "      
   MultiPeer    script    Node    	   variants                       node_count             nodes     	   ��������       ����                    conn_count              conns               node_paths              editable_instances              version             RSRC��ɤ)ף�RSRC                     PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script           local://PackedScene_xbdn6 �          PackedScene          	         names "         other_peer    Node    	   variants              node_count             nodes        ��������       ����              conn_count              conns               node_paths              editable_instances              version             RSRC�|�"
A�k0RSRC                     PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://scripts/peer.gd ��������      local://PackedScene_ajoyu          PackedScene          	         names "         Peer    script    Node    	   variants                       node_count             nodes     	   ��������       ����                    conn_count              conns               node_paths              editable_instances              version             RSRC:��RSRC                     PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   _bundled       Script    res://scripts/player.gd ��������
   Texture2D    res://assets/square.png ��B6�&      local://RectangleShape2D_piqyv �         local://PackedScene_nt3b2 �         RectangleShape2D       
     �B  �B         PackedScene          	         names "   
      Player    script    CharacterBody2D    CollisionShape2d    shape    CollisionShape2D 	   Sprite2d    scale    texture 	   Sprite2D    	   variants                           
   ��L>��L>               node_count             nodes        ��������       ����                            ����                     	      ����                         conn_count              conns               node_paths              editable_instances              version             RSRC��P��|\���_$RRSRC                     PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://scripts/server.gd ��������      local://PackedScene_14w1s          PackedScene          	         names "         Server    script    Node    	   variants                       node_count             nodes     	   ��������       ����                    conn_count              conns               node_paths              editable_instances              version             RSRC���;��ٚ�<��\extends Node

const websocketUrl = "wss://lupy-ash-hashtag.koyeb.app"
#const websocketUrl = "http://127.0.0.1:8080"
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
�p��d$�G���*extends Node2D

@export var dummy: Resource

func _ready():
	$Player._on_transform.connect($Client/Peer.send)
	$Client/Peer._peer_transform.connect(_peer_handler)

func _peer_handler(sbp: StreamPeerBuffer):
	#[0, y, ]
	sbp.seek(0)
	var arr = sbp.get_var()
	if arr != null:
		var p_id = str(arr[6])
		var dumm = get_node_or_null(p_id)
		if dumm != null:
			dumm.global_transform = Transform2D(Vector2(arr[0], arr[1]), Vector2(arr[2], arr[3]), Vector2(arr[4], arr[5]))
		else:
			var dummInstance = dummy.instantiate()
			dummInstance.name = p_id
			add_child(dummInstance)
��extends Node

var peer = WebRTCMultiplayerPeer.new()

func _ready():
	var p = WebRTCPeerConnection.new()
	pass
Gextends Node

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
�������xextends CharacterBody2D

signal _on_transform

func _ready():
	pass
var _time_left = 0
func _process(delta):
	var direction = Vector2()
	if Input.is_key_pressed(KEY_W):
		direction.y -= 1
	if Input.is_key_pressed(KEY_S):
		direction.y += 1
	if Input.is_key_pressed(KEY_A):
		direction.x -= 1
	if Input.is_key_pressed(KEY_D):
		direction.x += 1
	var rot = 0
	if Input.is_key_pressed(KEY_Q):
		rot -= 1
	if Input.is_key_pressed(KEY_E):
		rot += 1
	rotate(rot / PI / 4)
	move_and_collide(direction.normalized() * 4)
	_time_left += delta
	if _time_left > 0.033:
		_time_left = 0
		_send_position()

func _send_position():
	var gt = global_transform
	var tr: Array[float] = [
		gt.x.x,
		gt.x.y,
		gt.y.x,
		gt.y.y,
		gt.origin.x,
		gt.origin.y,
	]
	_on_transform.emit(tr)
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
�<;�B��1���[configuration]

entry_symbol = "webrtc_extension_init"

[libraries]

linux.x86_64 = "res://webrtc/lib/libwebrtc_native.linux.release.x86_64.so"
linux.x86_32 = "res://webrtc/lib/libwebrtc_native.linux.release.x86_32.so"
osx.x86_64 = "res://webrtc/lib/libwebrtc_native.osx.release.x86_64.dylib"
osx.arm64 = "res://webrtc/lib/libwebrtc_native.osx.release.arm64.dylib"
windows.x86_64 = "res://webrtc/lib/libwebrtc_native.windows.release.x86_64.dll"
windows.x86_32 = "res://webrtc/lib/libwebrtc_native.windows.release.x86_32.dll"
android.arm64 = "res://webrtc/lib/libwebrtc_native.android.release.arm64.so"
android.x86_64 = "res://webrtc/lib/libwebrtc_native.android.release.x86_64.so"
ios.arm64 = "res://webrtc/lib/libwebrtc_native.ios.release.arm64.dylib"
ios.x86_64 = "res://webrtc/lib/libwebrtc_native.ios.release.x86_64.simulator.dylib"
� ���f�pN6[remap]

path="res://.godot/exported/133200997/export-023773b42dc67874135d794fa62e277d-client.scn"
��d���o(���1[remap]

path="res://.godot/exported/133200997/export-35d6e51b3c2596456d00ed12dd79cb1c-dummy.scn"
^��A����h�L�[remap]

path="res://.godot/exported/133200997/export-fb76a69341a71d27f6f5dce1b13c8bf0-game.scn"
E�R�E��݀�Zj�[remap]

path="res://.godot/exported/133200997/export-17ab855984f9d361952c52f1b9189f3a-main.scn"
��hfy��1~TD�X[remap]

path="res://.godot/exported/133200997/export-704e956d50d02a7b2f0e639e0adda0e4-multi_peer.scn"
H�:����C[remap]

path="res://.godot/exported/133200997/export-de7466bf0ba81ba9b562c4a70daf6395-other_peer.scn"
�,�Ns�([remap]

path="res://.godot/exported/133200997/export-fa1fe529667f00fef77615248dc1d103-peer.scn"
a����"��jy�~l[remap]

path="res://.godot/exported/133200997/export-fd917217c4a5592248a679abd5f3a5fe-player.scn"
�a`��s_a�%��[remap]

path="res://.godot/exported/133200997/export-be84786c25e2ec82335e5f085993941f-server.scn"
Ԑ���yb�7m�
   ��B6�&   res://assets/square.png�e�G�o�   res://objects/client.tscn�v,��d�   res://objects/dummy.tscn�0�i���i   res://objects/game.tscn0����(   res://objects/main.tscn�1�'�2   res://objects/multi_peer.tscn�+�^��0   res://objects/other_peer.tscn���v/L_   res://objects/peer.tscn�������*   res://objects/player.tscn���J   res://objects/server.tscn>A��M� ���Eres://webrtc/webrtc.gdextension
ECFG      application/config/name         example    application/run/main_scene          res://objects/main.tscn    application/config/features(   "         4.0    Vulkan Clustered       dotnet/project/assembly_name         example ��|	8�