extends Sprite2D

var velocidad = 300
var angulo_velocidad = PI


func _process(delta):
	var direccion = 0
	
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("ui_left"):
		velocity = Vector2.LEFT * velocidad
	if Input.is_action_pressed("ui_right"):
		velocity = Vector2.RIGHT * velocidad
	if Input.is_action_pressed("ui_up"):
		velocity = Vector2.UP * velocidad
	if Input.is_action_pressed("ui_down"):
		velocity = Vector2.DOWN * velocidad
	
	position += velocity * delta
