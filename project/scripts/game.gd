extends Node2D

func _ready():
	$Player._on_transform.connect($Client/Peer.send)
	$Client/Peer._peer_transform.connect(_peer_handler)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _peer_handler(data: String):
	#[0, y, ]
	var arr = JSON.parse_string(data)
	var p_id = str(arr[6])
	var dumm = get_node_or_null(p_id)
	print("recieved ", arr)
	if dumm != null:
		dumm.global_transform = Transform2D(Vector2(arr[0], arr[1]), Vector2(arr[2], arr[3]), Vector2(arr[4], arr[5]))
	else:
		var dummInstance = preload("res://objects/dummy.tscn").instantiate()
		dummInstance.name = p_id
		add_child(dummInstance)
