arr = [1000,2,3,1.1, 5,11]

def sortOut(arr):
    for i in range(len(arr)):
        print(f'始 i:{i} {arr}')
        for j in range(1, len(arr) - i):
            print(f'後 n:{arr[j-1]} > m:{arr[j]} ?')
            if arr[j-1] > arr[j]:
                print('Swap elements')
                arr[j-1], arr[j] = arr[j], arr[j-1]
                print(arr)
        print(f'終 {arr}')


                
            
        print('-----------------')
# Example usage
 
sortOut(arr)
print(arr)