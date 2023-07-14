##########################
# Datum: 29.6.23
# Autor. MMustermann
# Titel: Robocopy Beispiel
##########################

cls

#Syntax
#robocopy <Quellpfad> <Zielpfad> <Parameter>




# inkrementelles Backup /M beachtet nur Dateien, die das Archivattribut gesetzt haben und setzt es zurück
robocopy E:\ C:\Users\Admin\Desktop\E /E /M