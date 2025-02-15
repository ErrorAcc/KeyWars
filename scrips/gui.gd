extends CanvasLayer

const InvSize = 20
var itemsLoad =[
	"res://resources/resource_key.tres",
	"res://resources/resource_key.tres",
	"res://resources/resource_key.tres",
	"res://resources/resource_key.tres",
]

func _ready():
	for i in InvSize:
		var slot := InventorySlot.new()
		slot.init(ItemData.Type.MAIN, Vector2(64,64))
		%Inv.add_child(slot)
	
	for i in itemsLoad.size():
		var item := InventoryItem.new()
		item.init(load(itemsLoad[i]))
		%Inv.get_child(i).add_child(item)



func _process(delta: float) -> void:
	if Input.is_action_just_pressed("E"):
		self.visible = !self.visible
