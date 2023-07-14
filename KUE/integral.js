//Calculate intergal from curve

let a = "x";
let b = "x^2-1";
let c = "2x^2+3";
let d = "2x^-2+3";
let e = "11/2x";
let f = "x/x^2";
// check right syntax

// cut string into on plus minus but leaves x^-
let regexPlusMinus = /((\d*x\^-\d)|[+-]|[^+-]+)/g;
 
console.log('...........regexPlusMinus.......')
let arrayA = a.match(regexPlusMinus)
console.log(a);
console.log(arrayA);
let arrayB = b.match(regexPlusMinus)
console.log(b);
console.log(arrayB);
let arrayC = c.match(regexPlusMinus)
console.log(c);
console.log(arrayC);
let arrayD = d.match(regexPlusMinus)
console.log(d);
console.log(arrayD);
let arrayE = e.match(regexPlusMinus)
console.log(e);
console.log(arrayE);
let arrayF = f.match(regexPlusMinus)
console.log(f);
console.log(arrayF);
// Primitive
