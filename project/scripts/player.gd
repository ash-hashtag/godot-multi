extends CharacterBody2D

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
