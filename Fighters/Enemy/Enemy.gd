extends "res://Fighters/Fighter.gd"


func set_stance(new_stance):
	stance = new_stance;
	if ($Animation.current_animation == new_stance): return;
	var current_time = $Animation.current_animation_position;
	$Animation.play(new_stance);
	$Animation.advance(current_time);

func set_attack_animation():
	$Animation.play(str(stance) + "-attack");

func set_animation(animation):
	$Animation.play(animation);

func attack():
	$StateMachine.transition_to_state("Attacking");

func is_attacking():
	return $StateMachine.current_state == $StateMachine/Attacking;