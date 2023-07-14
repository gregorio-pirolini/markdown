//Calculate intergal from curve
//fx
let a = "x";
let b = "(x^2-1)/2";
// b = 'x^2-1';
// b ='-x'
// b ='2x^3+3x^2+x+1'
let c = "((2x^3+3x^2+x+1)/3)";
let d = "1/(x^-2)";
let e = "-x*1";
let f = "-x/2";

let answerA = 6;
let answerB = 8.33;
let answerC = 61.33;
let answerD = 18.66;
let answerE = -6;
let answerF = -3;

//start end integrals
let start = 2;
let end = 4;

// cut string into
// selects + and -  or what is in bertween
let regexPlusMinus = /((\d*x\^-\d)|[()+-/*]|[^()+-/*]+)/g;
let regexX = /([x]|[^x\^]+)/g;

let calculatePrimitiveFn = (arr, nb) => {
  console.log(nb);
  console.log(arr.join(""));
  console.log(arr.join(""));
  let values = arr.join("").replaceAll("x", nb);
  let reduced = eval(values);
  return reduced;
};
let primitiveC = (str) => {
  //x->(x^n+1)/ (n+1)
  console.log(str + "x");
  return "(" + str + "*x)";
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
  return "(" + beforeX + "*Math.pow(x," + nPlus1 + ")" + "/" + nPlus1 + ")";
};

// transform each part to primitive and rebuilds MainPrimitive
let primitive = (arr) => {
  console.log(arr);
  let primitiveFn = [];

  for (let i = 0; i < arr.length; i++) {
    if (arr[i].indexOf("x") > -1) {
      //has x
      primitiveFn[i] = primitiveX(arr[i]);
    } else if (!isNaN(arr[i])) {
      // is constante
      if (arr[i - 1] == "-" || arr[i - 1] == "+") {
        primitiveFn[i] = primitiveC(arr[i]);
      } else {
        primitiveFn[i] = arr[i];
      }
    } else {
      // is plus minus
      primitiveFn[i] = arr[i];
    }
  }

  console.log(primitiveFn.join(""));
  // let a = "x";  8/3 -
  // let b = "(x^2-1)/2";
  // let c = "((2x^3+3x^2+x+1)/3)";
  // let d = "1/(x^-2)" *PROBLEM*;
  // let e = "-x*1";
  // let f = "-x/2";

  let pStart = calculatePrimitiveFn(primitiveFn, start);
  let pEnd = calculatePrimitiveFn(primitiveFn, end);
  console.log(pStart);
  console.log(pEnd);
  console.log(pEnd - pStart);
  // a:6  b:8.33 c:61.33 *d:18.66* e:-6 f:-3;
};

//start
let arrayA = a.match(regexPlusMinus);
console.log(a);
console.log(arrayA);
let arrayB = b.match(regexPlusMinus);
console.log(b);
console.log(arrayB);
let arrayC = c.match(regexPlusMinus);
console.log(c);
console.log(arrayC);
let arrayD = d.match(regexPlusMinus);
console.log(d);
console.log(arrayD);
let arrayE = e.match(regexPlusMinus);
console.log(e);
console.log(arrayE);
let arrayF = f.match(regexPlusMinus);
console.log(f);
console.log(arrayF);
// primitive(arrayA);
// primitive(arrayB);
//  primitive(arrayC);
primitive(arrayD);
 //primitive(arrayE);
  //primitive(arrayF);
//  Primitive
