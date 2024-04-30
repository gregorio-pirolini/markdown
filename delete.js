function bubbleSort(arr) {
  for (var i = 0; i < arr.length; i++) {
    // Last i elements are already in place
    for (var j = 0; j < arr.length - i-1; j++) {
      // Checking if the item at present iteration
      // is greater than the next iteration
      console.log(arr);
      if (arr[j] > arr[j + 1]) {
        // If the condition is true
        // then swap them
        var temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
      }
    }
  }

  // Print the sorted array
  console.log(arr);
}

// Example usage:
const arr = [64, 34, 25, 12, 22, 11, 90];
bubbleSort(arr);
console.log("Sorted array is:", arr);

function bubbleSort_Greg(arr) {
  for (let i = 0; i < arr.length; i++) {
    console.log(i);
    for (let j = 1; j < arr.length - i; j++) {
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
