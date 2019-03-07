extends State

func on_enter(entity):
	entity.set_attack_animation();

func get_next_state(entity):
	var animation = entity.get_node("Animation");
	if (animation.is_playing()):
		return null;
	return "Idle";