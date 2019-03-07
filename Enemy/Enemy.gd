extends Node2D

#warning-ignore:unused_class_variable
var stance = "mid";
var health = 10;

func damage():
	health -= 1;