extends Area2D
class_name InteractionArea

@export var action_name: String = "interact"

var interact: Callable = func():
	pass

func _enter_tree():
	connect("body_entered", _on_body_entered)
	connect("body_exited", _on_body_exited)

func _exit_tree():
	disconnect("body_entered", _on_body_entered)
	disconnect("body_exited", _on_body_exited)

func _on_body_entered(body: Node2D):
	InteractionManager.register_area(self)

func _on_body_exited(body: Node2D):
	InteractionManager.unregister_area(self)