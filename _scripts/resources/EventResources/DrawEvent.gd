extends EventResource
class_name DrawEvent

@export var amount : int

func on_execute() -> bool:
	return true
	
func required_events() -> Array[EventResource]:
	return []
