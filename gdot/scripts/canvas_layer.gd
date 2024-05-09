extends CanvasLayer

@onready var coint_count = $cointCount

var coinsCollected = 0
func _ready():
	coint_count.text = "Coins: " + str(coinsCollected)


func _on_coin_5_body_entered(_body):
	coinsCollected = coinsCollected +1
	coint_count.text = "Coins: " + str(coinsCollected)
	


func _on_coin_4_body_entered(_body):
	coinsCollected = coinsCollected +1
	coint_count.text = "Coins: " + str(coinsCollected)


func _on_coin_body_entered(_body):
	coinsCollected = coinsCollected +1
	coint_count.text = "Coins: " + str(coinsCollected)


func _on_coin_3_body_entered(_body):
	coinsCollected = coinsCollected +1
	coint_count.text = "Coins: " + str(coinsCollected)


func _on_coin_2_body_entered(_body):
	coinsCollected = coinsCollected +1
	coint_count.text = "Coins: " + str(coinsCollected)
