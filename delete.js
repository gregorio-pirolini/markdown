function bubbleSort(arr) {
     
    for (let i = 0; i < arr.length - 1; i++) {
        for (let j = 0; j < arr.length - i - 1; j++) {
            if (arr[j] > arr[j + 1]) {
                // Swap arr[j] and arr[j + 1]
                const temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
            }
        }
    }
}

// Example usage:
const arr = [64, 34, 25, 12, 22, 11, 90];
bubbleSort(arr);
console.log("Sorted array is:", arr);

function bubbleSort_Greg(arr) {
   
    for (let i = 0; i < arr.length-1; i++) {
        console.log(i)
        for (let j = 1; j < arr.length - i ; j++) {
            if (arr[j] < arr[j - 1]) {
                // Swap arr[j] and arr[j + 1]
                const temp = arr[j];
                arr[j] = arr[j - 1];
                arr[j - 1] = temp;
            }
        }
    }
}

const arrgreg = [10, 9, 8, 7, 6, 5, 4];
bubbleSort_Greg(arrgreg);
console.log("Sorted array is:", arrgreg);