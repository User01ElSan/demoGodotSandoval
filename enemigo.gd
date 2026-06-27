extends Area2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
	
	
	# Esta función se activará cuando el jugador entre en el área del enemigo
func _on_body_entered(body: Node2D) -> void:
	if body.name == "Jugador":
		# Buscamos el cartel usando su ruta exacta en el Nivel
		var cartel = get_node_or_null("/root/Nivel/CanvasLayer/dieMessage")
		if cartel:
			cartel.visible = true
#func _on_body_entered(body: Node2D) -> void:
	#print("El jugador tocó un enemigo")
	#print("Nombre del cuerpo: ", body.name)
