extends Node

export (PackedScene) var enemyScene
var viewPort
var player
var container


func set_enemy_values(player:Sprite, container:Node):
	self.player = player
	self.container = container

func spawn_enemies(cantidad:int):
	var rng = RandomNumberGenerator.new()
	var rndX = rng.randi_range(0, viewPort.x)
	var rndY = rng.randi_range(0, viewPort.y)
	for i in range(cantidad):
		var enemy = enemyScene.instance()
		container.add_child(enemy)
		enemy.set_values(player, container)
		enemy.global_position = Vector2(rndX , rndY)

func spawnEnemy ():
	var enemy = enemyScene.instance()
	self.container.add_child(enemy)
	enemy.set_values(player, container)
	enemy.position = player.position

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	spawnEnemy()



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
