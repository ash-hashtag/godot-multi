extends Node2D

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
