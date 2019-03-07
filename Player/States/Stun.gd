extends State

var stun_time = 0;

func on_enter(entity):
	entity.set_animation("stun");
	stun_time = 0.5;

func update(_entity, delta):
	stun_time -= delta;

func get_next_state(_entity):
	if (stun_time <= 0):
		return "Idle";
	return null;
