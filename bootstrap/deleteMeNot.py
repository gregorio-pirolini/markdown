data = [
    {'Datum': '01.04.2021', 'MitgliedID': 100062, 'LeistungID': 100076, 'AnzahlStunden': 2},
    {'Datum': '11.04.2021', 'MitgliedID': 100062, 'LeistungID': 100076, 'AnzahlStunden': 3},
    {'Datum': '10.04.2021', 'MitgliedID': 100062, 'LeistungID': 500123, 'AnzahlStunden': 1},

    {'Datum': '13.04.2021', 'MitgliedID': 201235, 'LeistungID': 200234, 'AnzahlStunden': 1},
    {'Datum': '14.04.2021', 'MitgliedID': 201235, 'LeistungID': 200234, 'AnzahlStunden': 1},
    {'Datum': '07.04.2021', 'MitgliedID': 201235, 'LeistungID': 200356, 'AnzahlStunden': 1}
]
# def do_list(data):
#     mitglied=''
#     leistung=''
#     leistung_summe=0
#     client_summe=0
#     total_summe=0
#     nr=0
#     anzahl_stunden=0
#     preis = 6
#     print('nr - mitglied - leistung - anzahl_stunden - preis - leistung_summe')
#     for n,entry in enumerate(data):
#         if mitglied == entry['MitgliedID']:
#             if leistung == entry['LeistungID']:
#                 anzahl_stunden+=entry['AnzahlStunden']
#             else:
#                 leistung_summe = anzahl_stunden*preis
#                 client_summe+=leistung_summe
#                 if(n>0):
#                     print(nr,mitglied,leistung,anzahl_stunden,preis,leistung_summe )
#                 nr+=1
#                 leistung = entry['LeistungID']
#                 anzahl_stunden=entry['AnzahlStunden']
#         else:
#             leistung_summe = anzahl_stunden*preis
#             client_summe+=leistung_summe
#             if(n>0):
#                 print(nr,mitglied,leistung,anzahl_stunden,preis,leistung_summe )
#                 print(f'client_summe: {client_summe}')
#             total_summe += client_summe
#             mitglied=entry['MitgliedID']
#             leistung=entry['LeistungID']
#             leistung_summe=0
#             client_summe=0
#             nr=1
#             anzahl_stunden=entry['AnzahlStunden']       
#     leistung_summe = anzahl_stunden*preis
#     client_summe+=leistung_summe
#     print(nr,mitglied,leistung,anzahl_stunden,preis,leistung_summe )
#     print(f'client_summe: {client_summe}')
#     print(f'total summe: {total_summe}')
def do_list(data):
    total_summe = 0
    preis = 6
    previous_mitglied = None
    previous_leistung = None
    previous_anzahl_stunden = None
    previous_nr = None
    client_summe = 0

    print('nr - mitglied - leistung - anzahl_stunden - preis - leistung_summe')
    for nr, entry in enumerate(data, start=1):
        mitglied = entry['MitgliedID']
        leistung = entry['LeistungID']
        anzahl_stunden = entry['AnzahlStunden']

        if nr > 1 and (mitglied != previous_mitglied or leistung != previous_leistung):
            leistung_summe = previous_anzahl_stunden * preis
            client_summe += leistung_summe
            print(previous_nr, previous_mitglied, previous_leistung, previous_anzahl_stunden, preis, leistung_summe)
        
        if mitglied != previous_mitglied:
            if nr > 1:
                print(f'client_summe: {client_summe}')
                total_summe += client_summe
            client_summe = 0
        
        previous_mitglied = mitglied
        previous_leistung = leistung
        previous_anzahl_stunden = anzahl_stunden
        previous_nr = nr

    leistung_summe = previous_anzahl_stunden * preis
    client_summe += leistung_summe
    total_summe += client_summe
    
    print(previous_nr, previous_mitglied, previous_leistung, previous_anzahl_stunden, preis, leistung_summe)
    print(f'client_summe: {client_summe}')
    print(f'total summe: {total_summe}')

do_list(data)