extends Area2D
class_name InteractionArea

signal action_finished

@export var action_name: String = "interact"

func interact(other: Node2D):
	action_finished.emit()

func _enter_tree():
	connect("body_entered", _on_body_entered)
	connect("body_exited", _on_body_exited)

func _exit_tree():
	disconnect("body_entered", _on_body_entered)
	disconnect("body_exited", _on_body_exited)

func _on_body_entered(body: Node2D):
	if body.is_in_group('player'):
		InteractionManager.register_area(self)

func _on_body_exited(body: Node2D):
	if body.is_in_group('player'):
		InteractionManager.unregister_area(self)
