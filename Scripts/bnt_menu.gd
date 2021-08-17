extends Button



func _on_bnt_menu_pressed():
	var load_ = load("res://save.tres")
	get_tree().change_scene("res://Cenas/UI/menu.tscn")
