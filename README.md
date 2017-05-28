# myShellscripts

## Description

Tools to make your coding life confortable.

*mksh: Creates a new bash shellscript file. It automatically includes shebang in the script file, and sets the mode executable.  
*emksh: After execute mksh, open the script file by Emacs.  
*mkc: Compiles a C source code using gcc, and renames a.out to the same name as the source file.  
*inst: Save informations of installed packages automatically.  

## Usage

### mksh
mksh [file name]

### emksh
emksh [file name]

### mkc
mkc [C source file name WITHOUT .c]

### inst
inst [command] [package1] [package2] ...  
*[command] is certain package management command such as apt, yum, rpm, gem, pip.  
*Each installation will be saved in the "instlog" file, which is a shellscript and therefore you can easilly reproduce the installations by simply execute the file.  

## Author

[YouTakaoka](https://github.com/YouTakaoka)
