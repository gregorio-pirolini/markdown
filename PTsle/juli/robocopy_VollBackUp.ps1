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
robocopy E:\ C:\Users\Admin\Desktop\E /E /MIR

# Archiv-Attribut zurücksetzen
attrib -a E:\