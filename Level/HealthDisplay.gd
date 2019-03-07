extends Node2D

func _process(delta):
	$Value.text = str(get_parent().health);