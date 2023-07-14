//Calculate intergal from curve
//fx
let a = "x";
let b = "x^2-1";
let c = "2x^3+3x^2+x+1";
//start end integrals
let start = 2;
let end = 4; 

// cut string into
// selects + and -  or what is in bertween
let regexPlusMinus = /([+-]|[^+-]+)/g;
let regexX=/([x]|[^x]+)/g;







let reduce =(arr)=>{
    console.log(arr)
let value = arr[0];
if(arr.length>1){
console.log(arr.length)
for(let i=1; i<arr.length-1; i++)
{
if(arr[i]=='+'){
    value+=arr[i+1]
}else if(arr[i]=='-'){
    value-=arr[i+1]
}
}
}
return value;
}

let calculatePrimitiveFn=(arr,nb)=>{
    let values=[];

    console.log(arr.join('...')+';');
    for (let i =0; i<arr.length;i++){
       if(arr[i].indexOf("x")>0){  
    let xPos=arr[i].indexOf("x")
    let slashPos=arr[i].indexOf("/")
    let multiply=parseInt(arr[i].substring(0, xPos));
    let power = parseInt(arr[i].substring(xPos+2, slashPos));
    let divide =  parseInt(arr[i].substring(slashPos+1,arr[i].length ));
   console.log(divide) 
    values[i]=multiply*Math.pow(nb, power)/divide;
}else{
    values[i] =arr[i];
}
}  
 
 let reduced = reduce(values );
 
return  reduced ;
}
let primitiveC=(str)=>{
    //x->(x^n+1)/ (n+1)
    console.log(str+'x')
    return str+'x'
}

let primitiveX=(str)=>{
    console.log(str.match(regexX));
    let xPos=str.indexOf("x")
    let beforeX=str.substring(0, xPos);
    let afterX = str.substring(xPos+2, str.length);
    if(beforeX==''){beforeX=1;}
    if(afterX==''){afterX=1;}
    let afterXnb=parseInt(afterX);
    let beforeXnb=parseInt(beforeX);
    console.log(beforeXnb,afterXnb)
    let nPlus1= afterXnb+1;
    console.log('('+beforeXnb+'x^'+nPlus1+' /  '+nPlus1+')')
    return   beforeXnb+'x^'+nPlus1+' /  '+nPlus1 ;
}

// x->(x^n+1)/ (n+1)
let primitive=(arr)=>{
    let primitiveFn=[];
    for(let i=0; i<arr.length;i++)
     {
      if(arr[i].indexOf('x')>-1){ //if has x
        primitiveFn[i] = primitiveX(arr[i]);
      }  else if(!isNaN(arr[i])){
        primitiveFn[i] =primitiveC(arr[i]);
      }else{
        primitiveFn[i] = arr[i] ;
      }
    }  
console.log(primitiveFn)
let pStart=calculatePrimitiveFn(primitiveFn,start);
let pEnd=calculatePrimitiveFn(primitiveFn,end);
console.log(pStart);
console.log(pEnd);
console.log(pEnd-pStart)
} 

//start
let arrayA = a.match(regexPlusMinus)
let arrayB = b.match(regexPlusMinus)
let arrayC = c.match(regexPlusMinus)

primitive(arrayA)
primitive(arrayB)
primitive(arrayC)

// Primitive
