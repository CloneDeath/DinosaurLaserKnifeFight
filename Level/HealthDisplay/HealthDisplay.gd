extends Node2D

var bar = load("res://Level/HealthDisplay/HealthBar.tscn");

export(int, 0, 1, 1) var team = 0;

func _ready():
	for i in range(get_parent().max_health):
		var h = bar.instance();
		h.frame = team;

		var scale = 1 if team == 1 else -1;
		var x = i % 5;
		var y = int(i / 5.0);
		h.position = Vector2(9 * x * scale, y * 4.5);
		add_child(h);

func _process(_delta):
	for i in range(get_child_count()):
		var child = get_child(i);
		child.visible = i < get_parent().health;