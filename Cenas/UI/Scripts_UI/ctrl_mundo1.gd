extends Node

func _ready():
	var load_: = preload("res://save.tres")
	var load_2 = get_node("/root/SaveSystem")
	if load_.disabled1 == "false" or load_2.disabled1 == "false":
		$CenterContainer2/GridContainer/btn_2.set_disabled(false)
	if load_.disabled2 == "false" or load_2.disabled2 == "false":
		$CenterContainer2/GridContainer/btn_3.set_disabled(false)
	if load_.disabled3 == "false" or load_2.disabled3 == "false":
		$CenterContainer2/GridContainer/btn_4.set_disabled(false)
	if load_.disabled4 == "false" or load_2.disabled4 == "false":
		$CenterContainer2/GridContainer/btn_5.set_disabled(false)
	if load_.disabled5 == "false" or load_2.disabled5 == "false":
		$CenterContainer2/GridContainer/btn_6.set_disabled(false)
	if load_.disabled6 == "false" or load_2.disabled6 == "false":
		$CenterContainer2/GridContainer/btn_7.set_disabled(false)
	if load_.disabled7 == "false" or load_2.disabled7 == "false":
		$CenterContainer2/GridContainer/btn_8.set_disabled(false)
	if load_.disabled8 == "false" or load_2.disabled8 == "false":
		$CenterContainer2/GridContainer/btn_9.set_disabled(false)
	if load_.disabled9 == "false" or load_2.disabled9 == "false":
		$CenterContainer2/GridContainer/btn_10.set_disabled(false)
	
func _on_btn_1_pressed():
	$ColorRect.visible = true
	$ColorRect.get_node("AnimationPlayer").play("fade_in")
	yield(get_tree().create_timer(1.0), "timeout")
	get_tree().change_scene("res://Cenas/Mapas/map1.tscn")

func _on_btn_2_pressed():
	get_tree().change_scene("res://Cenas/Mapas/map2.tscn")

func _on_btn_3_pressed():
	get_tree().change_scene("res://Cenas/Mapas/map3.tscn")

func _on_btn_4_pressed():
	get_tree().change_scene("res://Cenas/Mapas/map4.tscn")

func _on_btn_5_pressed():
	get_tree().change_scene("res://Cenas/Mapas/map5.tscn")

func _on_btn_6_pressed():
	get_tree().change_scene("res://Cenas/Mapas/map6.tscn")

func _on_btn_7_pressed():
	get_tree().change_scene("res://Cenas/Mapas/map7.tscn")

func _on_btn_8_pressed():
	get_tree().change_scene("res://Cenas/Mapas/map8.tscn")

func _on_btn_9_pressed():
	get_tree().change_scene("res://Cenas/Mapas/map9.tscn")

func _on_btn_10_pressed():
	get_tree().change_scene("res://Cenas/Mapas/map10.tscn")

func _on_voltar_menumapas_pressed():
	get_tree().change_scene("res://Cenas/UI/menumapas.tscn")
