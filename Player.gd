extends KinematicBody2D

var show_prompt : bool setget set_show_prompt

func set_show_prompt(new_value: bool):
	if new_value:
		$Key.show()
		$KeyPrompt.play("KeyPrompt")
	else:
		$Key.hide()
		$KeyPrompt.stop()
		
	show_prompt = new_value
	
	
func _process(delta):
	if Input.is_action_just_pressed("interact"):
		self.show_prompt = false
