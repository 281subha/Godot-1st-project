extends CanvasLayer

@onready var pausePopup = $Control/PausePupup
@onready var gameOverPopup = $Control/GameOverPopup
@onready var mainMenu = $Control/MainMenu
@onready var winPopup = $Control/WinPopup


func _ready() -> void:
	GameManager.ui_manager = self
	hide_all()
	if GameManager.is_restart:
		GameManager.is_restart = false
		GameManager.Resume_game()
	else:
		mainMenu.show()


func hide_all():
	pausePopup.hide()
	gameOverPopup.hide()
	winPopup.hide()
	mainMenu.hide()

func _on_play_btn_pressed() -> void:
	hide_all()
	GameManager.Restart_game()
	
func _on_pause_btn_pressed() -> void:
	GameManager.Pause_game()
	pausePopup.show()

func _on_resume_btn_pressed() -> void:
	pausePopup.hide()
	GameManager.Resume_game()

func _on_restart_btn_pressed() -> void:
	pausePopup.hide()
	GameManager.Restart_game()

func _on_menu_btn_pressed() -> void:
	mainMenu.show()

func ShowWinPopup():
	winPopup.show()

func ShowGameoverPopup():
	gameOverPopup.show()

func _on_quit_btn_pressed() -> void:
	GameManager.Quit()
