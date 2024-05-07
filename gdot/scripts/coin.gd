extends Area2D



func _on_body_entered(body):
	print('Hello world')
	queue_free()
