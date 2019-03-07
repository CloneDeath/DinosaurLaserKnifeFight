extends State

func get_next_state(entity):
	var animation = entity.get_node("Animation");
	if (!animation.is_playing()):
		return "Idle";
	return null;