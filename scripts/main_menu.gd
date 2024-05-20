extends Control

@onready var start_button = $MarginContainer/HBoxContainer/VBoxContainer/StartButton
@onready var quit_button = $MarginContainer/HBoxContainer/VBoxContainer/QuitButton
@onready var start_level = preload("res://scenes/game.tscn") as PackedScene


func _ready():
	start_button.button_down.connect(on_start_pressed)
	quit_button.button_down.connect(on_quit_pressed)

func on_start_pressed() -> void:
	get_tree().change_scene_to_packed(start_level)

func on_quit_pressed() -> void:
	get_tree().quit()
