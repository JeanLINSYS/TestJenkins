SET cur_dir=%cd%
echo %cur_dir%
LabVIEWCLI -LogToConsole true -OperationName ExecuteBuildSpec -ProjectPath "%cur_dir%\Test Pipeline Jenkins.lvproj" -BuildSpecName "Add_Application" -TargetName "Poste de travail"
LabVIEWCLI -LogToConsole true -OperationName ExecuteBuildSpec -ProjectPath "%cur_dir%\Test Pipeline Jenkins.lvproj" -BuildSpecName "Add_Library" -TargetName "Poste de travail"

