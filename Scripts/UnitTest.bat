SET cur_dir=%cd%
echo %cur_dir%
LabVIEWCLI -LogToConsole true -OperationName RunVI -VIPath "%cur_dir%\Jenkins\Jenkins Unit Test.vi"
