extends Node2D

func _process(_delta):
	var UP = Input.is_action_pressed("knife_up");
	var DOWN = Input.is_action_pressed("knife_down");
	var ATTACK = Input.is_action_pressed("attack");
	if (ATTACK):
		if (UP):
			$Animation.play("high-attack");
		elif(DOWN):
			$Animation.play("low-attack");
		else:
			$Animation.play("mid-attack");
	else:
		if (UP):
			set_animation("high");
		elif (DOWN):
			set_animation("low");
		else:
			set_animation("mid");

func set_animation(animation):
	if ($Animation.current_animation == animation): return;
	var current_time = $Animation.current_animation_position;
	$Animation.play(animation);
	$Animation.advance(current_time);