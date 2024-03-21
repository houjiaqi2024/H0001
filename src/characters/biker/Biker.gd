extends Node2D

func play_idle_animation():
	$AnimatedSprite2D.animation = "idle"
	$AnimatedSprite2D.play()

func play_run_animation(velocity):
	$AnimatedSprite2D.animation = "run"
	$AnimatedSprite2D.play()
	
	if velocity.x != 0:
		$AnimatedSprite2D.animation = "run"
		$AnimatedSprite2D.flip_v = false
		$AnimatedSprite2D.flip_h = velocity.x < 0
