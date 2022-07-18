# Code used in a main scene to handle the shutdown of the program

# Respond to the Esc key being pressed to Quit the App
func _unhandled_input(event):
	if event is InputEventKey:
		if event.pressed and event.scancode == KEY_ESCAPE:
			save_and_quit()


# Listem for a system message to close the window
func _notification(what):
	if what == MainLoop.NOTIFICATION_WM_QUIT_REQUEST:
		save_and_quit()


# A common function to handle the shutdown of the App
func save_and_quit():
	# Run code to save settings here
	get_tree().quit()