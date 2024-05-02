jQuery.noConflict(); //$ freigegeben
jQuery(document).ready(function($) {
var  tables = document.getElementsByTagName( 'table' )[0];
var rowLength = 82;


var aInstitution = [];
var aTitel = [];
var aVorname = [];
var aName = [];
var aStrasse = [];
var aPLZ = [];
var aOrt= [];
var aMw= [];
var aBemerkung= [];
var aDatum= [];
var aRechnungsNummer= [];
var aRl= [];
var aEmail= [];
var aPreis = [];
var aPorto = [];
var aAlles=[];
var aAlles0=[];
var aAlles1=[];
var aAlles2=[];
var aAlles3=[];
var aAlles4=[];
var aAlles5=[];
var aAlles6=[];
var aAlles7=[];
var aAlles8=[];
var aAlles9=[];
var aAlles10=[];
var aAlles11=[];
var aAlles12=[];
var aAlles13=[];
var aAlles14=[];
var aAllesTidy=[];



function toDb(){
  for (var i=1; i<rowLength; i++) {    
var  institution = tables.rows[i].cells[0].textContent.trim();
 
aInstitution.push(institution);
};   
 for (var i=1; i<rowLength; i++) {    
var  titel = tables.rows[i].cells[1].textContent.trim();
aTitel.push(titel);
};  
for (var i=1; i<rowLength; i++) {    
var  vorname =  tables.rows[i].cells[2].textContent.trim();
aVorname.push(vorname);
}; 
for (var i=1; i<rowLength; i++) {    
var  name =  tables.rows[i].cells[3].textContent.trim();
aName.push(name);
};

for (var i=1; i<rowLength; i++) {    
var  strasse =  tables.rows[i].cells[4].textContent.trim();
aStrasse.push(strasse);
};

for (var i=1; i<rowLength; i++) {    
var  plz =  tables.rows[i].cells[5].textContent.trim();
aPLZ.push(plz);
};

for (var i=1; i<rowLength; i++) {    
var  ort =  tables.rows[i].cells[6].textContent.trim();
aOrt.push(ort);
};

for (var i=1; i<rowLength; i++) {    
var  mw =  tables.rows[i].cells[7].textContent.trim();
aMw.push(mw);
};

for (var i=1; i<rowLength; i++) {    
var  bemerkung =  tables.rows[i].cells[44].textContent.trim();
aBemerkung.push(bemerkung);
};
for (var i=1; i<rowLength; i++) {    
var  email =  tables.rows[i].cells[45].textContent.trim();
aEmail.push(email);
};


for (var i=1; i<rowLength; i++) {    
var  datum =  tables.rows[i].cells[8].textContent.trim();
aDatum.push(datum);
};

for (var i=1; i<rowLength; i++) {    
var  rechnungsNummer =  tables.rows[i].cells[9].textContent.trim();
aRechnungsNummer.push(rechnungsNummer);
};

for (var i=1; i<rowLength; i++) {    
var  rl =  tables.rows[i].cells[10].textContent.trim();
aRl.push(rl);
};


for (var i=1; i<rowLength; i++) {    
var  preis =  tables.rows[i].cells[13].textContent.trim();
preis = preis.substring(0, preis.length - 2);
aPreis.push(preis);
};

for (var i=1; i<rowLength; i++) {    
var  porto =  tables.rows[i].cells[12].textContent.trim();
porto = porto.substring(0, porto.length - 2);
aPorto.push(porto);
};
console.log(aInstitution);
console.log(aTitel);
console.log(aVorname);
console.log(aName);
console.log(aStrasse);
console.log(aPLZ);
console.log(aOrt);
console.log(aMw);
console.log(aBemerkung);
console.log(aEmail);
recreate();
};

function recreate(){
//    alert('recreate')
for (var j=0; j<81; j++) {    
aAlles[j]=[]; 
aAlles0.push(aInstitution[j]);
aAlles1.push(aTitel[j]);
aAlles2.push(aVorname[j]);
aAlles3.push(aName[j]);
aAlles4.push(aStrasse[j]);
aAlles5.push(aPLZ[j]);
aAlles6.push(aOrt[j]);
aAlles7.push(aMw[j]);
aAlles8.push(aBemerkung[j]);
aAlles9.push(aEmail[j]);
aAlles10.push(aDatum[j]);
aAlles11.push(aRechnungsNummer[j]);
aAlles12.push(aRl[j]);
aAlles13.push(aPreis[j]);
aAlles14.push(aPorto[j]);
}; 
console.log('aAlles0'); 
console.log(aAlles0); 
 
for (var j=0; j<81; j++) {
    
aAlles[j].push(aAlles0[j]);
aAlles[j].push(aAlles1[j]);
aAlles[j].push(aAlles2[j]);
aAlles[j].push(aAlles3[j]);
aAlles[j].push(aAlles4[j]);
aAlles[j].push(aAlles5[j]);
aAlles[j].push(aAlles6[j]);
aAlles[j].push(aAlles7[j]);
aAlles[j].push(aAlles8[j]);
aAlles[j].push(aAlles9[j]);
aAlles[j].push(aAlles10[j]);
aAlles[j].push(aAlles11[j]);
aAlles[j].push(aAlles12[j]);
aAlles[j].push(aAlles13[j]);
aAlles[j].push(aAlles14[j]);
}; 
console.log('aAlles');
console.log(aAlles) ;
//tidyUp(aAlles) to move kunden;
//writeBestellungen(aAlles); to move bestellungen
addPorto(aAlles);
}
function tidyUp(x){
    //for each in aAlles
   //check if an array in x has name vorname und adress
    for(var i=0; i<aAlles.length; i++){
   var wert2= x[i][2] ;
   var wert3= x[i][3];
   var wert4= x[i][4];
   var test='add';
   console.log(wert2 + ' '+ wert3+ ' '+ wert4);
   
   if(aAllesTidy.length<1){
        aAllesTidy.push(x[i]);
        alert(1);
    }else{
          for(var j=0; j<aAllesTidy.length; j++){
       if ((wert2===aAllesTidy[j][2]) && (wert3===aAllesTidy[j][3]) && (wert4===aAllesTidy[j][4])) {
//           alert('already there');
test="dont";
           }
           
   
            }
      
            if(test==="add"){
               aAllesTidy.push(x[i]);
               
            }
            
    }
     }
      console.log( 'aAlles');
     console.log( aAlles.length);
     console.log( 'aAllesTidy');
     console.log( aAllesTidy.length);
     console.log( aAllesTidy);
     
     writeKunden();
     
};
function writeBestellungen(x)
{
 var meineBestellungen = JSON.stringify(aAlles); 
 $.post('php/bestell.php',  
'&data=' + meineBestellungen


    , function(result) {
        console.log(result);
       });

 
}

function writeKunden(){
var meineKunden = JSON.stringify(aAllesTidy);

 $.post('php/write.php',  
'&data=' + meineKunden


    , function(result) {
        console.log(result);
       });

    
}


   
   //to load kunden 
//myFunctionConfirm(j); 
   
   
 


function addPorto(x) { 
  var meineporto = JSON.stringify(aAlles);
  $.post('php/writePorto.php',  
'&data=' + meineporto


    , function(result) {
        console.log(result);
       });
  
    } 
    
   
  

 toDb(); 
    
    
});
   



