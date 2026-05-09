extends EditorExportPlugin

func _export_begin(features: PackedStringArray, is_debug: bool, path: String, flags: int) -> void:
	if not ProjectSettings.has_setting("additional_export_files/files_at_root"):
		return
	
	var setting: String = ProjectSettings.get_setting("additional_export_files/files_at_root")
	var files: PackedStringArray = setting.split(",", false)
	
	var global_path = ProjectSettings.globalize_path("res://" + path).get_base_dir() + "/"
	for file: String in files:
		var filepath = ProjectSettings.globalize_path("res://" + file)
		var to_file = global_path + file.get_file()
		
		printt(filepath, to_file)
		printt(path, file)
		print(DirAccess.copy_absolute(filepath, to_file))
		print("==========================================")
	#var global_path = ProjectSettings.globalize_path("res://" + path).get_base_dir() + "/"
	#var filepath = ProjectSettings.globalize_path("res://icon.svg")
	#DirAccess.copy_absolute(filepath, global_path + "res://icon.svg".get_file())

func _get_name() -> String:
	return "Additional Export Files"
