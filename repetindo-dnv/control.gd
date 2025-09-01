extends Control

@onready var progress_bar = $ProgressBar
@onready var label = $ProgressBar/Label

func _ready():
	progress_bar.max_value = 100
	progress_bar.value = 0
	update_label()

func _process(delta):
	# Exemplo: preenchendo a barra automaticamente
	progress_bar.value += delta * 10  # Aumenta 10 por segundo

	if progress_bar.value > progress_bar.max_value:
		progress_bar.value = 0  # Reinicia a barra

	update_label()

func update_label():
	label.text = str(round(progress_bar.value)) + "%"
