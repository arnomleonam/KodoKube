extends KinematicBody2D

var grid_size = 16
onready var ray = $RayCast2D
var inputs = {
	'ui_up': Vector2.UP,
	'ui_down': Vector2.DOWN,
	'ui_right': Vector2.RIGHT,
	'ui_left': Vector2.LEFT	
}

func _unhandled_input(event):
	for dir in inputs.keys():
		if event.is_action_pressed(dir):
			move(dir)
			
func move(dir):
	var game = get_parent()
	var vector_pos = inputs[dir] * 16
	ray.cast_to = vector_pos
	ray.force_raycast_update()
	if !ray.is_colliding():
		position += vector_pos
		game.moves += 1
	else:
		var collider = ray.get_collider()
		if collider.is_in_group('box'):
			if collider.move(dir):
				position += vector_pos
				game.moves += 1

func _on_Hurtbox_area_entered(area):
	if area.is_in_group("ataque"):
		$player.visible = false
		$Sprite.visible = true
		$Sprite/AnimationPlayer.play("hit")
		yield(get_tree().create_timer(1.0), "timeout")
		queue_free()
