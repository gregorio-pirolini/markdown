def reformat_string(s):
    print(s)
#make array from string
    first_arr= s.split(',')
#make export array
    export_arr = []
#make export array unique
    export_arr_unique = []
    for n in first_arr:
        print (n)
        if '-' in n:
            second_arr= n.split('-')
            low_number = int(second_arr[0])
            high_number = int(second_arr[1])
            newString =''
            for nb in range(low_number, high_number+1):
                newString += str(nb) + ','
            newString = newString[:-1]
            export_arr.append(newString) 
        else:
            export_arr.append(n) 
# remove diplicate
            for m in export_arr:
                if m not in export_arr_unique:
                    export_arr_unique.append(m)

#make string sorted
    export_arr_unique_sorted = sorted(export_arr_unique)

    #make string unsorted
    exportString = ",".join(export_arr_unique_sorted)
#print sting    
    print(exportString)

reformat_string('5-6,1,2,3,1,2,3,5-6,8,9')