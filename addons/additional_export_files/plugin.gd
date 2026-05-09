@tool
extends EditorPlugin

const ExportPlugin = preload("res://addons/additional_export_files/additional_export_files.gd")
var export_plugin = ExportPlugin.new()

func _enable_plugin() -> void:
	add_export_plugin(export_plugin)


func _disable_plugin() -> void:
	remove_export_plugin(export_plugin)


func _enter_tree() -> void:
	add_export_plugin(export_plugin)


func _exit_tree() -> void:
	remove_export_plugin(export_plugin)
