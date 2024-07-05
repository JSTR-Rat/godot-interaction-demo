@tool
extends EditorPlugin

const AUTOLOAD_NAME = "InteractionManager"

func _enter_tree():
	add_custom_type("InteractionArea", "Area2D", preload ("res://addons/godot_interaction/interaction_area.gd"), preload ("res://addons/godot_interaction/interaction_area.svg"))
	add_autoload_singleton(AUTOLOAD_NAME, "res://addons/godot_interaction/interaction_manager.tscn")

func _exit_tree():
	remove_custom_type("Interaction Area")
	remove_autoload_singleton(AUTOLOAD_NAME)
