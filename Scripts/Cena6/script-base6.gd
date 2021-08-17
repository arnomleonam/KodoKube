extends Node2D

var game_end = false
var moves = 0 
onready var portao = $portao/AnimatedSprite
onready var popup = $Popup.get_children()

func _process(delta):
	$Moves.text = 'M o v i m e n t o s : ' + str(moves)
	if game_end == false:
		var spots = $spots.get_child_count()
		for i in $spots.get_children():
			if i.occupied:
				spots -= 1
		if spots == 0:
			
			var disabled6 = get_node("/root/SaveSystem")
			disabled6.disabled6 = "false"
			get_node("/root/SaveSystem").saveValue("values", "valueOne", disabled6)
			
			var save_file = SaveFile.new()
			
			save_file.disabled1 = "false"
			save_file.disabled2 = "false"
			save_file.disabled3 = "false"
			save_file.disabled4 = "false"
			save_file.disabled5 = "false"
			save_file.disabled6 = "false"

			ResourceSaver.save("res://save.tres", save_file)
			$portaofechado.queue_free()
			$Popup.visible = true
			game_end = true
			$ponte.visible = true
			$portao_abrindo/StaticBody2D/AnimationPlayer.play("portaoabrindo")
			$player.queue_free()
			if moves <= 15:
				$Popup/passou_nivel/Label.text = 'Perfeito!'
				$Popup/passou_nivel/AnimatedSprite.play('5estrelas')
				print(moves)
			else:
				if moves < 20:
					$Popup/passou_nivel/Label.text = 'Ótimo!'
					$Popup/passou_nivel/AnimatedSprite.play('4estrelas')
					print(moves)
				else: 
					if moves < 30:
						$Popup/passou_nivel/Label.text = 'Muito bom!'
						$Popup/passou_nivel/AnimatedSprite.play('3estrelas')
						print(moves)
					else:
						if moves < 40:
							$Popup/passou_nivel/Label.text = 'Bom!'
							$Popup/passou_nivel/AnimatedSprite.play('2estrelas')
							print(moves)
						else:
							if moves > 50:
								$Popup/passou_nivel/Label.text = 'Ok!'
								$Popup/passou_nivel/AnimatedSprite.play('1estrela')
							print(moves)


func _on_btn_anterior_pressed():
	get_tree().change_scene("res://Cenas/Mapas/map5.tscn")


func _on_btn_proximo_pressed():
	get_tree().change_scene("res://Cenas/Mapas/map7.tscn")


