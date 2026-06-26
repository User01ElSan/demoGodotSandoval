# Called every frame. 'delta' is the elapsed time since the previous frame.
extends CharacterBody2D
var velocidad: float = 200.0

func _ready() -> void:
# Mover al jugador al centro de la ventana
	position = get_viewport_rect().size / 2

func _physics_process(delta: float) -> void:
	var direccion = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = direccion * velocidad
	move_and_slide()
