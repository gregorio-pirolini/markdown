let journal = [
    {Datum:"01.04.2016", KundenId:"k00091", LeistungId:100076, Bezeichnung:"soft", EinzelPreis:2.40, Anzahl:2},
    {Datum:"01.04.2016", KundenId:"k00091", LeistungId:100076, Bezeichnung:"soft",EinzelPreis:2.40, Anzahl:3},
    {Datum:"01.04.2016", KundenId:"k00091", LeistungId:500123, Bezeichnung:"buch",EinzelPreis:15.00, Anzahl:1},
    {Datum:"01.04.2016", KundenId:"k01234", LeistungId:200234, Bezeichnung:"kraft",EinzelPreis:20.00, Anzahl:1},
    {Datum:"01.04.2016", KundenId:"k01234", LeistungId:200234, Bezeichnung:"kraft",EinzelPreis:20.00, Anzahl:1},
    {Datum:"01.04.2016", KundenId:"k01234", LeistungId:200356, Bezeichnung:"sauna",EinzelPreis:15, Anzahl:1}
];

function hole_journalzatz(journal, index) {
    return journal[index]
}


function erstelleRechnung(){
let pos = 0
let LeistungId = 0
let Bezeichnung = 0
let anzahl
let einzelpries
let gesamtpreis
let KundenId_alt
let LeistungId_alt
let rechnung

let val =hole_journalzatz

KundenId= val.KundenId
KundenId_alt = KundenId

LeistungId=  val.LeistungId
 LeistungId_alt = LeistungId

LeistungId=  val.LeistungId
alt_kundenid = LeistungId

Bezeichnung=  val.Bezeichnung
alt_Bezeichnung = Bezeichnung

gesamtpreis= 0
einzelpries=0

schreibe_kundenid(kunden_id)
schreibe_Kopfzeile()

while (val != "")
     

    while  (kundenid == alt_kundenid)
        
        rechnung += gesamtPreis
        while (leistungid == alt_leistungid)
            
            gesamtPreis = leseEinzelpreis * leseAnzahl(val)
            anzahl += leseAnzahl(val)
        //ende while

    //ende while
    
        
val = hole_journalzatz    

if(leistungid != alt_leistungid)

    schreiberechnung_positionzeile(pos, alt_leistungid, holeBezeichnung(alt_leistungid), anzahl, einzelpreis, gesamtpreis)
    anzahl = 0
    einzelpreis = 0 
    gesamtpreis= 0 
    pos  +=1
    alt_leistungid = leistungid
if(kunde != alt_kund)
    schreiberechnung_summe(rechnung)
    pos  = 0
    alt_kundenid = kundenid
    schreibe_kundenid(kunden_id)
    schreibe_Kopfzeile()
//ende while
schreiberechnung_summe(rechnung)


}
