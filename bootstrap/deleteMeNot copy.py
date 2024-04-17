data = [
    {'Datum': '01.04.2021', 'kunde': 'k0011',
        'leistung': 100076, 'preis': 2.4, 'anzahl': 2},
    {'Datum': '11.04.2021', 'kunde': 'k0011',
        'leistung': 100076, 'preis': 2.4, 'anzahl': 3},
    {'Datum': '10.04.2021', 'kunde': 'k0011',
        'leistung': 500123, 'preis': 15, 'anzahl': 1},

    {'Datum': '13.04.2021', 'kunde': 'k1234',
        'leistung': 200234, 'preis': 20, 'anzahl': 1},
    {'Datum': '14.04.2021', 'kunde': 'k1234',
        'leistung': 200234, 'preis': 20, 'anzahl': 1},
    {'Datum': '07.04.2021', 'kunde': 'k1234',
        'leistung': 200356, 'preis': 15, 'anzahl': 1}
]


def do_list(data):
    kunde = '0'
    leistung = '0'
    preis = 0

    anzahl = 0
    preis_leistung = 0
    preis_kunde = 0

    nr = 0

    for n, item in enumerate(data):

        if item['kunde'] == kunde:

            if item['leistung'] == leistung:
                anzahl += item['anzahl']
            else:
                if n > 0:
                    preis_leistung = anzahl*preis
                    preis_kunde += preis_leistung
                    print(nr, leistung, anzahl, preis, preis_leistung)
                nr = nr+1
                leistung = item['leistung']
                preis = item['preis']
                anzahl = item['anzahl']
                preis_leistung = 0
        else:
            if n > 0:
                preis_leistung = anzahl*preis
                preis_kunde += preis_leistung
                print(nr, leistung, anzahl, preis, preis_leistung)
                print(f'preis_kunde: {preis_kunde}')
            print(f'')

            kunde = item['kunde']
            print(f'kunde: {kunde}')
            print('header')
            leistung = item['leistung']
            preis = item['preis']
            anzahl = item['anzahl']
            preis_leistung = 0
            preis_kunde = 0
            nr = 1

    preis_leistung = anzahl*preis
    preis_kunde += preis_leistung
    print(nr, leistung, anzahl, preis, preis_leistung)
    print(f'preis_kunde: {preis_kunde}')


do_list(data)
