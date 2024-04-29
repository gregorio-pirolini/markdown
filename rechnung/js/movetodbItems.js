jQuery.noConflict(); //$ freigegeben
jQuery(document).ready(function($) {
var  tables = document.getElementsByTagName( 'table' )[0];
var rowLength = 82;


 

var aRechnungsNummer= [];
var aKk= [];
var aM1= [];
var aM2= [];
var aM3= [];
var aR1= [];
var aR2= [];
var aR3= [];
var aR4= [];
var aR5= [];
var aR6= [];
var aR7= [];
var aR8= [];
var aR9= [];
var a501= [];
var a502= [];
var a503= [];
var a504= [];
var a505= [];
var a506= [];
var a507= [];
var a508= [];
var a509= [];
var a510= [];
var a511= [];
var a512= [];
var aA1= [];
var aA2= [];
var aA3= [];
var aA4= [];
var aFd12= [];
var aAlles=[];
var aPorto= [];


function toDb(){
console.log('helllllo?');

for (var i=1; i<rowLength; i++) {    
var  rechnungsNummer =  tables.rows[i].cells[9].textContent.trim();
aRechnungsNummer.push(rechnungsNummer);
};

for (var i=1; i<rowLength; i++) {    
var  kk =  tables.rows[i].cells[14].textContent.trim();
aKk.push(kk);
};

for (var i=1; i<rowLength; i++) {    
var  m1 =  tables.rows[i].cells[15].textContent.trim();
aM1.push(m1);
};
for (var i=1; i<rowLength; i++) {    
var  m2 =  tables.rows[i].cells[16].textContent.trim();
aM2.push(m2);
};
for (var i=1; i<rowLength; i++) {    
var  m3 =  tables.rows[i].cells[17].textContent.trim();
aM3.push(m3);
};
for (var i=1; i<rowLength; i++) {    
var  r1 =  tables.rows[i].cells[18].textContent.trim();
aR1.push(r1);
};
for (var i=1; i<rowLength; i++) {    
var  r2 =  tables.rows[i].cells[19].textContent.trim();
aR2.push(r2);
};
for (var i=1; i<rowLength; i++) {    
var  r3 =  tables.rows[i].cells[20].textContent.trim();
aR3.push(r3);
};
for (var i=1; i<rowLength; i++) {    
var  r4 =  tables.rows[i].cells[21].textContent.trim();
aR4.push(r4);
};
for (var i=1; i<rowLength; i++) {    
var  r5 =  tables.rows[i].cells[22].textContent.trim();
aR5.push(r5);
};
for (var i=1; i<rowLength; i++) {    
var  r6 =  tables.rows[i].cells[23].textContent.trim();
aR6.push(r6);
};
for (var i=1; i<rowLength; i++) {    
var  r7 =  tables.rows[i].cells[24].textContent.trim();
aR7.push(r7);
};
for (var i=1; i<rowLength; i++) {    
var  r8 =  tables.rows[i].cells[25].textContent.trim();
aR8.push(r8);
};
for (var i=1; i<rowLength; i++) {    
var  r9 =  tables.rows[i].cells[26].textContent.trim();
aR9.push(r9);
};
for (var i=1; i<rowLength; i++) {    
var  x501 =  tables.rows[i].cells[27].textContent.trim();
a501.push(x501);
};
for (var i=1; i<rowLength; i++) {    
var  x502 =  tables.rows[i].cells[28].textContent.trim();
a502.push(x502);
};
for (var i=1; i<rowLength; i++) {    
var  x503 =  tables.rows[i].cells[29].textContent.trim();
a503.push(x503);
};
for (var i=1; i<rowLength; i++) {    
var  x504 =  tables.rows[i].cells[30].textContent.trim();
a504.push(x504);
};
for (var i=1; i<rowLength; i++) {    
var  x505 =  tables.rows[i].cells[31].textContent.trim();
a505.push(x505);
};
for (var i=1; i<rowLength; i++) {    
var  x506 =  tables.rows[i].cells[32].textContent.trim();
a506.push(x506);
};
for (var i=1; i<rowLength; i++) {    
var  x507 =  tables.rows[i].cells[33].textContent.trim();
a507.push(x507);
};
for (var i=1; i<rowLength; i++) {    
var  x508 =  tables.rows[i].cells[34].textContent.trim();
a508.push(x508);
};
for (var i=1; i<rowLength; i++) {    
var  x509 =  tables.rows[i].cells[35].textContent.trim();
a509.push(x509);
};
for (var i=1; i<rowLength; i++) {    
var  x510 =  tables.rows[i].cells[36].textContent.trim();
a510.push(x510);
};
for (var i=1; i<rowLength; i++) {    
var  x511 =  tables.rows[i].cells[37].textContent.trim();
a511.push(x511);
};
for (var i=1; i<rowLength; i++) {    
var  x512 =  tables.rows[i].cells[38].textContent.trim();
a512.push(x512);
};
for (var i=1; i<rowLength; i++) {    
var  a1 =  tables.rows[i].cells[39].textContent.trim();
aA1.push(a1);
};
for (var i=1; i<rowLength; i++) {    
var  a2 =  tables.rows[i].cells[40].textContent.trim();
aA2.push(a2);
};
for (var i=1; i<rowLength; i++) {    
var  a3 =  tables.rows[i].cells[41].textContent.trim();
aA3.push(a3);
};
for (var i=1; i<rowLength; i++) {    
var  a4 =  tables.rows[i].cells[42].textContent.trim();
aA4.push(a4);
};
for (var i=1; i<rowLength; i++) {    
var  fd12 =  tables.rows[i].cells[43].textContent.trim();
aFd12.push(fd12);
};

for (var i=1; i<rowLength; i++) {    
var  porto =  (tables.rows[i].cells[12].textContent.trim()).replace(' €','');
aPorto.push(porto);
};
console.log('helllllo?');
 recreate();
};

function recreate(){
   
 

for (var k=0; k<81; k++) { 
aAlles[k]=[];
aAlles[k].push(aRechnungsNummer[k]);
aAlles[k].push(aKk[k]);
aAlles[k].push(aM1[k]);
aAlles[k].push(aM2[k]);
aAlles[k].push( aM3[k]);
aAlles[k].push( aR1[k]);
aAlles[k].push( aR2[k]);
aAlles[k].push( aR3[k]);
aAlles[k].push( aR4[k]);
aAlles[k].push( aR5[k]);
aAlles[k].push( aR6[k]);
aAlles[k].push( aR7[k]);
aAlles[k].push( aR8[k]);
aAlles[k].push( aR9[k]);
aAlles[k].push( a501[k]);
aAlles[k].push( a502[k]);
aAlles[k].push( a503[k]);
aAlles[k].push( a504[k]);
aAlles[k].push( a505[k]);
aAlles[k].push( a506[k]);
aAlles[k].push( a507[k]);
aAlles[k].push( a508[k]);
aAlles[k].push( a509[k]);
aAlles[k].push( a510[k]);
aAlles[k].push( a511[k]);
aAlles[k].push( a512[k]);
aAlles[k].push( aA1[k]);
aAlles[k].push( aA2[k]);
aAlles[k].push( aA3[k]);
aAlles[k].push( aA4[k]);
aAlles[k].push( aFd12[k]);
aAlles[k].push( aPorto[k]);
}

for (var i = 0; i < 81; i++) {
    for (var j = 0; j < aAlles[i].length; j++) {
        if (aAlles[i][j] == '') {
            aAlles[i][j] = '0';
        }
    }
}
 console.log('aAlles');
 console.log(aAlles);
 
 serialiIse(aAlles);
 
}

 function serialiIse(x){
     var meineBestellungen = JSON.stringify(x);
          console.log(meineBestellungen);
bestellungUpdate(meineBestellungen);

 }
 
function bestellungUpdate(x){
$.post('php/bestellungUpdate.php',  
        'data=' + x, 
        function(result) {
//        console.log(result);
       });

  }
 

   
   //to load kunden 
//myFunctionConfirm(j); 
   
   
 



    
   
  

 toDb(); 
    
    
});
   



