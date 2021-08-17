extends Node2D

var game_end = false
var moves = 0 
onready var portao = $portao/AnimatedSprite
onready var popup = $Popup.get_children()

func _ready():
	pass

func _process(delta):
	$Moves.text = 'M o v i m e n t o s : ' + str(moves)
	if game_end == false:
		var spots = $spots.get_child_count()
		for i in $spots.get_children():
			if i.occupied:
				spots -= 1
		if spots == 0:
			
			var disabled1 = get_node("/root/SaveSystem")
			disabled1.disabled1 = "false"
			get_node("/root/SaveSystem").saveValue("values", "valueOne", disabled1)
			
			
			var save_file: = SaveFile.new()
			
			save_file.disabled1 = "false"
			
			ResourceSaver.save("res://save.tres", save_file)

			$controle.visible = true
			$portaofechado.queue_free()
			$Popup.visible = true
			game_end = true
			$ponte.visible = true
			$portao_abrindo/StaticBody2D/AnimationPlayer.play("portaoabrindo")
			$player.queue_free()
			if moves == 5:
				$Popup/Label.text = 'Perfeito!'
				$Popup/AnimatedSprite.play('5estrelas')
				print(moves)
			else:
				if moves < 12:
					$Popup/Label.text = 'Ótimo!'
					$Popup/AnimatedSprite.play('4estrelas')
					print(moves)
				else: 
					if moves < 20:
						$Popup/Label.text = 'Muito bom!'
						$Popup/AnimatedSprite.play('3estrelas')
						print(moves)
					else:
						if moves < 30:
							$Popup/Label.text = 'Bom!'
							$Popup/AnimatedSprite.play('2estrelas')
							print(moves)
						else:
							if moves > 30:
								$Popup/Label.text = 'Ok!'
								$Popup/AnimatedSprite.play('1estrela')
							print(moves)

func _on_btn_proximo_pressed():
	get_tree().change_scene("res://Cenas/Mapas/map2.tscn")

func _on_bnt_menu_pressed():
	get_tree().change_scene("res://Cenas/UI /ctrl_mundo1.tscn")
	
