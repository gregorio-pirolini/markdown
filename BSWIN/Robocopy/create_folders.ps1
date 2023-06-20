############################################
# Datum: 19.6.23 
# Autor: MMustermann
# Titel: Ordner/Dateien per Skript erzeugen
############################################

#$benutzer = $env:USERNAME
#$home = $env:HOMEPATH
$roboPfad = "C:"
$roboOrdner = "DatenForRobocopy"
$HauptOrdner="Außendienst","Teamleiter", "Praktikanten", "Verkauf", "Neberhart", "Sdietrich", "Msommer-Feierabend", "Praktikant"




new-item -Path $roboPfad -ItemType Directory -Name $roboOrdner




foreach($ordner in $HauptOrdner){
    # 4 Ordner im Verzeichnis Robocopy erstellen
    new-item -Path "$roboPfad\$roboOrdner" -ItemType Directory -Name "$ordner"
    
    Foreach($untrOrdnr in ("extern", "intern" )){
        new-item -Path "$roboPfad\$roboOrdner\$ordner" -ItemType Directory -Name $untrOrdnr

        # Dateien erzeugen
        foreach($datei in (1..5)){
            $rand = get-random -Minimum 100 -Maximum 2000000
            # IF-Konstrukt zum Erzeugen unterschiedlicher Dateien-Erweiterungen in Abhängigkeit von einer Zufallsvariablen
        
            if($rand % 4 -eq 0){
                    # Text-Datei erstellen
                   $endung = "txt"
            }
            elseif($rand % 4 -eq 1){
                    #Doc-Datei erstellen
                   $endung = "docx"
            }
            elseif($rand % 4 -eq 2){
                    #Doc-Datei erstellen
                   $endung = "accdb"
            }
            else{
                 #RTF-Datei erstellen
                 $endung = "rtf"
            } #Ende: ELSE

        
            $year = 2022-($rand % 7)
            $Pfad = "$roboPfad\$roboOrdner\$ordner\$untrOrdnr"
            new-item -Path $Pfad -ItemType File -Name "Datei$datei.$endung" -Value ("x" * $rand) | foreach{
            $_.CreationTime = (Get-Date("$year-11-30"))}
        
        
        } # Ende: Foreach Dateien
    }# Ende: Foreach Unterordner
 } # Ende: Foreach Hauptordner


