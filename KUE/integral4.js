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
let g = "x^-2";
let h = "1/x^2";
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

let simplify=(arr)=>{
 // isthere /? no go on yes check if block has x in it
if(arr.indexOf('/')<0){return arr;}

}


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
  let c = "";
  let x = "x";
  let n = "";
  if (separated.length == 1) {
    c = 1;
    n = 1;
  } else if (separated.length == 2 && separated[0] == "x") {
    c = 1;
    n = parseInt(separated[1]);
  } else if (separated.length == 2 && separated[0] !== "x") {
    c = parseInt(separated[0]);
    n = 1;
  } else {
    c = parseInt(separated[0]);
    n = parseInt(separated[2]);
  }

  console.log(separated);
  console.log(c, x, n);

  let beforeX = c;
  // turn string into a number
  let afterX = parseInt(n);
  afterX++;
  console.log(str);

  console.log("(" + beforeX + "x^" + afterX + "/" + afterX + ")");
  return "(" + beforeX + "*Math.pow(x," + afterX + ")" + "/" + afterX + ")";
};

// transform each part to primitive and rebuilds MainPrimitive
let primitive = (arr) => {
  console.log(arr);
  // want 1 *x^2
  arr=simplify(arr)
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
  // let d = "1/(x^-2)" *PROBLEM* 1/(x^-2);
  // let e = "-x*1";
  // let f = "-x/2";
  // let g = "x^-2";
  // let h =1/x^2
  // *PROBLEM*;
  let pStart = calculatePrimitiveFn(primitiveFn, start);
  let pEnd = calculatePrimitiveFn(primitiveFn, end);
  console.log(pStart);
  console.log(pEnd);
  console.log(pEnd - pStart);
  // a:6  b:8.33 c:61.33 *d:18.66* e:-6 f:-3; g:.25 h:.25;
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
let arrayG = g.match(regexPlusMinus);
console.log(g);
console.log(arrayG);
let arrayH = h.match(regexPlusMinus);
console.log(h);
console.log(arrayH);
// primitive(arrayA);
// primitive(arrayB);
// primitive(arrayC);
 primitive(arrayD);
// primitive(arrayE);
// primitive(arrayF);
// primitive(arrayG);
// primitive(arrayH);
//  Primitive
