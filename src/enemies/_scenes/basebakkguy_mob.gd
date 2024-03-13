extends CharacterBody2D

# 引用其他类
var other_script = preload("res://src/utils/_script/json_utils.gd")
var other_instance = other_script.new()

func _ready():
	other_instance.test_losd()
