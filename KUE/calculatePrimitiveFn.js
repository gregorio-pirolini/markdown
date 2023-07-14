let calculatePrimitiveFn = (arr, nb) => {
    let values = [];
  
    console.log(arr.join("...") + ";");
    for (let i = 0; i < arr.length; i++) {
      if (arr[i].indexOf("x") > 0) {
        let xPos = arr[i].indexOf("x");
        let slashPos = arr[i].indexOf("/");
        let multiply = parseInt(arr[i].substring(0, xPos));
        let power = parseInt(arr[i].substring(xPos + 2, slashPos));
        let divide = parseInt(arr[i].substring(slashPos + 1, arr[i].length));
        console.log(divide);
        values[i] = (multiply * Math.pow(nb, power)) / divide;
      } else {
        values[i] = arr[i];
      }
    }
  
    let reduced = reduce(values);
  
    return reduced;
  };