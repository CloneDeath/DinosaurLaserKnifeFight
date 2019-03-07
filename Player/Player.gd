extends Node2D

signal on_attack(type);

var stance = "mid";
#warning-ignore:unused_class_variable
var health = 10;
var max_health = 10;

func on_attack(type):
	emit_signal("on_attack", type);

func set_stance(new_stance):
	stance = new_stance;
	if ($Animation.current_animation == new_stance): return;
	var current_time = $Animation.current_animation_position;
	$Animation.play(new_stance);
	$Animation.advance(current_time);

func set_animation(animation):
	if ($Animation.current_animation == animation): return;
	$Animation.play(animation);

func stun():
	$StateMachine.transition_to_state("Stun");