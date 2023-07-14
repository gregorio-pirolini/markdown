let regexX = /([x]|[^x\^]+)/g;
let primitiveX = (str) => {
  console.log(str);
  console.log(str.match(regexX));
  let separated = str.match(regexX);
  let separatedSorted =[];
  if(separated.length==1){
    separatedSorted[0]=1
    separatedSorted[1]='x'
    separatedSorted[2]=1
  }else if ((separated.length==2)&&separated[0]=='x'){
    separatedSorted[0]=1
    separatedSorted[1]='x'
    separatedSorted[2]=separated[1]
}else if ((separated.length==2)&&separated[0]!=='x'){
    separatedSorted[0]=separated[0]
    separatedSorted[1]='x'
    separatedSorted[2]=1

}else{
    separatedSorted[0]=separated[0]
    separatedSorted[1]=separated[1]
    separatedSorted[2]=separated[2]
  }
  console.log(separated)
  console.log(separatedSorted)
  if(separatedSorted[2]!=-1){
  let beforeX =  separatedSorted[0];
  let afterX = parseInt(separatedSorted[2]);
  let nPlus1 = afterX +1;
  console.log("((" + beforeX + "x^" + nPlus1 + ")/" + nPlus1 + ")");
  return "((" + beforeX + "x^" + nPlus1 + ")/" + nPlus1 + ")";
}else{
    console.log("ln(x)");
    return "ln(x)"}
};

// primitiveX("x");
// primitiveX("x^2");
// primitiveX("4x^2");
// primitiveX("x^-2");
primitiveX("x^-1"); //ln(x)
primitiveX("1/x");//ln(x)
primitiveX("1/(x^1+2)");