extends Control

func _ready():
	pass

func _on_btn_iniciar_pressed():
	var load_ = load("res://save.tres")
	get_tree().change_scene("res://Cenas/UI/menumapas.tscn")

func _on_btn_opcoes_pressed():
	pass # Replace with function body.

func _on_btn_sair_pressed():
	get_tree().quit()

func _on_btn_carregar_pressed():
	pass
