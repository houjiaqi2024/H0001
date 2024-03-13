extends AnimatedSprite2D
class_name EnemyAnimation

func play_walk_animation(velocity):
	$AnimatedSprite2D.animation = "walk"
	$AnimatedSprite2D.play()
	
	if velocity.x != 0:
		$AnimatedSprite2D.animation = "walk"
		$AnimatedSprite2D.flip_v = false
		$AnimatedSprite2D.flip_h = velocity.x < 0


func play_hurt_animation():
	$AnimatedSprite2D.animation = "hurt"
	$AnimatedSprite2D.play()
