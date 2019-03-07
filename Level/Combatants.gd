extends Node2D

func _on_Player_on_attack(type):
	if ($Enemy.stance == type):
		$Player.stun();
