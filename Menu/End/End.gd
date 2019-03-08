extends Node2D

var started = false;

var main_game = load("res://Menu/Fights/Fights.tscn");

func _input(event):
	if (started): return;
	if (event.is_pressed()):
		started = true;
		$Continue.play("continue");
		$ContinueAudio.play();

func go_to_fight():
	#warning-ignore:return_value_discarded
	get_tree().change_scene_to(main_game);