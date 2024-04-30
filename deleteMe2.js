arr = [20, 22, 23, 21, 19, 18, 20, 22, 23, 23, 24, 22];
mind = 22;

function maxperiod(mind) {
  let started = false;
  let temp = 0;
  let anzahl = 0;

  for (n = 0; n < arr.length; n++) {
    console.log(arr[n])
    if (arr[n] >= mind) { console.log(arr[n])
      if (started == true) {
        temp=temp+1; console.log(temp)
      } else {
        temp = 1;
        started = true;
      }
    } else {
      if (started == true) {
        if (temp > anzahl) {
          anzahl = temp;
        }
        started = false;
      }
    }
    if (temp > anzahl) {
        anzahl = temp;
      }
  }
  console.log('anzahl: '+ anzahl);
}

maxperiod(mind);
