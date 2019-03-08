extends Node2D

var game_ended = false;
var player_lost = false;

var scene_win = load("res://Menu/End/EndWin.tscn");
var scene_lose = load("res://Menu/End/EndLose.tscn");

func _process(_delta):
	if (game_ended): return;
	if ($Combatants/Player.health <= 0):
		$YouLoseAudio.play();
		EndGame(true);
	if ($Combatants/Enemy.health <= 0):
		$YouWinAudio.play();
		EndGame(false);

func EndGame(lost):
	game_ended = true;
	player_lost = lost;
	$Animation.play("you_win");

func go_to_win_screen():
	if (player_lost):
		#warning-ignore:return_value_discarded
		get_tree().change_scene_to(scene_lose);
	else:
		#warning-ignore:return_value_discarded
		get_tree().change_scene_to(scene_win);