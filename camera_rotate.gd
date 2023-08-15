extends Camera3D


@export var mouse_sensitivity: float

func _input(event):
	if event is InputEventMouse:
		Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
	
	if event is InputEventMouseMotion:
		var rel: Vector2 = event.relative * mouse_sensitivity
		rotate_x(-rel.y)
		$"..".rotate_y(-rel.x)
		rotation.x = clampf(rotation.x, -deg_to_rad(70), deg_to_rad(70))
		
