extends Node2D
class_name PatternSpawner

const ENEMY = {
	SLIME: preload("res://src/enemies/_scenes/baseballguy_mob.tscn"),
	BAT: preload("res://src/enemies/_scenes/baseballguy_mob.tscn")
}
const ENEMY_NAME = {
	SLIME: "Slime",
	BAT: "Bat"
}

enum {SLIME, BAT}
enum DIRECTION {PLAYER, MIDDLE, HOVER, UP, RIGHT, DOWN, LEFT}

var distance = 0.0	# The total distance between point a and point b
var step = 0.01226 		# The space between each spawned mobType

#Pass array and mob to this function to override base stat
#Array should be two dimensional with name like ["SPEED", 2000]
func _set_stats(spawn, newStats):
	for stat in newStats:
		spawn.STATS[stat[0]] = stat[1]

#region Random spawning pattern
func Random(amount, delay): 
	for x in amount:
		RandomFullSpawner(randi_range(0, ENEMY.size() -1), [], 1, 0.00)
		if delay > 0.00:
			await get_tree().create_timer(delay).timeout

func RandomFullSpawner(mobType: int, newStats, amount: int, delay: float):
	for x in range(amount):
		var spawn = ENEMY[mobType].instantiate()
		spawn.mobName = ENEMY_NAME[mobType]
		if newStats.size() != 0:
			_set_stats(spawn, newStats)
		%SpawnCircleFollow.progress_ratio = randf()
		spawn.global_position = %SpawnCircleFollow.global_position
		add_child(spawn)
		if delay > 0.00:
			await get_tree().create_timer(delay).timeout
#endregion
