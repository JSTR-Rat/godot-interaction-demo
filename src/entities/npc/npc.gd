extends Node2D

@onready var interaction := $InteractionArea

func _ready():
	interaction.interact = _on_interact

func _on_interact():
	print("INTERACTED WITH NPC")
	await get_tree().create_timer(5).timeout
	print("INTERACT ENDED WITH NPC")
