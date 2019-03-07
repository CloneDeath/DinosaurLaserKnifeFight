extends "res://Fighters/Fighter.gd"

func set_stance(new_stance):
	stance = new_stance;
	if ($Animation.current_animation == new_stance): return;
	var current_time = $Animation.current_animation_position;
	$Animation.play(new_stance);
	$Animation.advance(current_time);

func set_animation(animation):
	if ($Animation.current_animation == animation): return;
	$Animation.play(animation);
