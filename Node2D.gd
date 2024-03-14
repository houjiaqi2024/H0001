extends Node2D

const string_to_add = "_extra"
const ENEMY_INFO := "res://src/utils/enemy_info.json"

# 引用json_utils类
var json_utils = preload("res://src/utils/_script/json_utils.gd")
var json_instance = json_utils.new()

var enemy_path = json_instance.json_to_dict(ENEMY_INFO)



# 创建一个新的字典
var new_dict = json_instance.add_string_to_dict(enemy_path, string_to_add)

func _ready():
	print(enemy_path)
	print(new_dict)
