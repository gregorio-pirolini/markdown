let a = '1/x';
let b = '(1/x^2)+3';
let c = '((1/x^2)+3)';


let regexPlusMinus = /((\d*x\^-\d)|[()+-/]|[^()+-/]+)/g;



let arrayA = a.match(regexPlusMinus);
console.log(a);
console.log(arrayA);
// doRegexPlusMinus(arrayA)
let arrayB = b.match(regexPlusMinus);
console.log(b);
console.log(arrayB);
// doRegexPlusMinus(arrayB)
let arrayC = c.match(regexPlusMinus);
console.log(c);
console.log(arrayC);
// doRegexPlusMinus(arrayB)

