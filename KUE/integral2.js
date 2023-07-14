//Calculate intergal from curve
//fx
let a = "x";
let b = "x^2-1";
let c = "2x^3+3x^2+x+1";
let d = "x^-2";
let e = "-x";
//start end integrals
let start = 2;
let end = 4;

// cut string into
// selects + and -  or what is in bertween
let regexPlusMinus = /((\d*x\^-\d)|[+-]|[^+-]+)/g;
let regexX = /([x]|[^x\^]+)/g;

let reduce = (arr) => {
  console.log(arr);
  if (arr[0] == "-") {
    arr[1] = arr[1] * -1;
    arr.shift();
  }
  let value = arr[0];
  if (arr.length > 1) {
    console.log(arr.length);
    for (let i = 1; i < arr.length; i++) {
      if (arr[i] == "+") {
        value += arr[i + 1];
      } else if (arr[i] == "-") {
        value -= arr[i + 1];
      }
    }
  }
  return value;
};

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
let primitiveC = (str) => {
  //x->(x^n+1)/ (n+1)
  console.log(str + "x");
  return str + "x";
};

let primitiveX = (str) => {
  console.log(str);
  console.log(str.match(regexX));
  let separated = str.match(regexX);
  let separatedSorted = [];
  if (separated.length == 1) {
    separatedSorted[0] = 1;
    separatedSorted[1] = "x";
    separatedSorted[2] = 1;
  } else if (separated.length == 2 && separated[0] == "x") {
    separatedSorted[0] = 1;
    separatedSorted[1] = "x";
    separatedSorted[2] = separated[1];
  } else if (separated.length == 2 && separated[0] !== "x") {
    separatedSorted[0] = separated[0];
    separatedSorted[1] = "x";
    separatedSorted[2] = 1;
  } else {
    separatedSorted[0] = separated[0];
    separatedSorted[1] = separated[1];
    separatedSorted[2] = separated[2];
  }
  console.log(separated);
  console.log(separatedSorted);

  let beforeX = separatedSorted[0];
  // turn string into a number
  let afterX = parseInt(separatedSorted[2]);

  let nPlus1 = afterX + 1;
  console.log("(" + beforeX + "x^" + nPlus1 + "/" + nPlus1 + ")");
  return beforeX + "x^" + nPlus1 + " /  " + nPlus1;
};

// transform each part to primitive and rebuilds MainPrimitive
let primitive = (arr) => {
  let primitiveFn = [];
console.log(arr)
  for (let i = 0; i < arr.length; i++) {
    if (arr[i].indexOf("x") > -1) {
      //has x
      primitiveFn[i] = primitiveX(arr[i]);
    } else if (!isNaN(arr[i])) {
      // is constante
      primitiveFn[i] = primitiveC(arr[i]);
    } else {
      // is plus minus
      primitiveFn[i] = arr[i];
    }
  }


  console.log(primitiveFn);
  let pStart = calculatePrimitiveFn(primitiveFn, start);
  let pEnd = calculatePrimitiveFn(primitiveFn, end);
  console.log(pStart);
  console.log(pEnd);
  console.log(pEnd - pStart);
};

//start
let arrayA = a.match(regexPlusMinus);
let arrayB = b.match(regexPlusMinus);
let arrayC = c.match(regexPlusMinus);
let arrayD = d.match(regexPlusMinus);
let arrayE = e.match(regexPlusMinus);
primitive(arrayA);
primitive(arrayB);
  primitive(arrayC);
  primitive(arrayD);
primitive(arrayE);
// Primitive
