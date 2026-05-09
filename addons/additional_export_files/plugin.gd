@tool
extends EditorPlugin

const ExportPlugin = preload("res://addons/additional_export_files/additional_export_files.gd")
var export_plugin = ExportPlugin.new()

func _enable_plugin() -> void:
	add_export_plugin(export_plugin)
	
	if not ProjectSettings.has_setting("additional_export_files/files_at_root"):
		ProjectSettings.set_setting("additional_export_files/files_at_root", "")


func _disable_plugin() -> void:
	remove_export_plugin(export_plugin)


func _enter_tree() -> void:
	_enable_plugin()


func _exit_tree() -> void:
	_disable_plugin()
