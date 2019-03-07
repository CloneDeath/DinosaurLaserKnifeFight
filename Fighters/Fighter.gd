extends Node2D

signal on_attack(type);

#warning-ignore:unused_class_variable
var stance = "mid";
var health = 10;
#warning-ignore:unused_class_variable
var max_health = 10;

func on_attack(type):
	emit_signal("on_attack", type);

func damage():
	health -= 1;

func stun():
	$StateMachine.transition_to_state("Stun");

func is_stunned():
	return $StateMachine.current_state == $StateMachine/Stun;