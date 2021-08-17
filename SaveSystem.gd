extends Node

var save_path = "res://save-file.cfg"
var config = ConfigFile.new()
var load_response = config.load(save_path)

var disabled1 = "true"
var disabled2 = "true"
var disabled3 = "true"
var disabled4 = "true"
var disabled5 = "true"
var disabled6 = "true"
var disabled7 = "true"
var disabled8 = "true"
var disabled9 = "true"
var mundo_2 = "true"

func saveValue(section, key, null):
	config.set_value(section, key, disabled1)
	
func loadValue(section, key):
	disabled1 = config.get_value(section, key, disabled1)
	disabled2 = config.get_value(section, key, disabled2)
	disabled3 = config.get_value(section, key, disabled3)
	disabled4 = config.get_value(section, key, disabled4)
	disabled5 = config.get_value(section, key, disabled5)
	disabled6 = config.get_value(section, key, disabled6)
	disabled7 = config.get_value(section, key, disabled7)
	disabled8 = config.get_value(section, key, disabled8)
	disabled9 = config.get_value(section, key, disabled9)
