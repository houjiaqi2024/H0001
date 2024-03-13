extends Node

const ENEMY_INFO := "res://src/utils/enemy_info.json"

func test():
	var all_data = {
	"Window Events": [
		{"name": "WINDOW_EVENT_FOCUS_OUT", "description": "当窗口失去焦点时发送。"},
		{"name": "WINDOW_EVENT_CLOSE_REQUEST", "description": "当用户尝试关闭窗口时发送。"},
	],
	"VSync Modes": [
		{"name": "VSYNC_DISABLED", "description": "无垂直同步。"},
		{"name": "VSYNC_ENABLED", "description": "默认垂直同步模式。"},
	],
	"Handle Types": [
		{"name": "DISPLAY_HANDLE", "description": "不同平台的显示句柄。"},
		{"name": "WINDOW_HANDLE", "description": "不同平台的窗口句柄。"},
	]
}
	
	var json_data = JSON.stringify(all_data)
	var file_access = FileAccess.open(ENEMY_INFO,FileAccess.WRITE)
	file_access.store_line(json_data)
	file_access.close()
	
func test_losd() -> void:
	if not FileAccess.file_exists(ENEMY_INFO):
		return
	
	var file_access = FileAccess.open(ENEMY_INFO, FileAccess.READ)
	var json_data = file_access.get_line()
	
	var loaded_data: Dictionary = JSON.parse_string(json_data)
	
	print(loaded_data["Window Events"])
