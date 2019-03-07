extends Node2D

func _on_Player_on_attack(type):
	if ($Enemy.stance == type):
		$Player.stun();
	else:
		$Enemy.damage();


func _on_Enemy_on_attack(type):
	if ($Player.stance == type):
		$Enemy.stun();
	else:
		$Player.damage();
