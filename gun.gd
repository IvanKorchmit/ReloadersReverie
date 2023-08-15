extends Resource

class_name Gun
@export var chamber_count: int
@export_file("*.glb") var weapon_model: String

func cycle_chambers(current_chamber: int, state: AnimationNodeStateMachine):
	pass

func is_open(state: AnimationNodeStateMachine) -> bool:
	if state.get_node("Start") != null:
		return true
	return false
