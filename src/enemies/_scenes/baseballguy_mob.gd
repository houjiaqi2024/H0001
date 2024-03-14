extends CharacterBody2D

const ENEMY_INFO := "res://src/utils/enemy_info.json"
# 引用其他类
var other_script = preload("res://src/utils/_script/json_utils.gd")
var other_instance = other_script.new()

func _ready():
	var d = other_instance.json_to_dict(ENEMY_INFO)
	print(d["BASEBALLGUY"])
	print(d.keys())
	print(d)
	for key in d:
		print(key + ": " + str(d[key]))
