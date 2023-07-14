##########################
# Datum: 29.6.23
# Autor. MMustermann
# Titel: Robocopy Beispiel
##########################

cls

#Syntax
#robocopy <Quellpfad> <Zielpfad> <Parameter>


# Robocopy_Befehl /E rekursiv (alle Unterordner durchlaufen), 
#/MIR (Spiegeln, mirror)
# Vollbackup
robocopy C:\users\sle\Desktop\Robocopy\Daten C:\users\sle\Desktop\Robocopy\Backup /E /MIR

# Archiv-Attribut zurücksetzen
attrib -a C:\users\sle\Desktop\Robocopy\Daten

# inkrementelles Backup /M beachtet nur Dateien, die das Archivattribut gesetzt haben und setzt es zurück
robocopy C:\users\sle\Desktop\Robocopy\Daten C:\users\sle\Desktop\Robocopy\Backup /E /M