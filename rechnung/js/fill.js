jQuery.noConflict(); //$ freigegeben
jQuery(document).ready(function($) {
var img=[
'img/transparent.png',
 'img/transparent.png',
 'img/transparent.png'
 ];


//corona ad up
var $normalerProzent=[7,19];
var $coronaProzent=[5,16];
var $prozent=[];




//loadbestellungNew(1167);
var $winwidth; //check for banner 
var totalItems; //number of items
var totalKk; //number of kk
var totalItemsPreis = 0; //number of items
var totalKkPreis  = 0;; //number of kk
var itemsToSave=[]; //items to save
 var biggerPreis;
var myPost= [];//??
var x; //??
var round=0; //where si the text layou
  resetLetterDiv();


//findTime('2020-07-01');

   
//
function calculateprozent(datum){
  
 //31 06 2020 23 59 59 =1593554399  
 //01 01 2021 00 00 00 =1609455600  
// var $datumtoUnix=datumToUnix($datum);
var startCorona=1593554399;
 var endCorona=1609455600;
 $.post("php/mktime.php", {datum: datum}, function(data,status,xhr){
$datumtoUnix=parseInt(data);
// alert(typeof($datumtoUnix));
 
 if( ($datumtoUnix>startCorona) && ($datumtoUnix<endCorona)    ){
  $prozent=   $coronaProzent;
 }  else{
   $prozent=   $normalerProzent;  
 } 
 
$('.new7').text($prozent[0]);
$('.new19').text($prozent[1]);
});
}

//start funtions
resiIze();
borderTop();
autofill_ITEMS_Names_from_DB();
//set normal oder buch
$('input[name=nb]:radio:nth(0)').prop('checked', true);

// loadbestellungNew(1186);
//autofill ITEMS Names from DB
function autofill_ITEMS_Names_from_DB(){
$.getJSON('php/items_names_list.php',function(data) { //JSON holen
             $.each(data, function(idx, obj) {
  
console.log('function autofill_ITEMS_Names_from_DB()');
var valItem = obj.iName;
var items =  '#item'+obj.iId;
//console.log(items);
//console.log(valItem);
$(items).text(valItem);
});//each
}//data
);//getJSON
}       
//loadFromKundenNummer

function emptyAllData(){
console.log('fName function emptyAllData()');
removeKundentDaten();
removePriceNameAndValue();
}

function removePriceNameAndValue(){
$("#preisName").val('');  
$(".comma").val('');
$("#preisName").attr('data-preislistename','');
}
function removeKundentDaten() {
$("#kundenFill_kundenNummer").val('');
$("#kundenFill_institution").val('');
$("#kundenFill_titel").val(''); 
$("#kundenFill_name").val('');
$("#kundenFill_vorname").val('');
$("#kundenFill_anschrift").val('');
$("#kundenFill_plz").val('');
$("#kundenFill_ort").val('');
document.getElementById("kundenFill_sexM").checked = false;
document.getElementById("kundenFill_sexW").checked = false;
document.getElementById("kundenFill_sexU").checked = false;
$("#kundenFill_email").val('');
$("#kundenFill_mob").val('');
$("#kundenFill_tel").val('');
$("#myTextArea").val('');    
}
function removeLR(){
console.log('fName: function removeLR()');
$('#lrName').attr('data-lrName', '');
$('#myTextAreaLr').val('');   
$('#theLrName').val('');
$('#lrName').val('');
}


function removeKudenFinden(){//removeKudenFinden
console.log('fName function removeKudenFinden()');
$("#kundenBestellungNummer h3 form ul li input").val('');
$('.provisoryButtons').parent().remove();   
$('.provisoryButtons_2').parent().remove();
}


function removeErr(){
        console.log('fName function removeErr()');
        $('.error').hide();
        $('#kundenForm input[type="text"]').css("background-color", "white");
};

function removeLetter(){
$('[id^=letter_]').text('');
$('#sehrGeherte_2').html('');
$('#sehrGeherte_3').html('');
$("#letter_table tr").remove(); 
}

//NEUEn KUNDE EINTRAGEN$
$('body').on('click', '#Neuen_Kunden_Eintragen', function() {
console.log("fName: 'click', '#Neuen_Kunden_Eintragen");
$('#theStorno').val('');
removeLetter();
$("#rechnung").attr("data-bid",'');
emptyAllData();
removeKudenFinden();
removeErr();
removeLast();
$("#preisName").attr("data-preislisteName",1);
$("#preisName").val("Normale");
completePrice("Normale");
});

function testString(regex,string){
console.log('fName testString(regex,string)');
//    console.log('testString '+string);
 if (regex === "onlyLetters") {
     regex = /^[a-zA-ZùúûüÿäàáâæçéèêëïîíôœìöòóùñçğıİşÙÚÛÜŸÀÄÁÂÆÇÉÈÊËÏÎÍÔÖŒÌÒÓÙÑÇß'\-\s]+$/;
 }else if (regex === "address") {
     regex = /^[a-zA-ZùúûüÿäàáâæçéèêëïîíôœìòöóùñçğıİşÙÚÛÜŸÀÄÁÂÆÇÉÈÊËÏÎÍÔÖŒÌÒÓÙÑÇß0-9'_\.\-\s\,]+$/;
 }else if (regex === "tel") {
     regex = /^[0-9+()\-\/\.\s]+$/;
 }else if (regex === "email") {
     regex = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
 }else if (regex === "comment") {
     regex = /^[a-zA-ZùúûüÿäàáâæçéèêëïîíôœìòöóùñçğıİşÙÚÛÜŸÀÄÁÂÆÇÉÈÊËÏÎÍÔÖŒÌÒÓÙÑÇß0-9+€()<>!?:/;'_\.\-\s\,]+$/;
 }
 
if(!regex.test(string)){ 
     return 1;
 }else{ 
     return 0;
} 
}

function cap(text) {//make to Uppercase
console.log('fName: cap(text)');


var res = text.substring(0, 4);
//alert (res);
if(res!=='von '){

return text.substr(0, 1).toUpperCase() + text.substr(1);
//$("#"+id).val('');
} else{
    
return text.substr(0 , text.indexOf(' ')+1) +
text.substr(text.indexOf(' ') +1 ,  1).toUpperCase()+
text.substr(text.indexOf(' ') +2);
}
}
function markFaulty(id){
        console.log('fName: function markFaulty(id)');
        console.log('markFaulty');
        //$("#"+id).val('');
        $("#" + id).css('background-color', 'pink');
}
  
function writeFaulty(id, mess) {
        console.log('fName: function writeFaulty(id, mess)');
        $("#" + id + "_error").html('<p>' + mess + '</p>');
        $("#" + id + "_error").show();
        $("#" + id + "_error").css("margin-top", 0);
};   

function checkValues(){
console.log('fName: function checkValues()');
var err= [];
var errEmpty = [];
var write = [];
write[0]='Institution: bitte nur Buchstaben';
write[1]='Titel: bitte nur Buchstaben';
write[2]=[];
write[2][0]='Name: darf nicht leer bleiben';
write[2][1]='Name: bitte nur Buchstaben';
write[3]=[];
write[3][0]='Vorname: darf nicht leer bleiben';
write[3][1]='Vorname: bitte nur Buchstaben';
write[4]=[];
write[4][0]='Anschrift: darf nicht leer bleiben';
write[4][1]='Anschrift: bitte nur Buchstaben und Zahl und \'_ . - ,';
write[5]=[];
write[5][0]='PLZ: darf nicht leer bleiben';
write[5][1]='PLZ: bitte nur Buchstaben und Zahl und \'_ . - ,';
write[6]=[];
write[6][0]='Ort: darf nicht leer bleiben';
write[6][1]='Ort: bitte nur Buchstaben und Zahl und \'_ . - ,';
write[7]='Mann oder Frau bitte anclicken';
write[8]='Email: scheint falsch zu sein';
write[9]='Tel: scheint falsch zu sein';
write[10]='Mob: scheint falsch zu sein';
write[11]='Bemerkung: scheint falsch zu sein';
var kundenFill_kundenNummer, kundenFill_institution, kundenFill_titel, kundenFill_name;
var kundenFill_vorname, kundenFill_anschrift, kundenFill_plz, kundenFill_ort;
var kundenFill_sex, kundenFill_email, kundenFill_mob, kundenFill_tel, myTextArea;

        kundenFill_kundenNummer =$.trim($("#kundenFill_kundenNummer").val());
        kundenFill_institution  = $.trim($("#kundenFill_institution").val());
        kundenFill_titel  =$.trim($("#kundenFill_titel").val());
        kundenFill_name  =$.trim($("#kundenFill_name").val());
        kundenFill_vorname   =$.trim($("#kundenFill_vorname").val());
        kundenFill_anschrift  =$.trim($("#kundenFill_anschrift").val());
        kundenFill_plz  =$.trim($("#kundenFill_plz").val());
        kundenFill_ort   =$.trim($("#kundenFill_ort").val());
        kundenFill_sex  =$("input[name='sex']:checked").val();
        kundenFill_email   =$.trim($("#kundenFill_email").val());
        kundenFill_mob   =$.trim($("#kundenFill_mob").val());
        kundenFill_tel   =$.trim($("#kundenFill_tel").val());
        myTextArea =$.trim($("#myTextArea").val());
   

             $("#kundenFill_institution").val(cap(kundenFill_institution));
             $("#kundenFill_titel").val(cap(kundenFill_titel));
             $("#kundenFill_name").val(cap( kundenFill_name));
             $("#kundenFill_vorname").val(cap( kundenFill_vorname));
             $("#kundenFill_anschrift").val(cap(kundenFill_anschrift));
             $("#kundenFill_plz").val(cap(kundenFill_plz));
             $("#kundenFill_ort").val(cap(kundenFill_ort));
             $("#kundenFill_mob").val(cap(kundenFill_mob));
             $("#kundenFill_tel").val(cap(kundenFill_tel));
             $("#myTextArea").val(cap(myTextArea));



if(kundenFill_institution.length>0){
        if(testString('address', kundenFill_institution)>0){//doesnt match
        markFaulty('kundenFill_institution');
        err.push('kundenFill_institution');
        writeFaulty('kundenFill_institution', write[0] );
        console.log(err);};
}

if(kundenFill_titel.length>0){
        if(testString('address', kundenFill_titel)>0){//doesnt match
        markFaulty('kundenFill_titel');
        err.push('kundenFill_titel');
        writeFaulty('kundenFill_titel', write[1] );
        console.log(err);};
}

if(kundenFill_name.length<1){
markFaulty('kundenFill_name');
errEmpty.push('kundenFill_name empty');
writeFaulty('kundenFill_name', write[2][0] );
console.log(errEmpty);
//doesnt match
}else{
         if(testString('onlyLetters', kundenFill_name)>0){//doesnt match
          markFaulty('kundenFill_name');
          err.push('kundenFill_name');
          writeFaulty('kundenFill_name', write[2][1] );
          console.log(err);};
}

if(kundenFill_vorname.length<1){
markFaulty('kundenFill_vorname');
errEmpty.push('kundenFill_vorname empty');
writeFaulty('kundenFill_vorname', write[3][0] );
console.log(errEmpty);
//doesnt match
}else{
            if(testString('onlyLetters', kundenFill_vorname)>0){//doesnt match
            markFaulty('kundenFill_vorname');
            err.push('kundenFill_vorname');
            writeFaulty('kundenFill_vorname', write[3][1] );
            console.log(err);};
}

if(kundenFill_anschrift.length<1){
markFaulty('kundenFill_anschrift');
errEmpty.push('kundenFill_anschrift empty');
writeFaulty('kundenFill_anschrift', write[4][0] );
console.log(errEmpty);
//doesnt match
}else{
            if(testString('address', kundenFill_anschrift)>0){//doesnt match
            markFaulty('kundenFill_anschrift');
            err.push('kundenFill_anschrift');
            writeFaulty('kundenFill_anschrift', write[4][1] );
            console.log(err);};
}

if(kundenFill_plz.length<1){
markFaulty('kundenFill_plz');
errEmpty.push('kundenFill_plz empty');
writeFaulty('kundenFill_plz', write[5][0] );
console.log(errEmpty);
//doesnt match
}else{
            if(testString('address', kundenFill_plz)>0){//doesnt match
            markFaulty('kundenFill_plz');
            err.push('kundenFill_plz');
            writeFaulty('kundenFill_plz', write[5][1] );
            console.log(err);};
}

if(kundenFill_ort.length<1){
markFaulty('kundenFill_ort');
errEmpty.push('kundenFill_ort empty');
writeFaulty('kundenFill_ort', write[6][0] );
console.log(errEmpty);
//doesnt match
}else{
            if(testString('address', kundenFill_ort)>0){//doesnt match
            markFaulty('kundenFill_ort');
            err.push('kundenFill_ort');
            writeFaulty('kundenFill_ort', write[6][1] );
            console.log(err);};
}

if(!kundenFill_sex){
errEmpty.push('kundenFill_sex empty');
writeFaulty('kundenFill_sex', write[7]);
console.log(errEmpty);
//doesnt match
}

if(kundenFill_mob.length>0){
            if(testString('tel', kundenFill_mob)>0){//doesnt match
            markFaulty('kundenFill_mob');
            err.push('kundenFill_mob');
            writeFaulty('kundenFill_mob', write[9]);
            console.log(err);};
}

if(kundenFill_tel.length>0){
            if(testString('tel', kundenFill_tel)>0){//doesnt match
            markFaulty('kundenFill_tel');
            err.push('kundenFill_tel');
            writeFaulty('kundenFill_tel', write[10]);
            console.log(err);};
}

if(kundenFill_email.length>0){
            if(testString('email', kundenFill_email)>0){//doesnt match
            markFaulty('kundenFill_email');
            err.push('kundenFill_email');
            writeFaulty('kundenFill_email', write[8]);
            console.log(err);};
 }

if(myTextArea.length>0){
            if(testString('comment', myTextArea)>0){//doesnt match
            markFaulty('myTextArea');
            err.push('myTextArea');
            writeFaulty('myTextArea', write[11]);
            console.log(err);};
}

err=err.concat(errEmpty);
if (err.length<1){return 0;}else{return 1;};
//console.log("---------------------------");
//console.log("-------------err------------");
//console.log(err);
//console.log("---------------------------");
//console.log("-------------errlength------------");
//console.log(err.length);
}//checkValues




function removeLast(){
console.log('fName: function removeLast()');

$("input:radio").removeAttr("checked");
$('#portoGewuenscht').val('');
$('#thePrice').val('');
$('#theLrName').val('');
$('#theRechnung').val('');
$('#myTextAreaLr').val('');
$('#theDate').val('');
$('#lrName').val('');
$('.comma5').val('');
$('input[type=text][id^=price_]').val('');
$('input[type=text]').css('background-color','white');
$('.error').hide();
$('select[name$="_anzahl"] ').val(0);
$("p[id^=erfolg]").css('visibility','hidden');
$('.newLr').hide();
$('.provisoryButtons').parent().remove();     
$('.provisoryButtons_2').parent().remove();
$('.provisoryButtonsHr').remove();}


function newLoadButtons(data){
console.log('fName: function newLoadButtons(data)');
//console.log(data);
//console.log(data[0]);
 $('.provisoryButtons').parent().remove();
 $('.provisoryButtons_2').parent().remove();
 $('.provisoryButtonsHr').remove();
//$.each( obj, function( key, value ) {
//  alert( key + ": " + value );
//});
        $.each(data, function(key, value) {
        var newButton; 
        newButton ='<li id="li'+data[key]['kId']+'"><button class="provisoryButtons" id="kunden_finden'+data[key]['kId']+'" type="button">K-Nr#'+data[key]['kId']+', '+data[key]['vorname']+' '+data[key]['name']+', '+data[key]['strasse']+' Daten Laden</button></li><li class="provisoryButtonsHr"><hr></li>';
        $('#kundenBestellungNummer h3 form ul').append(newButton);

        ////get rechnungen Daten
                $.getJSON('php/loadFromKundenNummer.php','find=rechnungen&suche='+data[key]['kId'],function(data2) {
                // console.log(data2);
                        $.each(data2, function(idx, obj) {
                        //console.log(items);
                        //console.log(valItem);
                        var newButton_2;
                        var stat="";
                        if( (obj.stat)<1){stat="storno";}
                        newButton_2 ='<li><button class="provisoryButtons_2" id="rechnung_finden'+obj.bId+'" type="button">'+stat+'Rechnung Nr#'+obj.rechnungsNummer+' von '+obj.datum+' laden</button></li>';
                        $('#li'+data[key]['kId']).append(newButton_2);
                        });//each
                }); //$.getJSON  
        });//each
}//newloadbuttons

function loadFromKundenNummer(){
console.log('fName:  function loadFromKundenNummer()');
var findKundenFromKundenNummer = $('#loadFromKundenNummer').val() ;
console.log(findKundenFromKundenNummer);
           if(findKundenFromKundenNummer.length>3){
           //     alert(findKundenFromKundenNummer);
                        $.getJSON('php/loadFromKundenNummer.php','find=kunden&suche='+findKundenFromKundenNummer,function(data) { //JSON holen
                                  if(data==="nicht gefunden"){
                                      alert(findKundenFromKundenNummer+" wurde nicht gefunden");
                                  }else{console.log('ok');
                                        newLoadButtons(data);
                                  };
                                   });//getJson
            }//if 
}//loadFromKundenNummer

function loadFromAlteKundenNummer(){
console.log('fName: function loadFromAlteKundenNummer()');
var findKundenFromKundenNummer = $('#rechnungsNummer').val() ;
console.log(findKundenFromKundenNummer);
//     alert(findKundenFromKundenNummer);
        $.getJSON('php/loadFromKundenNummer.php','find=alteNummer&suche='+findKundenFromKundenNummer,function(data) { //JSON holen
                  if(data==="nicht gefunden"){
                      alert(findKundenFromKundenNummer+" wurde nicht gefunden");
                  }else{//alert('am ok')
                        newLoadButtons(data);};
        });
}//loadFromKundenNummer


function loadFromBestellungNummer(){
console.log('fName: function loadFromBestellungNummer()');
var loadFromBestellungNummer = $('#loadFromBestellungNummer').val() ;
console.log(loadFromBestellungNummer);
if (loadFromBestellungNummer.length>3){
//     alert(findKundenFromKundenNummer);
                $.getJSON('php/loadFromKundenNummer.php','find=bestellungNummer&suche='+loadFromBestellungNummer,function(data) { //JSON holen
                     if(data==="nicht gefunden"){
                        alert(loadFromBestellungNummer+" wurde nicht gefunden");
                    }else{console.log('ok');
                          newLoadButtons(data);};
                 });
}//if 
} //load from BestellungNUMMER 

 //load from Email 
function loadFromEmail(){
console.log('fName: function loadFromEmail()');
var email = $('#email').val() ;
console.log(email);
//     alert(findKundenFromKundenNummer);
         $.getJSON('php/loadFromKundenNummer.php','find=email&suche='+email,function(data) { //JSON holen
                if(data==="nicht gefunden"){alert(email+" wurde nicht gefunden");
                }else{console.log('ok');
                      newLoadButtons(data);};
         });
} //load from Email 
 

//load FromName und address
function loadFromNameAndAddress(){
console.log('fName: function loadFromNameAndAddress()');
var name = $("#name").val();   
//check if all ok
var err= [];
        if (name.length<1){
           err.push(' Name');
           $("#name").css('background-color', 'pink');
        }
            if(err.length>0){
            alert('Error'+ err + ' bitte eintragen.');
            }else{
                $.getJSON('php/loadFromKundenNummer.php','find=strasse&name='+name,function(data) { //JSON holen
                        if(data==="nicht gefunden"){
                        alert(name+" wurde nicht gefunden");
                        }else{
                        console.log('name ok');
                        newLoadButtons(data);};
                });//$.getJSON
            }
}//load FromName und address 
 


function loadbestellungNew(x){

console.log('fName: function loadbestellungNew(x)');

    removeLetter();
    resetLetterDiv();
$('input[type=text][id^=price_]').val('');
$("input:radio").removeAttr("checked");
$('input[type=text]').css('background-color','white');
$('.error').hide();  
$("p[id^=erfolg]").css('visibility','hidden');
$('.newLr').hide(); 
            $.getJSON('php/loadBestellung.php','bestellung='+x,function(data) {
            $("#rechnung").attr("data-bid",data[0].bId);
            $("#preisName").attr("data-preislisteName",data[0].preislisteName);
            $("#lrName").attr("data-lrName",data[0].lr);
            $('#theRechnung').val(data[0].rechnungsNummer);
            $('#letter_theRechnung').text(data[0].rechnungsNummer);
            $('#thePrice').val(data[0].preis);
            calculateprozent(data[0].datum);
            $('#theDate').val(data[0].datum);
            var germanDate=MARS(data[0].theDate);
            $('#letter_theDate').text(germanDate);
           
          
            $('#preisName').val(data[0].preisName);
            if( (data[0].stat<1) ){
                $('#theStorno').val('STORNIERT');
             $('#letter_theStorno').text('STORNIERT');
                }
            else{
                $('#theStorno').val('');
               $('#letter_theStorno').text('');
                }
            
            loadNb(data[0].buecher);
           loadPorto(data[0].portoGewuenscht,data[0].porto);
           fillKunden(data[0].kId2, "rechnung");
           loadLr(data[0].lrName, (data[0].lrName).charAt(0));
           
var myNewArray=[];          
for(var i=1; i<50; i++ ){
var itemPrefix = 'data[0].item_';
var item=  itemPrefix+i; 
var tr="<tr id='letter_tr_"+i+"'>";
//   console.log(eval(item) );
//   $('#preisName').val(data[0].preisName);
//  console.log( 'data[0].item_'+i);
var name = 'item'+i+'_anzahl';
//   if(i==1){alert(eval(item));};
$('select[name="'+name+'"]').val( eval(item) );
//  var valItem = $('#p_item'+i).val();
                    if(eval(item)>0){
                    console.log("adding");
                    myNewArray.push(i);
            //        $.getJSON('php/price.php','price='+data[0].preisName+'&i='+i,function(data){
                    tr +=  "<td class='td0' ><p class='bold' style='text-align:right' ><span id='letter_item"+i+"_anzahl'>"+eval(item)+"</span></p></td>";
                    tr +=  "<td class='td1' ><p class='bold'>&nbsp;St&uuml;ck Kartens&auml;tze</p></td>";
                    tr +=  "<td class='td2'><p class='bold'><span id='letter_item"+i+"_anzahl_name' style='font-size: 9pt'>name</span></p></td>";
                    tr +=  "<td class='td3a'><p class='bold' style='text-align:right'>à </p></td>";
                    tr +=  "<td class='td3b'><p class='bold' style='text-align:right'><span id='letter_item"+i+"_anzahl_preis'>preis</span> €</p></td>";
                    tr +=  "<td class='td3' align='right'><p class='bold' style='text-align:right'><span id='letter_item"+i+"_anzahl_whole'>preis whole</span> €</p></td>";
                    tr +=  "</tr>";
                    $("#letter_table").append(tr);  

                    }//if

                    }//for
//console.log('My myNewArray:' + myNewArray); 

var aArray = JSON.stringify(myNewArray);
//console.log(aArray);

    $.getJSON('php/price.php','price='+data[0].preisName+'&i='+aArray,function(data){
   console.log('1 april: '+data);
            $.each(data, function(i, field){
            $("#letter_item"+data[i].iId+"_anzahl_name").text(data[i].name);
            
            $("#letter_item"+data[i].iId+"_anzahl_preis").text(  ( Number(data[i].preis).toFixed(2)).replace('.',',')   );
            var calculate = $("#letter_item"+data[i].iId+"_anzahl").text();
            //  console.log ( Number(calculate)*Number(data[i].preis) );
            $("#letter_item"+data[i].iId+"_anzahl_whole").text( (Number(calculate)*Number(data[i].preis)).toFixed(2).replace('.',',') );
            });//each
    });//$.getJSON

completePrice(data[0].preisName);
}) ;//getjson loadbestellung php

}//function loadbestellung


 function MARS(x){
 
var xx;
if(x.indexOf('January')>-1) {xx=x.replace('January','Januar');}

else if(x.indexOf('February')>-1) {xx=x.replace('February','Februar');}

else if(x.indexOf('March')>-1) { xx=x.replace("March","März");}

else if(x.indexOf('Mai')>-1) {xx=x.replace('Mai','Mai');}

else if(x.indexOf('June')>-1) {xx=x.replace('June','Juni');}

else if(x.indexOf('July')>-1) {xx=x.replace('July','Juli');}

else if(x.indexOf('October')>-1) {xx=x.replace('October','Oktober');}
else{xx=x;}

 
return xx;
 }
 
function emptyItems(){
console.log('fName: function emptyItems()');
$('select[name$="_anzahl"] ').val(0);
};//emptyitems

function fillKunden(x, type){
    
console.log('fName: function fillKunden(x, type)');
    if (type==="kunden"){
        $.getJSON('php/loadKunden.php','kunden='+x,function(data) {
        console.log(data);
        $("#kundenFill_kundenNummer").val(x);
        $("#letter_kundenNummer").text(x);
        $("#kundenFill_institution").val(data[0].institution);
        $("#letter_institution").text(data[0].institution);
                if((data[0].institution).length<1){
                $("#letter_institution").parent().hide();   
                }else{
                $("#letter_institution").parent().show(); }
        $("#kundenFill_titel").val(data[0].titel); 
        $("#letter_titel").text(data[0].titel);
        $("#kundenFill_name").val(data[0].name); 
        $("#letter_name").text(data[0].name);
        $("#kundenFill_vorname").val(data[0].vorname); 
        $("#letter_vorname").text(data[0].vorname);
        $("#kundenFill_anschrift").val(data[0].strasse);
        $("#letter_anschrift").text(data[0].strasse);
        $("#kundenFill_plz").val(data[0].plz);
        $("#letter_plz").text(data[0].plz);
        $("#kundenFill_ort").val(data[0].ort);
        $("#letter_ort").text(data[0].ort);
    var xy;
    xy= data[0].mw;
    
    var theTitel;
            if(data[0].titel!==null){
                theTitel=data[0].titel+' ';
        }else{
            theTitel='';
        }
                if( xy ==='1'){//mann
                //    alert('mann');
                    document.getElementById("kundenFill_sexU").checked = false;
                    document.getElementById("kundenFill_sexM").checked = true;
                    document.getElementById("kundenFill_sexW").checked = false;
                    
                    
                    $("#letter_tex").text('Sehr geehrter Herr '+theTitel+data[0].name+',');
                    
                    
                }else if( xy ==='0'){//frau
                    document.getElementById("kundenFill_sexU").checked = false;
                    document.getElementById("kundenFill_sexM").checked = false;
                    document.getElementById("kundenFill_sexW").checked = true;
                    $("#letter_tex").text('Sehr geehrte Frau ' +theTitel+data[0].name+',');
                //alert('frau');
                }else if( xy ==='3'){
                    document.getElementById("kundenFill_sexU").checked = true;
                    document.getElementById("kundenFill_sexM").checked = false;
                    document.getElementById("kundenFill_sexW").checked = false;
                     $("#letter_tex").text('Sehr geehrte Damen und Herren,');
                //    alert('unbekannt');
                }
    //$("#kundenFill_vorname").val(data[0].vorname);
    $("#kundenFill_email").val(data[0].email);
    $("#kundenFill_mob").val(data[0].mob);
    $("#kundenFill_tel").val(data[0].tel);
    $("#myTextArea").val(data[0].bemerkung);
    $("#preisName").val(data[0].preisListeName);
    var y = data[0].preisListeName;
    $("#preisName").attr("data-preislisteName",data[0].preisId);
    completePrice(y);
    var rl = data[0].rl;
    var buecher = data[0].buecher;
    loadLr(rl);
    loadNb(buecher);
    emptyItems();
    }); //JSON holen
    }else if (type ==="rechnung"){
        $.getJSON('php/loadKunden.php','kunden='+x,function(data) {
        //console.log(data);
        $("#kundenFill_kundenNummer").val(x);
        $("#letter_kundenNummer").text(x);
        $("#kundenFill_institution").val(data[0].institution);
        $("#letter_institution").text(data[0].institution);
        if((data[0].institution).length<1){
        $("#letter_institution").parent().hide();   
        }else{
        $("#letter_institution").parent().show();   
        }
        $("#kundenFill_titel").val(data[0].titel); 
        $("#letter_titel").text(data[0].titel);
        $("#kundenFill_name").val(data[0].name); 
        $("#letter_name").text(data[0].name);
        $("#kundenFill_vorname").val(data[0].vorname); 
        $("#letter_vorname").text(data[0].vorname);
        $("#kundenFill_anschrift").val(data[0].strasse);
        $("#letter_anschrift").text(data[0].strasse);
        $("#kundenFill_plz").val(data[0].plz);
        $("#letter_plz").text(data[0].plz);
        $("#kundenFill_ort").val(data[0].ort);
        $("#letter_ort").text(data[0].ort);
        var xy;
        xy= data[0].mw;
        
        var theTitel;
            if(data[0].titel!==null){
                theTitel=data[0].titel+' ';
        }else{
            theTitel='';
        }
                if(  xy ==='1'){//mann
                document.getElementById("kundenFill_sexU").checked = false;
                document.getElementById("kundenFill_sexM").checked = true;
                document.getElementById("kundenFill_sexW").checked = false;
                $("#letter_tex").text('Sehr geehrter Herr ' + theTitel+data[0].name+',');
                }else if( xy ==='0'){//frau
                document.getElementById("kundenFill_sexU").checked = false;
                document.getElementById("kundenFill_sexM").checked = false;
                document.getElementById("kundenFill_sexW").checked = true;
                $("#letter_tex").text('Sehr geehrte Frau ' + theTitel+data[0].name+',');
                }else if( xy ==='3'){
                document.getElementById("kundenFill_sexU").checked = true;
                document.getElementById("kundenFill_sexM").checked = false;
                document.getElementById("kundenFill_sexW").checked = false;
                 $("#letter_tex").text('Sehr geehrte Damen und Herren,');
                }
        $("#kundenFill_email").val(data[0].email);
        $("#kundenFill_mob").val(data[0].mob);
        $("#kundenFill_tel").val(data[0].tel);
        $("#myTextArea").val(data[0].bemerkung);}); //JSON holen    
    }//if rechnung
}//fillKunden

function loadNb(buecher){
console.log('fName: function loadNb(buecher)');
if( (typeof buecher==="undefined")||(buecher===null)){buecher=0;}
else{
     if((buecher)<1){
            $('#buchsendung').hide();
            $('#klausAdress2').show();
            }else{
            $('#buchsendung').show();
            }
}
$('input[name=nb]:radio:nth('+buecher+')').prop('checked', true);
};

//loadNb(buecher)


function loadPorto(portoGewuenscht,porto){
    
                document.getElementById("portoFrei").checked = false;
                document.getElementById("porto250").checked = false;
                document.getElementById("porto600").checked = false;
    if(portoGewuenscht!==null){
            //    alert(data[0].portoGewuenscht);
                
                $("#portoGewuenscht").val(portoGewuenscht);

            }else( $("#portoGewuenscht").val(''));
}

function loadLr(x,y){
console.log(' fName:  function loadLr(x,y) ');
if ((typeof x==="undefined")||(x===null)) {x=2;}
var Y=y;   
    $.getJSON('php/loadLr.php','suche='+x,function(data){
        if (typeof Y==="undefined") {
    //  console.log ( 'no y: ' +  Y);
        Y = (data[0].lrName).charAt(0);
    //  console.log ( 'Y: ' +  Y);
        };  
    $('#lrName').attr('data-lrName', data[0].lrId);
    var myformatedText= data[0].lrText;
    var myformatedText2=make_P(myformatedText);
    var myformatedText3=myformatedText2+'<span id="lastP">';
    myformatedText3+='<p>Ich bedanke mich für die Zusammenarbeit und wünsche einen schönen Tag.</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>';
    myformatedText3+='<p>Klaus Maaß </p><p>Bridgeclub Berlin e.V.</p></span>';
//    console.log(myformatedText);
    $('#letter_myTextAreaLr').html('<p id="letter_myTextAreaLr_0">'+myformatedText3);
    //console.log(data);
                if(isNaN(x)){
                //alert(data[0].lrText)
                $('#myTextAreaLr').val(data[0].lrText);
                var x_ = x.indexOf('-')+2;
                var xClean = x.substr(x_, x.length);
                $('#lrName').val(xClean);
                }else{
                //alert(data[0].lrText)
                if((data[0].lrText).length>0){
                $('#myTextAreaLr').val(data[0].lrText);
                console.log(x);
                }    
                var x_ = data[0].lrName.indexOf('-')+2;
                var xClean = data[0].lrName.substr(x_, data[0].lrName.length);
                $('#lrName').val(xClean);  
                } 

                if(Y==='L'){
                $('#theLrName').val('Lieferschein');
                 $('#letter_lr').text('Lieferschein ');
                console.log('L: '+Y);
                document.getElementById("l").checked = true;
                document.getElementById("r").checked = false;
                }else if(Y==='R'){
                //alert('R: '+Y);
                 $('#theLrName').val('Rechnung');
                 $('#letter_lr').text('Rechnung ');
                 document.getElementById("l").checked = false;
                 document.getElementById("r").checked = true;  
                }
    });//getJson
howBigNew();  
}//loadLr(x,y)

//!              .__        __   
//! _____________|__| _____/  |_ 
//! \____ \_  __ \  |/    \   __\
//! |  |_> >  | \/  |   |  \  |  
//! |   __/|__|  |__|___|  /__|  
//! |__|                 \/    
  
//! PRINT LAYOUT
function howBigNew(){
console.log('howBigNew()');
 setTimeout(function(){   
     var h=0;  //! height
 $("#sehrGeherte #letter_myTextAreaLr> p").each(function(){
        h += $(this).height();
    });
var tr0= $('#sehrGeherte table:eq( 0 ) tr').length;
var tr1= $('#sehrGeherte table:eq( 1 ) tr').length;  
//alert(tr0, tr1);
//do what you need here
sendToMoveNew(tr0,tr1,h);
 }, 500);
};//howBigNew


function sendToMoveNew (tr0,tr1,h){
 console.log('sendToMoveNew');
//     alert( typeof tr1);
var what='doNothing';

console.log('tr0: '  + tr0);
console.log('tr1: '  + tr1);
console.log('h: '  + h);
console.log('round: '  + round);
 
if((tr0 >=26)&&(round<1)){
    what="all";
    round++;
 //not relooping
 
}
 else if(( tr0 >=19)&&(round<2)){
 what='bottom';
 round++;
 
}
 else 
     if(  ( (tr0+tr1)*20 +h + 4*19 +19 +133 >=596 )
         && (   $('#sehrGeherte span#letter_myTextAreaLr span#lastP').length > 0  )  )
{
    
what='movelastP';
console.log(tr0+' '+tr1+' '+h);
console.log((tr0+tr1)*20 +h + 4*19 +19 +133);
 
}else 
     if(  ( (tr0+tr1)*20 +h + 4*19 +19 >=596 )
         && (   $('#sehrGeherte span#letter_myTextAreaLr span#lastP').length < 1  )  )
{
    
what='moveP';
console.log(tr0+' '+tr1+' '+h);
console.log((tr0+tr1)*20 +h + 4*19 +133);
 
}      
//what='moveP';}
 else{
what='doNothing';}
moveAllToOtherPageNew(what);
};//sendTo
 
 function moveAllToOtherPageNew(x){
if( (x!=='doNothing')&&($('#vorschauBack1').children().length<2)){
$('#vorschauBack1').find('img').clone().appendTo( '#vorschauBack1' );
$('#vorschauBack2').height(2244);
$('.vorschauBack').height(2244);
$('#printLast').css('margin-top','1142px' );
 console.log('adding second page');
}
 
console.log('moveAllToOtherPageNew('+x+')');
console.log('x');
if(x==="all"){
//    console.log('letter_myTextAreaLr');
$('table:eq( 0 )').clone().appendTo( "#sehrGeherte_2" );
$('table:eq( 1 )').clone().appendTo( "#sehrGeherte_2" );
$('#moveMe').clone().appendTo( "#sehrGeherte_2" );
$('#letter_myTextAreaLr').clone().appendTo( "#sehrGeherte_2" );


//$('table:eq( 0 ) tr:nth-last-child(-n+2)').remove();
var howManyTr= ($('#sehrGeherte table:eq( 0 ) tr').length);
//$('table:eq( 0 ) tr:nth-last-child(-n+23) ').remove();
$('table:eq( 0 ) ').find('tr').slice(24,howManyTr).remove();
$('table:eq( 1 )').remove();
//$('#sehrGeherte_2 table:eq( 0 )').find('tr').slice(0,-2).remove(); 
$('#sehrGeherte_2 table:eq( 0 )').find('tr').slice(0,-25).remove(); 
$('#moveMe').remove();
$('#sehrGeherte span#letter_myTextAreaLr').remove();

howbigNewPage2();
}else if(x==="bottom"){
     console.log('bottom'); 
 $('#sehrGeherte #letter_myTextAreaLr').clone().appendTo( "#sehrGeherte_2" );
 $('#sehrGeherte span#letter_myTextAreaLr').remove();
    
  howBigNew();
 
 
}else if(x==="movelastP"){
  console.log('movelastP');
$('#lastP').clone().appendTo( "#sehrGeherte_2" );
$('#sehrGeherte span#letter_myTextAreaLr #lastP').remove();
$('#letter_myTextAreaLr p:nth-last-child(-n+2)').clone().prependTo( "#sehrGeherte_2" );
$('#sehrGeherte #letter_myTextAreaLr p:nth-last-child(-n+2)').remove();

  howBigNew();
 

}else if(x==="moveP"){
  console.log('moveP');
$('#letter_myTextAreaLr p:nth-last-child(-n+2)').clone().prependTo( "#sehrGeherte_2" );
$('#sehrGeherte #letter_myTextAreaLr p:nth-last-child(-n+2)').remove();
  howBigNew();
}

    else if(x==="doNothing"){
   console.log('do nothing');
  if(round>1){ howbigNewPage2();}else{howBigNew();
  round++;}
        
};
}//moveAllToOtherPageNew
 
 function howbigNewPage2(){
  console.log('howbigNewPage2()');
 setTimeout(function(){   
     var h=0;
 $("#sehrGeherte_2 #letter_myTextAreaLr> p").each(function(){
        h += $(this).height();
    });
var tr0= $('#sehrGeherte_2 table:eq( 0 ) tr').length;
var tr1= $('#sehrGeherte_2 table:eq( 1 ) tr').length;  
 
//do what you need here
sendToMoveNewPage2(tr0,tr1,h);
 }, 500);
};//howBigNew 2
     

function sendToMoveNewPage2 (tr0,tr1,h){
 console.log('sendToMoveNewPage2');
//     alert( typeof tr1);
var what='doNothing';

console.log('tr0_2: '  + tr0);
console.log('tr1_2: '  + tr1);
console.log('h_2: '  + h);
if(typeof tr0 =="undefined" ){tr0 =0;}
 if(typeof tr1 =="undefined" ){tr1 =0;}
 
     if(  ( (tr0+tr1)*20 +h +19 +133 >=820 )
         && (   $('#sehrGeherte_2 span#letter_myTextAreaLr span#lastP').length > 0  )  )
{
    
what='movelastP';
console.log(tr0+' '+tr1+' '+h);
console.log((tr0+tr1)*20 +h +19 +133);
 
}else 
     if(  ( (tr0+tr1)*20 +h +19 >=820 )
         && (   $('#sehrGeherte span#letter_myTextAreaLr span#lastP').length < 1  )  )
{
    
what='moveP';
console.log(tr0+' '+tr1+' '+h);
console.log((tr0+tr1)*20 +h + 4*19 +133);
 
}      
//what='moveP';}
 else{
what='doNothing';}
moveAllToOtherPageNewPage2(what);
};//sendTo



function moveAllToOtherPageNewPage2(x){
//    alert($('#vorschauBack1').children().length);
if( (x!=='doNothing')&&($('#vorschauBack1').children().length<3)){
$('#vorschauBack1').find('img:eq( 0 )').clone().appendTo( '#vorschauBack1' );
$('#vorschauBack2').height(3366);
$('.vorschauBack').height(3366);
$('#printLast').css('margin-top','2264px' );
 console.log('..........adding III page..........');
}
    
console.log('moveAllToOtherPageNewPage2('+x+')');
console.log('x');

    if(x==="movelastP"){
  console.log('movelastP');
$('#lastP').clone().appendTo( "#sehrGeherte_3" );
$('#sehrGeherte_2 span#letter_myTextAreaLr #lastP').remove();
$('#sehrGeherte_2 #letter_myTextAreaLr p:nth-last-child(-n+2)').clone().prependTo( "#sehrGeherte_3" );
$('#sehrGeherte_2 #letter_myTextAreaLr p:nth-last-child(-n+2)').remove();

  howbigNewPage2();
 

}else if(x==="moveP"){
  console.log('moveP');
$('#sehrGeherte_2 span#letter_myTextAreaLr p:nth-last-child(-n+2)').clone().prependTo( "#sehrGeherte_3" );
$('#sehrGeherte_2 #letter_myTextAreaLr p:nth-last-child(-n+2)').remove();
   howbigNewPage2();
}

    else if(x==="doNothing"){
   console.log('do nothing');
 console.log('do nothing');
 console.log('do nothing');
 console.log('do nothing');
//  howbigNewPage2();
};
}//moveAllToOtherPageNewPage2





function make_P(x){
//console.log('functiton howBig()');
//alert('arrived:'+ x);
    var x1 = x.replace(/\n/g, 'bbreakk');
//alert('replace breakk :'+x1);
    var i = 1;
    while (x1.indexOf('bbreakk') > -1) {
        var y = '</p><p id="letter_myTextAreaLr_' + i + '">';
        x1 = x1.replace('bbreakk', y);
        i++;
    }
    //  alert('replace while :'+x1);
    var find = '></p';
    var reg = new RegExp(find, "g");
    var x2 = x1.replace(reg, '>&nbsp;</p');
    // alert('replace done :'+x2);
    x2 += '<p>&nbsp;</p>';
    return x2;
}//make_P(x)

function resetLetterDiv(){
    console.log('.............resetLetterDiv.................');
round=0;
$('#printLast').css('margin-top','0px' );
$('#vorschauBack2').height(1122);
$('.vorschauBack').height(1122);
$('#vorschauBack1').html('');
$('.backPix').html('');
var myImg='<img src="img/rechnung-empty.jpg">';
var myImg2='<img src="img/rechnung-white.jpg" style="width:794px; height:100px;" >';
$('#vorschauBack1').html(myImg);
$('.backPix').html(myImg2);
var myletterText="";
myletterText+='<p><span id="letter_tex">XXX</span></p>';
myletterText+='<p>&nbsp;</p>';
myletterText+='<p>vielen Dank für Ihre Bestellung. Anbei erhalten Sie</p>';
myletterText+='<p>&nbsp;</p>';
myletterText+='<table id="letter_table" border="0">';
myletterText+='</table>';
myletterText+='<table >';
myletterText+='<tr>';
myletterText+='<td class="td4"><p class="bold">Porto, Verpackung und Versand</p></td>';
myletterText+='<td class="td5"><p class="bold" style="text-align:right"><span id="letter_porto">0,00</span>  €</p></td>';
myletterText+='</tr>';
myletterText+='<tr>';
myletterText+='<td colspan="4"><p class="bold">&nbsp;</p></td>';
myletterText+='</tr>';
myletterText+='<tr><td><p class="bold">Gesamtbetrag incl.gesetzlicher Mehrwertsteuer</p></td>';
myletterText+='<td><p class="bold" style="text-align:right; text-decoration: underline;"><span id="letter_price_theTotal">x,xx</span>€</p></td></tr >';
myletterText+='<tr><td colspan="2"><p class="bold" style=" ">enthaltene USt: <span class="new7">- </span>,00 % aus <span id ="letter_price_the7">xxxx,xx</span> € = <span id="letter_price_the7Done">xxx,xx</span> € und <span class="new19">- </span>,00 % aus <span id="letter_price_the19">xxxx,xx</span> € = <span id="letter_price_the19Done">x,xx</span> € </p></td>';
myletterText+='<tr><td colspan="2"><p class="bold" style=" "> und <span id="letter_price_thePortoLabel"> xx </span>% aus <span id="letter_price_thePorto">0,00</span> € = <span id ="letter_price_thePortoDone">0,00</span> €</p></td>';
myletterText+='</tr>';
myletterText+='</table>';
myletterText+='<p id="moveMe">&nbsp</p>' ;
myletterText+='<span id="letter_myTextAreaLr">xxx</span>';

  $( "#sehrGeherte" ).html(myletterText);
  $( "#sehrGeherte_2" ).html('');
  $( "#sehrGeherte_3" ).html('');
};


function click_lrName() {
removeLetter();
$("#lrName").val(''); }

//$("#saveLr").click(function(){
$('body').on('click', "#saveLr", function () {
click_saveLr();
});//saveLr

function click_saveLr(){
removeLetter();
$(".newLr").hide('slow');
$('#erfolgLr3').hide();
$('#erfolgLr4_error').css('visibility', 'hidden');
$('#erfolgLr4_error').hide();
var w = encodeURI($("#theLrName").val());
var y = encodeURI($.trim($("#lrName").val()));
var x = encodeURI($("#myTextAreaLr").val());
//check comment
//console.log(darfLR);
if(y===""){
   // alert('Field darf nicht leer sein');
   $('#erfolgLr3').hide();
   $('#erfolgLr3_error').html('Field darf nicht leer sein');
   $('#erfolgLr3_error').css('visibility', 'visible');
   $("#lrName").css("background-color", "pink");
}else{
   console.log(w);
   console.log(y);
   console.log(x);
     if(  testString( 'comment', $("#myTextAreaLr").val()   )>0    ){
         
                $('#erfolgLr4_error').show();
                $('#erfolgLr4_error').css("visibility", "visible");
                $('#erfolgLr4_error').html('Der unteren Text Field enthählt verbotene characters');
                $("#myTextAreaLr").css("background-color", "pink");
      
     }else{
  $.post("php/write_lr.php", "lrText="+x+"&lrName="+y+"&lr="+w+"&action=write" , function(result){
  if(result==0){
   var r = confirm( w+" - "+y+ ' Text überschreiben?');
   
    if (r === true) { 
       $.post("php/write_lr.php", "lrText="+x+"&lrName="+y+"&lr="+w+"&action=update" , function(result){ 
   //alert(result)
  $("#erfolgLr3").show();
  $("#erfolgLr3").css("visibility","visible");
//      alert(JSON.parse(result));
 $("#erfolgLr3").html(JSON.parse(result));; 
$(".newLr").hide('slow');
 $("#erfolgLr").hide('');
});   
}
   }else if(result>0){
                        $('#erfolgLr3_error').html($.trim($("#lrName").val())+ ' ist nicht in Database, "neu" ancliken um neue Liste zu herstellen');
                        $('#erfolgLr3_error').css('visibility', 'visible');
    }else{
         //alert(result)
                        $("#erfolgLr3").show();
                        $("#erfolgLr3").css("visibility", "visible");
                        $("#erfolgLr3").html(JSON.parse(result));
                        $(".newLr").hide('slow');
                        $("#erfolgLr").hide('');
}//else
});// $.post("php/write_lr.php
} //else
}//else
}

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
//autocomplete

//$('.findMe').focus(function(){
$('body').on('focus',".findMe", function() {
removeLetter();
    x = $(this).attr('id');
    var minLetters=1;
    var y="";
    if(x==='rechnungsNummer'){minLetters=2;};
    if(x==='loadFromBestellungNummer'){minLetters=3;};
    if(x==='lrName'){ 
            var lr_choice = $("input[name='lr']:checked").val();
            //       console.log (lr_choice);   
            y = 'lr_choice=' + lr_choice + '&';
    };
     //console.log (x);
     $('#'+x ).autocomplete({
        source: 'php/complete.php?'+y+'suche='+x,
        minLength: minLetters,
        delay: 100,
        open: function(event, el) {
//            console.log('---klappt auf---');
        },
        focus: function(event, el) {
//            console.log('---auf dem Element---');
            event.preventDefault();
        },
        select: function(event, el) {
            event.preventDefault();
//            console.log('---ausgewählt---');
//            console.log(el.item.label);
//            console.log(el.item.value); //BS oder id 
           $(this).val(el.item.label);
             if(x==='email'){
                 loadFromEmail();
              removeLetter();}
             else if(x==='name'){loadFromNameAndAddress();
              removeLetter();}
             else if(x==='lrName'){
                 removeLetter();
                 loadLr(el.item.value);
             }
             else if(x==='rechnungsNummer'){loadFromAlteKundenNummer();
                  removeLetter();
             } else if(x==='preisName'){
                  removeLetter();
                  if(!isNaN(el.item.value)){ el.item.value.toString();
                  alert(typeof el.item.value )}
                completePrice(el.item.value);
            }
        },
        search: function(event, el) {
//            console.log('---suche---');
        },
        response: function(event, el) {
//            console.log('---antwort---');
            //console.log(el);
        }
    });
});
//autocomplete

function completePrice(x){
console.log('fName: function completePrice(x)');
if(x===null){x='1';
//  alert('NOT NULL');
};

if((x=='5')||(x==='Frei')){ 
$('#portoGewuenscht').val('');
}; 
$('input[type=text][id^=price_]').val('');
//alert('complate price')
$('.newList').hide("slow");
$('#erfolg2').css('visibility','hidden');
$('#preislisteForm input[type="text"]').css('background-color', 'white');
//    alert('completePrice' + x);
        $.getJSON('php/complete_preise.php','suche='+x ,function(data) { //JSON holen
              $('#preisName').attr('data-preislistename',data[0].preisId);
              $('#preisName').val(data[0].preisName);
                    $.each(data, function(idx, obj) {             
                    ////      // get each object:
                    // console.log(Object.keys(obj).length);
                    // console.log(data.length);
                    for(var i=2; i<Object.keys(obj).length-1; i++){
                    // console.log(obj[Object.keys(obj)[i]] );
                    var valItem = obj[Object.keys(obj)[i]];
                    var items =  '#p_item'+ (i-1);
                    var items_anzahl = i-1;
                    // console.log(items);
                    $(items).val(valItem);
                    preisForItems(items_anzahl, valItem );
                    }
                    });//each
        total();
        twofifity(totalItems,totalKk); 
        });   //Json 
}

$('body').on('change', 'select[name$="_anzahl"]', function() {
 removeLetter();
$('input[type=text][id^=price_]').val('');
for (var i=1; i<50;i++){
var valItem = $('#p_item'+i).val();
preisForItems(i, valItem ); 
 
}

total();
twofifity(totalItems,totalKk);
});

function total(){
console.log('fName: function total()');
totalItems=0;
totalKk=Number($('select[name="item33_anzahl"]').val());
//console.log( 'totalKk is' + totalKk);
//$('input[type=text][id^=price_]').val('');
for (var i=1; i<33;i++){
totalItems+=Number($('select[name="item'+i+'_anzahl"]').val());
 
} 

for (var j=34; j<50;j++){
totalItems+=Number($('select[name="item'+j+'_anzahl"]').val());
 
} 

//console.log('totalItems:' + totalItems+ ' totalKk:' + totalKk );
}

function twofifity(totalItems,totalKk) {
    console.log('---------------------function twofifity(totalItems,totalKk) ');
//  console.log('totalItems: '+ totalItems);
//    console.log('totalKK: '+ totalKk);
//     console.log('twofifity(totalItems,totalKk)' );

if( ( typeof ($('#portoGewuenscht').val())!=='undefined' )&&(($('#portoGewuenscht').val() !=='')) ){
//    console.log('this Porto');
   $('input[name=porto]').prop('checked', false); 
   $('#portoGewuenscht').val($('#portoGewuenscht').val());
   $('#price_thePorto').val(   Number($('#portoGewuenscht').val())   );
   $('#price_theTotal').val( Number($('#price_thePrice').val()) + Number($('#portoGewuenscht').val()));
 
        $('#letter_price_theTotal').text( Number(Number($('#price_thePrice').val()  ) + Number($('#portoGewuenscht').val())) .toFixed(2).replace('.',','));
           
        $('#letter_price_thePortoLabel').text(biggerPreis.toFixed(2).replace('.',','));
        $('#letter_price_thePorto').text(   Number( $('#portoGewuenscht').val()).toFixed(2).replace('.',',')  );
        $('#letter_porto').text( Number($('#portoGewuenscht').val()).toFixed(2).replace('.',',')  );
        $('#letter_price_thePortoDone').text(  ($('#price_thePorto').val()*(biggerPreis*.01)).toFixed(2).replace('.',',')   );
}else if ($('#portoGewuenscht').val()===''){
    if(  ($('#preisName').val())==="Frei"  ){
//   console.log('frei');
   document.getElementById("portoFrei").checked = true;
   document.getElementById("porto250").checked = false;
   document.getElementById("porto600").checked = false;
   $("#portoGewuenscht").val('');
   $('#price_thePorto').val(0);
   $('#price_theTotal').val(   Number( $('#price_thePrice').val()) + 0   );
   
   $('#letter_price_theTotal').text( (Number( Number($('#price_thePrice').val() ) + 0)).toFixed(2).replace('.',','));
  
   $('#letter_price_thePortoLabel').text(biggerPreis.toFixed(2).replace('.',','));
    $('#letter_price_thePorto').text('0,00');
    $('#letter_porto').text('0,00');
    $('#letter_price_thePortoDone').text(  ($('#price_thePorto').val()*(biggerPreis*.01)).toFixed(2).replace('.',',')   );
////    $('#price_thePrice').val(0);
////    $('#price_theTotal').val(0);
    
 
    }else if(totalKk>0){
//    console.log('totalKk>0');
    document.getElementById("portoFrei").checked = false;
    document.getElementById("porto250").checked = false; 
    document.getElementById("porto600").checked = true;
    $("#portoGewuenscht").val('');
    $('#price_thePorto').val(6);
    $('#letter_porto').text('6.00');
    $('#price_theTotal').val( Number($('#price_thePrice').val()) + 6);
    
    $('#letter_price_theTotal').text( (Number($('#price_thePrice').val()) + 6).toFixed(2).replace('.',','));
       
    $('#letter_price_thePortoLabel').text((biggerPreis).toFixed(2).replace('.',','));
    $('#letter_price_thePorto').text('6,00');
    $('#letter_price_thePortoDone').text(  ($('#price_thePorto').val()*(biggerPreis*.01)).toFixed(2).replace('.',',')  );
    
    }else  if(totalItems<6){
//     console.log('totalItems<6');
    document.getElementById("portoFrei").checked = false;
    document.getElementById("porto250").checked = true;
    document.getElementById("porto600").checked = false;
     $("#portoGewuenscht").val('');
     $('#price_thePorto').val(2.5);
     $('#letter_porto').text((2.5).toFixed(2));
     $('#price_theTotal').val( (Number($('#price_thePrice').val()) + 2.5)) ;
     $('#letter_price_theTotal').text( (Number($('#price_thePrice').val()) + 2.5).toFixed(2).replace('.',',')) ;
       
     $('#letter_price_thePortoLabel').text((biggerPreis).toFixed(2).replace('.',','));
     $('#letter_price_thePorto').text('2,50');
     $('#letter_price_thePortoDone').text(  ($('#price_thePorto').val()*(biggerPreis*.01)).toFixed(2).replace('.',',')   );
      
    }else{
         console.log('else')
   document.getElementById("portoFrei").checked = true;
   document.getElementById("porto250").checked = false;
   document.getElementById("porto600").checked = false;
    $("#portoGewuenscht").val('');
    $('#price_thePorto').val(0);
    $('#letter_porto').text('0,00');
    $('#price_theTotal').val( Number($('#price_thePrice').val())+ 0) ; 
    $('#letter_price_theTotal').text( (Number($('#price_thePrice').val())+ 0).toFixed(2).replace('.',',')) ;
//       alert(4);
    $('#letter_price_thePortoLabel').text((biggerPreis).toFixed(2).replace('.',','));
    $('#letter_price_thePorto').text('0,00');
    $('#letter_price_thePortoDone').text(  ($('#price_thePorto').val()*(biggerPreis*.01)).toFixed(2).replace('.',',')   );
    }
    
    
}
$('#price_thePortoDone').val( $('#price_thePorto').val()*(biggerPreis*.01) );
$('#letter_price_thePortoDone').text(  (  $('#price_thePorto').val()*(biggerPreis*.01) ).toFixed(2).replace('.',','));
//console.log("$('#price_thePorto').val()*(biggerPreis*.01)).toFixed(2");
//console.log(($('#price_thePorto').val()*(biggerPreis*.01)).toFixed(2));
$('letter_price_thePortoLabel').text((biggerPreis).toFixed(2).replace('.',','));

}

 
$('body').on('click', '#okPorto', function() {    
okPorto(); 
});
$('body').on('blur', '#portoGewuenscht', function() {    
okPorto(); 
});

function okPorto(){
        $('#portoGewuenscht').css('background-color', 'pink');
        var porto = $('#portoGewuenscht').val();
        var portoPoint = porto.replace(',', '.');
        $('#portoGewuenscht').val(portoPoint);
//check if numbers 
var float =/^\d*\.?\d*$/;
           if(!float.test(portoPoint)) { 
                alert('wert ungültig');
                $('#portoGewuenscht').css('background-color', 'pink');
                $('#portoGewuenscht').val('');
           }else{
                $('#portoGewuenscht').css('background-color', 'white');   
                $('input[name=porto]').prop('checked', false);
   
};
      twofifity(totalItems,totalKk);  }










$('body').on('click', '#reset', function() {
    
$("#portoGewuenscht").val('');
//alert(totalItems +' '+totalKk);
biggerPrice();
twofifity(totalItems,totalKk);


});// clcik reset


function preisForItems(items_anzahl, valItem){//place +  preis
 
//  console.log('fName: function preisForItems( '+items_anzahl+', '+valItem+')');
//  console.log('preisForItems(items_anzahl, valItem)');
var thePreisX = $('#price_thePrice').val();
var thePreis= Number(thePreisX);
// console.log('the preis:' +thePreis);
var x= $('select[name="item'+items_anzahl+'_anzahl"]').val();
var y= valItem;   
//    console.log(x+' x '+y +' = ' +   Number(x)*Number(y) );
var z = Number(x)*Number(y);
$('#p_item'+items_anzahl+'_whole').val(z);
thePreis+=z;
$('#price_thePrice').val(thePreis);
//add 2,5
// % 7 or 19
if(   items_anzahl ===33   ){
       totalKkPreis =0;
    var zz = Number( $('select[name="item33_anzahl"]').val() )*Number( $("#p_item33").val());

//alert(  $('select[name="item33_anzahl"]').val());
//alert(  $("#p_item33").val());
$('#price_the19').val(zz);
 var $19prozent=$prozent[1]/100;
$('#price_the19Done').val((zz*$19prozent).toFixed(2));
$('#letter_price_the19').text(zz.toFixed(2).replace(".", ","));
$('#letter_price_the19Done').text((zz*$19prozent).toFixed(2).replace(".", ","));
totalKkPreis = zz;
//alert(zz)
}

if(   items_anzahl!==33   ){
//    alert(33);

var actual7X=$('#price_the7').val();
  var actual7=Number(actual7X);
  actual7+=z;
  totalItemsPreis = actual7;
  $('#price_the7').val(actual7);
  
  var $7prozent=$prozent[0]/100;
  $('#price_the7Done').val((actual7*$7prozent).toFixed(2));
   $('#letter_price_the7').text(actual7.toFixed(2).replace(".", ","));
  $('#letter_price_the7Done').text((actual7*$7prozent).toFixed(2).replace(".", ","));


 
} 
    
   biggerPrice(totalKkPreis,totalItemsPreis); 



};
function biggerPrice(totalKkPreis,totalItemsPreis){
//    console.log('........................................totalKkPreis'+totalKkPreis);
//    console.log('..................biggerPrice...........totalItemsPreis'+totalItemsPreis)
if((totalItemsPreis===0)&&(totalKkPreis===0)){biggerPreis=0;}
else if(totalItemsPreis<=totalKkPreis) {biggerPreis=$prozent[1];}
else if (totalItemsPreis>totalKkPreis) {biggerPreis=$prozent[0];};
//console.log('totalItemsPreis : '+totalItemsPreis +' - totalKkPreis : '+ totalKkPreis+ ' - biggerPreis: '+  biggerPreis);
$('#price_thePortoLabel').val(biggerPreis);   
}
    
    
function erroOr(err,theNewListePreis,theNewListeName){
//console.log('fName: function erroOr(err,theNewListePreis,theNewListeName)');
$(".newListerror").html('');
if(err.length>0){
    $('#preisName').val('');
    $(".newListerror").show("slow");
    $(".newListerror").html(err.join(" und ") + " bitte überprüfen");
}else{
    $(".newListerror").html('');
    for(var i=0; i<33; i++){
    var items =  '#p_item'+ i ;
    $(items).val(theNewListePreis); 
    } //for
     
    for(var j=34; j<50; j++){
    var items1 =  '#p_item'+ j ;
    $(items1).val(theNewListePreis); 
    } //for
  $('#p_item33').val(17);
  $('#preisName').val(theNewListeName);
  $('#erfolg').css("visibility","visible");
}
}//neuePreise 



$('#letter_myTextAreaLr').change(function () {
   alert('alert');
    setTimeout(function(){ howBigNew(); }, 2000);

});

//$('#letter_myTextAreaLr').change(function () {


//KUNDEN DATEN
function retnum(str) { 
var num = str.replace(/[^0-9]/g, ''); 
return num; 
}
//neuer kunde
$('body').on('click', '#Neuen_Kunden_Speichern', function() {
console.log('click: #Neuen_Kunden_Speichern');

if($('#kundenFill_kundenNummer').val()===""){
removeLetter();
//checkvalues
if( checkValues()<1 ){
var myform = $('#kundenForm');
var serializedKunden  = myform.serialize();
console.log(serializedKunden);
$.post("php/neuen_kunden_speichern.php", {data:serializedKunden}  , function(data){ 
myPost = $.parseJSON(data);
alert( myPost.message);
fillKunden(myPost.kId, 'kunden');
});
}; //if checkValues()<1

}else{
    alert(  $('#kundenFill_vorname').val()+' '+ $('#kundenFill_name').val()+' ist bereits gespeichert unter kndN: '+ $('#kundenFill_kundenNummer').val() );
}

});//neuer kunde
 
//kunde update
// $('#Kunden_updaten').click(function(){
$('body').on('click', '#Kunden_updaten', function() {
console.log('click: Kunden_updaten');
removeLetter();
        if( checkValues()<1 ){
        //checkvalues
        var myform = $('#kundenForm');
        var serializedKunden  = myform.serialize();
        var x =$('#kundenFill_kundenNummer').val();
        console.log(serializedKunden);
        var r = confirm( 'Kunden Daten aktualisieren?');
                if (r === true) { 
                $.post("php/kunden_update.php", {data:serializedKunden}  , function(data){ 
                alert( data);
         
                });
                }//r === 
                //
                if($("#rechnung").attr('data-bid')!==""){
                 loadbestellungNew($("#rechnung").attr('data-bid'));   }
             else{
                 fillKunden(x, 'kunden')
             }
       }//checkValues()<1
 });//kunde update
 
 

$('body').on('focus', '#theNewLrName', function() {
console.log('focus: #theNewLrName');
removeLetter();
$("#error2Lr").css('visibility', 'hidden');
$("#theNewLrName_error").css('visibility', 'hidden');
$("#erfolgLr").css('visibility', 'hidden');
$("#lrName").val('');
});

 $('body').on('focus', '#lrName', function() {
console.log('focus: #lrName');
removeLetter();
$('#erfolgLr3').hide();
$('#erfolgLr3_error').css('visibility', 'hidden');
$("#error2Lr").hide();
$("#erfolgLr2").css("visibility","hidden");
$("error2Lr").css("visibility","hidden");
});

$('body').on('focus', "#myTextAreaLr", function() {
console.log('focus:#myTextAreaLr');
 $(this).css('background-color', 'white');  
 $("#theNewLrName").css('background-color', 'white');
 $("#error2Lr").css('visibility', 'hidden');
 $("#erfolgLr4_error").css('visibility', 'hidden');
 $("#erfolgLr4_error").hide();
 $("#erfolgLr3").css('visibility', 'hidden');
 $("#erfolgLr3").hide();
});

$('body').on('focus', '#theNewListeName', function() {
console.log('focus:#theNewListeName ');
removeLetter();
$("#error2").css('visibility', 'hidden');
});

$('body').on('focus', '#preislisteForm input[type="text"]', function() {
console.log('focus:preislisteForm input[type="text"]');
removeLetter();
//alert($(this).attr('id'));
$(this).css('background-color', 'yellow');
});

$('body').on('blur', '#preislisteForm input[type="text"]', function() {
console.log('blur #preislisteForm'); 
$(this).css('background-color', 'white');
});

$('body').on('focus', '#kundenForm input[type="text"]', function() {
console.log('focus: kundenForm');
 removeLetter();
//alert($(this).attr('id'));
$(this).css('background-color', 'yellow');
var myId = $(this).attr('id');
$("#"+myId+"_error").hide('slow');
});

$('body').on('focus', '#myTextArea', function() {
console.log("focus: #myTextArea");
removeLetter();
//alert($(this).attr('id'));
$("#myTextArea_error").hide('slow');
$('#myTextArea').css('background-color', 'yellow');
});

$('body').on('blur', '#myTextArea', function() {
console.log("blur: #myTextArea");
removeLetter();
$('#myTextArea').css('background-color', 'white');
});

$('body').on('blur', '#myTextAreaLr', function() {
console.log("blur: #myTextAreaLr");
removeLetter();
$('#myTextArea').css('background-color', 'white');
});

$('body').on('blur', '#kundenForm input[type="text"]', function() {
console.log("blur: #kundenForm");
removeLetter();
//alert($(this).attr('id'));
$(this).css('background-color', 'white');
});

$('body').on('focus', '#kundenForm input[type="email"]', function() {
console.log("focus: #kundenForm");
removeLetter();
//alert($(this).attr('id'));
$(this).css('background-color', 'yellow');
var myId = $(this).attr('id');
$("#"+myId+"_error").hide('slow');
});


$('body').on('blur', '#kundenForm input[type="email"]', function() {
console.log('blur: #kundenForm');
removeLetter();
//alert($(this).attr('id'));
$(this).css('background-color', 'white');
});

$('body').on('focus', '#kundenForm input[type="radio"]', function() {
console.log('focus: #kundenForm');
removeLetter();
$("#kundenFill_sex_error").hide('slow');
});

$('body').on('focus', '.findMe', function() {
console.log('focus: #findMe');
removeLetter();
//alert($(this).attr('id'));
$(this).css('background-color', 'yellow');
});


$('body').on('blur', '.findMe', function() {
console.log('blur: #findMe');
removeLetter();
//alert($(this).attr('id'));
$(this).css('background-color', 'white');
});

$('body').on('focus', '#loadFromKundenNummer', function() {
$('#theStorno').val('');
removeLetter();
$('.provisoryButtons').parent().remove();   
$('.provisoryButtons_2').parent().remove();
$('.provisoryButtonsHr').remove();   
$("#name").val('');      
$("#email").val(''); 
$("#loadFromBestellungNummer").val('');
$("#rechnungsNummer").val(''); 
emptyAllData();
});
 
$('body').on('focus','#email', function() {
 $('#theStorno').val('');  
removeLetter();
$('.provisoryButtons').parent().remove();     
$('.provisoryButtons_2').parent().remove();
$('.provisoryButtonsHr').remove();   
$("#name").val('');      
$("#loadFromKundenNummer").val(''); 
$("#loadFromBestellungNummer").val('');
$("#rechnungsNummer").val(''); 
emptyAllData();
removeLast();
});

$('body').on('focus','#loadFromBestellungNummer', function() {
$('#theStorno').val('');    
removeLetter();
$('.provisoryButtons').parent().remove();     
$('.provisoryButtons_2').parent().remove();
$('.provisoryButtonsHr').remove();  
$("#name").val('');     
$("#loadFromKundenNummer").val(''); 
$("#email").val('');
$("#rechnungsNummer").val(''); 
emptyAllData();
removeLast();
});
 
$('body').on('focus',"#name", function() {
$('#theStorno').val('');
removeLetter();
$('.provisoryButtons').parent().remove();     
$('.provisoryButtons_2').parent().remove();
$('.provisoryButtonsHr').remove();
$("#loadFromKundenNummer").val(''); 
$("#loadFromBestellungNummer").val('');
$("#email").val('');
$("#rechnungsNummer").val(''); 
emptyAllData();
removeLast();
});

$('body').on('focus',"#rechnungsNummer", function() {
    $('#theStorno').val('');
removeLetter();
$('.provisoryButtons').parent().remove();     
$('.provisoryButtons_2').parent().remove();
$('.provisoryButtonsHr').remove();  
$("#name").val('');    
$("#loadFromKundenNummer").val(''); 
$("#email").val('');
$("#loadFromBestellungNummer").val('');
emptyAllData();
removeLast();
});

$('body').on('click', '#check', function() { 
$('#theStorno').val('');
removeLast(); 
removeLetter();
$("#rechnung").attr("data-bid",'');
        if($('#loadFromKundenNummer').val().length>0){
        loadFromKundenNummer();
        console.log('loadFromKundenNummer');
        }else  if (($.trim($('#email').val().length)>0) &&($.trim($('#email').val())!=="")){
        loadFromEmail();
        console.log('loadFromEmail');
        }else  if($('#rechnungsNummer').val().length>0){
        loadFromAlteKundenNummer();
        console.log('loadFromAlteKundenNummer');
        }
        else{loadFromNameAndAddress();}
emptyAllData();
});//check
 
 
$('#loadFromKundenNummer').keyup(function(){
 $('#theStorno').val('');   
loadFromKundenNummer();
});//loadFromKundenNummer

$('#email').keyup(function(){
//    loadFromEmail();
});//loadFromKundenNummer
 
$('#loadFromBestellungNummer').keyup(function(){
    $('#theStorno').val('');
    loadFromBestellungNummer();
});//loadFromKundenNummer


$('body').on('click', '.provisoryButtons_2', function() {
console.log("click:provisoryButtons_2 ");
removeLetter();
var x = $(this).attr('id'); 
x = retnum(x); 
loadbestellungNew(x);
});
 
$('body').on('click', '.provisoryButtons', function() {
    $('#theStorno').val('');
removeLetter();
$("input:radio").removeAttr("checked");
$('#theRechnung').val('');
$('#rechnung').attr('data-bid','');
$('#theDate').val('');
$('input[type=text][id^=price_]').val('');
$('input[type=text]').css('background-color','white');
$('.error').hide();
$('select[name$="_anzahl"]').val(0);
//$('select[name="item1_anzahl"] option[value="0"]').attr("selected","selected");
$("p[id^=erfolg]").css('visibility','hidden');
$('.newLr').hide();
var x = $(this).attr('id') ; 
x = retnum(x);
fillKunden(x, "kunden");
$("#rechnung").attr("data-bid",'');
removeLR();
});//click', '.provisoryButtons'


//$('#delPreise').click(function(){
$('body').on('click', '#del_Kunden', function() {
    $('#theStorno').val('');
removeLetter();
var kundenFill_kundenNummer= $('#kundenFill_kundenNummer').val();  
if( kundenFill_kundenNummer===""){
            alert('bitte kunden auswählen');
}else{
            $.post("php/delKunden.php", "kId2=" + kundenFill_kundenNummer, function (data) {
            var myPost = JSON.parse(data);
                if ((myPost[myPost.length - 1].antwort) > 0) {//yes
                    alert($('#kundenFill_vorname').val() + ' ' + $('#kundenFill_name').val() + ' mit KNr: ' + kundenFill_kundenNummer + ' ' + myPost[0].text);
                    emptyAllData();
                    removeKudenFinden();
                    removeErr();
                    removeLast();
                    $("#preisName").attr("data-preislisteName", 1);
                    $("#preisName").val("Normale");
                    completePrice("Normale");
                } else {
                    var myText = "";
                    $.each(myPost, function (idx, obj) {
                        if (typeof obj.rechnungsNummer !== "undefined") {
                            myText += obj.rechnungsNummer + ' ';
                        }//if
                    });//each
                    alert($('#kundenFill_vorname').val() + ' ' + $('#kundenFill_name').val() + ' mit KNr: ' + kundenFill_kundenNummer + ' kann nicht gelöscht werden.\nUnd hat folgende Rechnungen:\n' + myText);
                }//else
            }); //post 
}//else
});//delKunde

 
$('body').on('click', '#delPreise', function() {//delPreis
removeLetter();
var preislisteName= $('#preisName').attr('data-preislisteName');  
if( preislisteName===""){alert('bitte Preis auswählen');}
else{
$.post("php/delPrice.php", "preislisteName="+preislisteName , function(data){
var myPost=JSON.parse(data);
 if((myPost[myPost.length-1].antwort)>0){//yes
    alert($('#preisName').val()+ ' '+myPost[0].text);
     completePrice('Normale');
     $('#preisName').val('Normale');
     $('#preisName').attr('data-preislisteName', '1'); 
 }else{
    var myText="";
     $.each(myPost, function(idx, obj) {
      if(typeof obj.rechnungsNummer !== "undefined" ){
      myText+= obj.rechnungsNummer +' ';
      }
       
 });//each
alert( $('#preisName').val()+ ' kann nicht gelöscht werden.\nUnd wird gebraucht für folgende Rechnungen:\n'+ myText );
}  
});  
}
});//delPreis


$('body').on('click', "#delLr", function() { 
//check if is used
$('[id^=erfolgL]').css('visibility','hidden');
$('#myTextAreaLr').css('background-color','white');
var lrId= $('#lrName').attr('data-lrName');  
if( lrId===""){alert('bitte Lieferschein/Rechnung auswählen');}
$.post('php/delLr.php','lrId='+lrId ,function(data) {
var myPost=JSON.parse(data);
if((myPost[myPost.length-1].antwort)>0) {//yes
alert( $('#theLrName').val()+' - '+$('#lrName').val()+ ' '+myPost[0].text);
loadLr(2);
}else{
var myText="";
     $.each(myPost, function(idx, obj) {
      if(typeof obj.rechnungsNummer !== "undefined" ){
       myText+= obj.rechnungsNummer +' ';
         }
       
});
alert( $('#theLrName').val()+' - '+$('#lrName').val()+ ' kann nicht gelöscht werden.\nUnd wird gebraucht für folgende Rechnungen:\n'+ myText );
}
});//$.post('php/delLr.php
});// #delLr
 
//$("#lrName").click(function(){
$('body').on('click', "#lrName", function() { 
click_lrName();  
});

$('body').on('click', "input[name='nb']", function() { 
removeLetter();
});//click nb
//
//$("input[name='lr']").click(function(){
$('body').on('click', "input[name='lr']", function() { 
var x;
//alert( $("input[name='lr']:checked").val() );
removeLetter();
if ($("input[name='lr']:checked").val()==="l"){x='Lieferschein - normal';
     $("#theLrName").val("Lieferschein");
    }
else if ($("input[name='lr']:checked").val()==="r"){x='Rechnung - normal';
     $("#theLrName").val("Rechnung");
    }
$("#lrName").val('normal');
loadLr(x);
});


//$("#neueLr").click(function(){
        $('body').on('click', "#neueLr", function () {
        removeLetter();
        $(".newLr").show('slow');
        $("#lrName").val('');
        $("#erfolgLr3").hide();
        $("#erfolgLr3").css("visibility", "hidden");
        $('#theNewLrName_error').css('visibility', 'hidden');
        $("#theNewLrName").val('');
        $("#theNewLrName").css('background-color', 'white');
        $("#error2Lr").css('visibility', 'hidden');
        $("#erfolgLr").css('visibility', 'hidden');
        $('#erfolgLr3_error').css('visibility', 'hidden');
        $('#erfolgLr4_error').css('visibility', 'hidden');
        $('#erfolgLr4_error').hide();
        $('#erfolgLr2').css('visibility', 'hidden');
        $('#lrName').css('background-color', 'white');
        $("#myTextAreaLr").css('background-color', 'white');
        $("#theNewLrName").css('background-color', 'white');
  
});

//$("#cancelLr").click(function(){
 
$('body').on('click', "#cancelLr", function() {
        $(".newLr").hide('slow');
        $('#erfolgLr2').css('visibility', 'hidden');
        $('#theNewLrName_error').css('visibility', 'hidden');
        $("#error2Lr").css('visibility', 'hidden');
        $("#erfolgLr").css('visibility', 'hidden');
        $("#lrName").removeAttr('disabled');
        $('#erfolgLr3_error').css('visibility', 'hidden');
        $('#erfolgLr4_error').css('visibility', 'hidden');
        $('#erfolgLr4_error').hide();
        $('#lrName').css('background-color', 'white');
        $("#myTextAreaLr").css('background-color', 'white');
        loadLr(Number($("#lrName").attr('data-lrName')));
        $("#myTextAreaLr").css('background-color', 'white');
//      $("#myTextAreaLr").val(theText);
        
 
});

//$("#okLr").click(function(){
$('body').on('click', "#okLr", function() {
removeLetter();
if(typeof $("input[name='lr']:checked").val()==="undefined"){
         alert('lieferschein oder Rechnung anclicken');
}//check 
        $("#myTextAreaLr").css('background-color', 'white');
        $('#erfolgLr2').css('visibility', 'hidden');
        $('#erfolgLr3_error').css('visibility', 'hidden');
        $('#lrName').css('background-color', 'white');
        $("#erfolgLr").css('visibility', 'hidden');
        var theNewLrName;
        theNewLrName = $('#theNewLrName').val();
        var x;
//alert( $("input[name='lr']:checked").val() );
if ($("input[name='lr']:checked").val()==="l"){x='Lieferschein - ';
    $("#theLrName").val("Lieferschein");
}else if ($("input[name='lr']:checked").val()==="r"){x='Rechnung - ';
         $("#theLrName").val("Rechnung");
}
if(testString("address", theNewLrName )<1){
   console.log('all good 2 ');
//but check if in DB
$.getJSON('php/check_lr_name.php','suche='+encodeURI(x)+encodeURI(theNewLrName),function(data) {
//         alert(data);
//     
if(data>0){
   
                    $("#theNewLrName").css('background-color', 'pink');
                    console.log(theNewLrName + " existiert bereit.");
                    $("#error2Lr").css('visibility', 'visible');
                    $("#error2Lr").css('display', 'inline');
                    $("#erfolgLr").css('visibility', 'hidden');
                    $("#erfolgLr").hide();
      
}else{
                    $("#erfolgLr").css('visibility', 'visible');
                    $("#erfolgLr").css('display', 'inline');
                    $("#myTextAreaLr").css('background-color', 'lightblue');
                    darfLR=true;
                    $("#lrName").val(theNewLrName); 
                    $("#theNewLrName_error").hide();
                    $("#theNewLrName_error").css('visibility', 'hidden');
                    $("#lrName").css("background-color", "white");
                    $.getJSON('php/write_new_lr_name.php','suche='+encodeURI(x)+encodeURI(theNewLrName),function(data) {
                            //       alert(data);//
                            $("#error2Lr").hide();
                            $("#erfolgLr2").css("visibility","visible");
                            $("#erfolgLr2").html(data[0].anwort);
                            $('#lrName').attr('data-lrname', data[0].lrId);
                    }) ; //getjson
}
}
);
}else{

   $("#theNewLrName").css('background-color', 'pink');
   $('#theNewLrName_error').css('visibility', 'visible');
   $("#theNewLrName_error").show();
   $("#erfolgLr").css('visibility', 'hidden');
   $("#error2Lr").show();
};
});


//neuePreise   
//$('#neuePreise').click(function(){
$('body').on('click', '#neuePreise', function() {
$('#preisName').attr('data-preislisteName', ''); 
$('.comma5').val('');
$('input[type=text][id^=price_]').val('');
$('#erfolg2').css('visibility','hidden'); 
$('#erfolg').css("visibility","hidden");  
$('#theNewListeName').val("");
$('#theNewListePreis').val("");
$(".newListerror").html('');
$("#error2").css('visibility', 'hidden');
$('#preisName').val("");
for(var i=1; i<50; i++){
var items =  '#p_item'+ i;
$(items).val("");
}
$('.newList').show("slow");
$('.newList').css('background-color', 'yellow');
$('.newList input[type="text"]').css('background-color', 'white');
});

$('body').on('click', '#resetLayout', function() {
loadbestellungNew($('#rechnung').attr('data-bid'));     
});
////cancel
//$('#cancel').click(function(){
$('body').on('click', '#cancel', function() {
$('.newList').hide("slow");     
});
////cancel

//$('#ok').click(function(){
$('body').on('click', '#ok', function() {
var err=[]; 
var theNewListePreis;
var theNewListeName;
$('#erfolg').css("visibility","hidden");
$('.comma').val('');
theNewListeName =  $.trim($("#theNewListeName").val());
$("#theNewListeName").val(cap(theNewListeName));
theNewListeName =  $.trim($("#theNewListeName").val());
console.log(theNewListeName);
console.log( testString('address', 'theNewListeName'));
if(testString("address", theNewListeName )<1){
   console.log('all good 2 ');
   //but check if in DB
   $.getJSON('php/check_preise_name.php','suche='+theNewListeName,function(data) {
     
  if(data>0){
         $("#theNewListeName").css('background-color', 'pink');
         console.log(theNewListeName +" existiert bereit." );
        $("#error2").css('visibility', 'visible');
        err.push("Namen");
        console.log(err);
         $('.newList').show();
        erroOr(err,theNewListePreis,theNewListeName);
 }
   });
}else{
    err.push("Namen");
   $("#theNewListeName").css('background-color', 'pink');
     $('.newList').show();
   erroOr(err,theNewListePreis,theNewListeName);
};


theNewListePreis =  $.trim($("#theNewListePreis").val().replace(",", "."));
$("#theNewListePreis").val(theNewListePreis);
if($.isNumeric(theNewListePreis)){console.log('ok');
erroOr(err,theNewListePreis,theNewListeName);
}else{
  err.push("Betrag");
  $("#theNewListePreis").css('background-color', 'pink');
  erroOr(err,theNewListePreis,theNewListeName);
};
console.log(theNewListePreis);
});//neuePreise

//savePreise   
$('body').on('click', '#savePreise', function() {
removeLetter();
//check if empty 
$('.newList').hide("slow");
var err0r="";
var err0r1="";
var err0r2="";
        $('.comma').each(function(index, obj){
        var  comma =$.trim( $('.comma:eq('+index+')').val());
        var  withComma=comma.replace(",", ".");
        $('.comma:eq('+index+')').val(withComma);
            if((withComma.length<1)&&(comma.length<1)  ){
                err0r1= "bitte Felder Preis füllen\n" ; 
            $('.comma:eq('+index+')').css('background-color', 'pink');
            }
        //check if numbers 
        var float =/^\d*\.?\d*$/;
            if(!float.test(withComma)) { 
            err0r2 = "Preis bitte eintragen"; 
            $('.comma:eq('+index+')').css('background-color', 'pink');
            }
        });//each

err0r+= err0r1+err0r2;
if(err0r.length>0){
    $('#erfolg2').css('visibility','visible'); 
    $('#erfolg2').html('Error: ' +err0r); 
    $('#erfolg2').css('color','red'); 
}else{
    var serializedForm  = $('#preislisteForm').serializeArray();
//trim
    $.each(serializedForm , function(i, field) {
    serializedForm[i].value = $.trim(field.value);
    });//each
    //removedanger /^\w+$/
     var re = /[a-zA-Z0-9äöüÄÖÜß_]/; 
     if(!re.test(serializedForm[0].value)) { 
            alert("Preisliste darf nicht leer sein, und darf bestehn nur aus Buchstaben, Zahlen und underscores. Bitte versuchen Sie noch mal"); 
            $('#preisName').focus();
      }else{
          //send
           console.log(serializedForm);
           var data = JSON.stringify(serializedForm);
                $.post("php/check_price_list.php", "data="+data , function(result){
                    if(isNaN(Number(result))){
                         completePrice($('#preisName').val());
                         $('#erfolg2').css('visibility','visible'); 
                         $('#erfolg2').text(result);
            //            alert(result);
                         $('#erfolg2').css('color','blue');
                    }else{
                         var r = confirm($('#preisName').val() + ' überschreiben?');  
                         if (r == true) { 
                                $.post("php/update_price_list.php", "data="+data , function(xx){  
                                completePrice($('#preisName').val());
                                $('#erfolg2').css('visibility','visible'); 
                                $('#erfolg2').text(xx);
                          //    alert(xx);//wurde aktualisiert
                                $('#erfolg2').css('color','blue');
                                }); //post 
                         }else {
                                alert('wurde nicht aktualisiert'); //wurde aktualisiert  
                        }            
                      }//if
         });//post
    }//else
}//else
});//savePreise


$('body').on('change', '.comma', function() {
//alert('change'); 
$('#erfolg2').css('visibility', 'visible').css('color', 'red').text('Liste Anderungen wurden noch nicht gespeichert');
});//change .comma


$('body').on('click', '#neueRechnung', function() {
 $('#theStorno').val('');
removeLetter();
removeLast();
//empty everything in rechnung
//if no kunden nummer alert
if($('#kundenFill_kundenNummer').val() ===""){
    alert('bitte kunden auswählen/eintragen');
}else{
        var data=$('#kundenFill_kundenNummer').val();
        var dataPreis=$('#preisName').val();
    //reset lr
        if($('#lrName').attr('data-lrName') !==""){
             loadLr($('#lrName').attr('data-lrName'));
        }else{ 
            loadLr(2);
        }
    //loadNb(buecher)
        loadNb( $('input[name=nb]').val());
    //reset preis
         if($('#preisName').attr('data-preislisteName') !==""){ 
            completePrice($('#preisName').attr('data-preislisteName'));
        }else{ completePrice(1);
        }
                $.post("php/retrieve.php", "dataPreis="+encodeURI(dataPreis) , function(result){
                $.post("php/neue_rechnung_speichern.php", "dataKundenNummer="+data+"&dataPreis="+result , function(result2){
                console.log(result2); 
                //console.log(result2["datum"]); 
                //console.log(result2[0]['datum']);
                var obj = JSON.parse(result2);
                // console.log(obj[0]);
                //console.log(result2["datum"]);
                $('#theDate').val(obj[0].datum );
                 calculateprozent(obj[0].datum);
                
                $('#theRechnung').val(obj[0].rechnungsNummer );
                $('#rechnung').attr('data-bid',obj[0].bId );
                //console.log(result2[0].datum );
                });// $.post("php/neue_rechnung_speichern.php"
                });//$.post("php/retrieve.php"
}//else
});//click', '#neueRechnung'

$('body').on('click', '#stornoRechnung', function() { 
removeLetter();
if($('#rechnung').attr('data-bid') ===""){
    alert('bitte Rechnung auswählen');
}else{
     
                $.post("php/stornoRechnung.php", "bId="+$('#rechnung').attr('data-bid') , function(result){
                alert(result);
                loadbestellungNew($('#rechnung').attr('data-bid'));
               
 
               
                });//post
         
}//if
});

$('body').on('click', '#delRechnung', function() { 
    $('#theStorno').val('');
removeLetter();
if($('#rechnung').attr('data-bid') ===""){
    alert('bitte Rechnung auswählen');
}else{
    var r = confirm( "Rechnung " + $('#theRechnung').val() + ' löschen?');
        if (r === true) { 
                $.post("php/delRechnung.php", "bId="+$('#rechnung').attr('data-bid') , function(result){
                alert("Rechnung wurde gelöscht" );
                $('#theDate').val('');
                $('#theRechnung').val('');
                $('#rechnung').attr('');
                $("#rechnung").attr("data-bid",'');
                fillKunden($('#kundenFill_kundenNummer').val(), 'kunden');
                $("#rechnung").attr("data-bid",'');
                });//post
        }
}//if
});


$('body').on('click', '#updateRechnung', function() {
  
var myLastError=[];
if($('#kundenFill_kundenNummer').val() ===""){
    myLastError.push('Kunden');
}
if($('#rechnung').attr('data-bid') ===""){
    myLastError.push('Rechnung Nr');
}
if(!$('input[name=nb]:radio:checked').val()){
    myLastError.push('Normal oder buch');
}
if($('#lrName').attr('data-lrName') ===""){
    myLastError.push('Lieferschein oder Rechnung ');
} 
if(myLastError.length>0){
    alert('bitte '+myLastError.join(', ' )+' auswählen');
    return;
}else{
    var bId=$('#rechnung').attr('data-bid');
    var preisName=$('#preisName').attr('data-preislistename');;
    for(var i=0; i<49;i++){
    var itemIndex ="$('select[name=\"item"+(i+1)+"_anzahl\"]')"; 
//console.log(itemIndex);
//     console.log($('select[name="item32_anzahl"]').val());
    itemsToSave[i]=eval(itemIndex).val();
 
        }//for
    var lr=$('#lrName').attr('data-lrName');
    
     var porto=0;
      if (  typeof $('input[name=porto]:radio:checked').val()!=='undefined')  {
          porto=$('input[name=porto]:radio:checked').val();
      }

    
    
    var buecher=$('input[name=nb]:radio:checked').val();
    var preis=$('#price_thePrice').val();
    var portoGewuenscht=$('#portoGewuenscht').val(); 
}
console.log('////////////////////////////');
console.log('bId: '+bId);
console.log('preisName: '+preisName);
console.log('itemsToSave: '+itemsToSave);
console.log('lr: '+lr);
console.log('buecher: '+buecher);
console.log('porto: '+porto);
console.log('preis: '+preis);
//alert(porto+ ' '+buecher);
var jsonString = JSON.stringify(itemsToSave);
        $.post("php/update-rechnung.php", "bId="+bId+'&preisName='+preisName+'&lr='+lr+'&buecher='+buecher
        +'&porto='+porto+'&portoGewuenscht='+portoGewuenscht+'&preis='+preis+'&data='+jsonString, function(result){
        alert(result);
        loadbestellungNew(bId);
        });//post
});//clcik #updateRechnung


function replaceComma(x){
   x.replace(".", ",");
    return x;
}

//EDITABLE+++++++++++++++++++++++++++++++++++++++++++ 
var myEditableId;
var numb;
//$('.editable').bind('dblclick', function(){
$('body').on( "click", '.editable', function() {
console.log('click editable');
removeLetter();
var myEditableId = $(this).attr('id');
console.log(myEditableId);
// gets the id of a clicked link that has a class of menu
numb = myEditableId.match(/\d/g);
numb = numb.join("");
console.log(numb);
});//clcik editable


$('.editable').editable({
    
    touch : true, // Whether or not to support touch (default true)
    lineBreaks : true, // Whether or not to convert \n to <br /> (default true)
    toggleFontSize : false, // Whether or not it should be possible to change font size (default true),
    closeOnEnter : true, // Whether or not pressing the enter key should close the editor (default false)
    event : 'dblclick', // The event that triggers the editor (default dblclick)
    tinyMCE : false, // Integrate with tinyMCE by settings this option to true or an object containing your tinyMCE configuration
    emptyMessage : autofill_ITEMS_Names_from_DB(), // HTML that will be added to the editable element in case it gets empty (default false)
      
    callback : function( data ) {
        // Callback that will be called once the editor is blurred
        if( data.content ) {
        $.post("php/update_name_list.php", "data="+data.content+"&id="+numb , function(result){
        alert(result);
        });      
//         alert(data.content);
        }
        if( data.fontSize ) {
            // the font size has changed
        }
//data.$el gives you a reference to the element that was edited
//        data.$el.effect('blink');
} 
});

//+++++++++++++++++++++++++++++++++++++++++++++++++
// BOrder TOP
$( window ).resize(function() {
resiIze();
});	          
            
function resiIze(){
$winwidth = $(window).width();
//alert($winwidth);
pixSiIze($winwidth);
}

function borderTop(){
var $h1 = parseInt($('h1').css('margin-top'));
// alert($h1);
var $hr;
$('hr').css('visibility','hidden');
if ( !isNaN(parseInt($('hr').css('-webkit-margin-before')))){
$hr=(parseInt($('hr').css('-webkit-margin-before'))); }
else if( !isNaN(parseInt($('hr').css('border-top-width')))){
$hr=8; };
// alert($hr);
 var newHeight=(3* $h1  )+ $hr -2;
//  alert(newHeight);
 $('#borderTop').height(newHeight+"px");
}

function pixSiIze(X)// check window size
{ $("body").css({"background-size": $winwidth} );}
// BOrder TOP

//////////'''''''''''''''''''''print''''''''''''''''//////////////////////
$('body').on('click', '#printMe', function() {
    
console.log('#printMe');
console.log($( "#sehrGeherte_2" ).children().length);


var thecontent2reload=$('#rechnung').attr('data-bid');
// alert(thecontent2reload);
var originalContents = document.body.innerHTML;
document.body.innerHTML = originalContents;

console.log('#vorschauBack2.html: '+ $('#vorschauBack2').html());
console.log('.vorschauBack.height: '+ $('.vorschauBack').height());
console.log('#vorschauBack2.height: '+ $('#vorschauBack2').height());
console.log('.backPix.height: '+ $('.backPix').height());
console.log('.backPix img.height: '+ $('.backPix').find('img').height());
console.log('.letter.height: '+ $('.letter').height()  );
console.log('#vorschau.height: '+ $('#vorschau').height()  );

printDiv('vorschauBack2', thecontent2reload, originalContents);
});//click printMe

function printDiv(divName1,thecontent2reload, originalContents) {
console.log('fName: function printDiv(divName1,thecontent2reload)');
var printContents = document.getElementById(divName1).innerHTML;
document.body.innerHTML = printContents;
window.print();
document.body.innerHTML = originalContents;
loadbestellungNew(thecontent2reload); 

}//printDiv


 
});// jquery
   



