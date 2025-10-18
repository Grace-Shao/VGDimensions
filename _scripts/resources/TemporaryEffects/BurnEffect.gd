extends TemporaryEffect
class_name BurnEffect

@export var amount: int = 1

func on_execute() -> bool:
	# Directly damage the card
	m_card_invoker.damage(amount)
	on_effect_progress()
	return false
	
func required_events() -> Array[EventResource]:
	return []
	
func on_effect_apply() -> void:
	super.on_effect_apply()
	m_card_invoker.on_burn()
