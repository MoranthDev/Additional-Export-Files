# AdditionalExportFiles

## Reason

By default, Godot doesn't export non-resource files. There is a setting in the export settings to embed certain file types into the .pck, but if you want to for example put a file next to the executeable, you can't do that

This isn't particularly a common need, but I needed to put a .dll beside my exe file in one of my projects so this exists now

## Features

Literally only one for now. You can add relative file paths (excluding res://) to a custom Project Setting called Files At Root (additional_export_files/files_at_root) seperated by commas and the addon will just place those
files next to the .exe on export

## Usage

Put the relative file paths excluding res:// in the Project Setting separated by commas. For example, if there are two files at paths res://test/bar.dll and res://icon.svg, the project setting will be "test/bar.dll,icon.svg"

Oh and also only do this when exporting to a folder with no important information and with a backup of your project, I dunno how something bad could happen but I do NOT trust myself. I've only tested this on windows, but there's
no hardcoding so it should work on other OS's as long as you have write permissions to the folder you're exporting to

## Why didn't you just make a simple powershell script instead of an addon???

Idk, I felt like it
