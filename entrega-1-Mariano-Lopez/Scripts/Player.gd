extends Area2D


# Declare member variables here. Examples:
export (int) var velocidad
var movimiento = Vector2()
var limite


# Called when the node enters the scene tree for the first time.
func _ready():
	limite = get_viewport_rect().size
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	movimiento = Vector2()
	if Input.is_action_pressed("dir_right"):
		movimiento.x += 1
	if Input.is_action_pressed("dir_left"):
		movimiento.x -= 1
	
	if movimiento.length()>0:
		movimiento = movimiento.normalized() * velocidad
	
	position+= movimiento * delta
	position.x = clamp(position.x, 0, limite.x)
	position.y = clamp(position.y, 0, limite.y)
	
	
	
	
	
	pass
