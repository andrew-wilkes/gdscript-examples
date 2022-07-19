extends Resource

"""
This is a Class to save/load settings to a file.
It could be made an Autoload script or instanced in the Main script.

Use when auto-loaded:

Saving:
Settings.save_data()

Loading:
var data = Settings.load_data()
if data is Settings:
    Settings.player_name = data.player_name
    Settings.lives = data.lives
    Settings.score = data.score

Access vars:
var player_name = Settings.player_name

Use when instanced:

var settings = Settings.new()
var data = settings.load_data()
if data is Settings:
    settings.player_name = data.player_name
    settings.lives = data.lives
    settings.score = data.score

print(settings.player_name)

settings.save_data()

You may create other Resource classes to add to the export types e.g.
export(Resource) var inventory = InventoryResource.new()
"""

class_name Settings

const FILE_NAME = "user://settings.tres"

# Data to be saved
export var player_name = ""
export var lives = 4
export var score = 0

func save_data():
	var _result = ResourceSaver.save(FILE_NAME, self)


# Can't set itself, so have to return a value
func load_data():
	if ResourceLoader.exists(FILE_NAME):
		return ResourceLoader.load(FILE_NAME)
	else:
		print("No saved settings")
