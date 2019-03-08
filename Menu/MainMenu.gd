extends Node2D

var started = false;

var main_game = load("res://Menu/Controls/Controls.tscn");

func _input(event):
	if (started): return;
	if (event.is_pressed()):
		started = true;
		$Animation.play("continue");

func go_to_fight():
	#warning-ignore:return_value_discarded
	get_tree().change_scene_to(main_game);