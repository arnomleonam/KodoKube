extends Control


func _ready():
	var load_: = preload("res://save.tres")
	var load_2 = get_node("/root/SaveSystem")
	if load_.contador_mundo1 == 10 or load_2.mundo_2 == "false":
		$CenterContainer/HBoxContainer/btn_mundo2.set_disabled(false)

func _on_btn_mundo1_pressed():
	
	get_tree().change_scene("res://Cenas/UI/ctrl_mundo1.tscn")


func _on_btn_voltarmenu_pressed():
	get_tree().change_scene("res://Cenas/UI/menu.tscn")
