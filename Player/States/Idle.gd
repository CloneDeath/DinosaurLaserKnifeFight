extends State

func update(entity, _delta):
	var UP = Input.is_action_pressed("knife_up");
	var DOWN = Input.is_action_pressed("knife_down");

	if (UP):
		entity.set_stance("high");
	elif (DOWN):
		entity.set_stance("low");
	else:
		entity.set_stance("mid");

func get_next_state(entity):
	var UP = Input.is_action_pressed("knife_up");
	var DOWN = Input.is_action_pressed("knife_down");
	var ATTACK = Input.is_action_just_pressed("attack");
	if (!ATTACK): return null;

	if (UP):
		entity.set_animation("high-attack");
	elif (DOWN):
		entity.set_animation("low-attack");
	else:
		entity.set_animation("mid-attack");
	return "Attack";