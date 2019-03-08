extends Node2D

func _on_Player_on_attack(_type):
	resolve_combat($Player, $Enemy);

func _on_Enemy_on_attack(_type):
	resolve_combat($Enemy, $Player);

func resolve_combat(attacker, defender):
	if (defender.stance == attacker.stance && !defender.is_stunned()):
		attacker.stun();
		$StunAudio.play();
	else:
		defender.damage();
		$HitAudio.play();