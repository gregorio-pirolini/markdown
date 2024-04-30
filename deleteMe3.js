let id = [6,2,5,8,4,3,1,9,7,9]

function pruefeId(id){
//schritt ein
let schritt2=0
let schritt2Ergebnis=0
let schritt3=0
for (n=0; n<id.length-1;n++){
if ((n+1)%2==0){

    schritt2=id[n]*2
    while (schritt2 >9){
        s=schritt2.toString()
        s = schritt2.toString();
        schritt2 = parseInt(s[0]) + parseInt(s[1]); 
    } 
    schritt2Ergebnis+=schritt2
    console.log(schritt2Ergebnis)
}else{
    console.log('err')
}
}
for (n=0; n<id.length-1;n++){
    if (n+1%2==1){
        schritt3+=id[n]
}
}
let schritt4 = schritt3+schritt2Ergebnis
let schritt5 = schritt4 + (10-schritt4%10)
let schritt6 = schritt5- schritt4

if(schritt6==id[id.length-1]){
    console.log('good')
}
else{ console.log('no good')}
}


pruefeId(id)