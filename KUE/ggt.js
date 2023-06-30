console.log(`hello`);

let divA = [];
let divB = [];

let modulo = (x, ab) => {
  for (i = x; i > 0; i--) {
    let numb = x % i;
    if (x % i == 0) {
      if (ab == "a") {
        divA.push(i);
      } else {
        divB.push(i);
      }
    }
  }
};

let ggt = (a, b) => {
  modulo(a, "a");
  modulo(b, "b");

  let commonValues = divA.filter((value) => divB.includes(value));
  console.log(commonValues)
  // Find the maximum common value
  let maxCommonValue = Math.max(...commonValues);

  console.log(divA)
  console.log(divB)
  
  console.log("The largest common number is: " + maxCommonValue);
};

ggt(20, 30);
