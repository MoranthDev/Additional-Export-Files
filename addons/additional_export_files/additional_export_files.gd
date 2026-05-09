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
		if filepath.is_absolute_path():
			printerr(filepath + " does not exist!")
			continue
		
		DirAccess.copy_absolute(filepath, to_file)

func _get_name() -> String:
	return "Additional Export Files"
