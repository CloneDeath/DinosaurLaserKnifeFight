extends "res://Fighters/Enemy/Enemy.gd"

var remaining = 0.7;

func _process(delta):
	if (is_attacking()): return;
	remaining -= delta;
	if (remaining <= 0):
		remaining = 0.7;
		select_random_stance();

func select_random_stance():
	var next = randi() % 4;
	match(next):
		0:
			set_stance("low");
		1:
			set_stance("mid");
		2:
			set_stance("high");
		3:
			attack();
