 
<!DOCTYPE html>
<html lang="de">
    <head>
        <meta charset="UTF-8">
        <title>Rechnung</title>
        <link rel="icon" href="img/favicon.png" type="image/x-icon" />
        
        <?php $x=time();?>

        <script src="js/jquery-1.11.3.min.js"></script>
<!--         <script type="text/javascript" src='js/JavaScriptSpellCheck/include.js' ></script> -->
        <script src="js/jquery-ui.min.js"></script>
         <script type="text/JavaScript" src="js/jquery.editable.min.js"></script>
        <script type="text/JavaScript" src="js/fill-redo.js?ver=1.<?php echo $x ?>"></script>
<!--        <script type="text/JavaScript" src="js/print.js"></script>-->
         <link rel="stylesheet" href="css/normalize.css"> 
         <link rel="stylesheet" href="css/jquery-ui.css"> 
        <link rel="stylesheet" href="css/main.css?ver=1.<?php echo $x ?>"> 
<!--        <script type='text/javascript'>
            $Spelling.UserInterfaceTranslation = "de"; //german User Interface.
            $Spelling.DefaultDictionary = "Deutsch"; //german Dictionary
           
      $Spelling.SpellCheckAsYouType('myTextArea');
       
       
 </script>-->
    
        <!--<input type="button" value="Spell Check" onclick="$Spelling.SpellCheckInWindow('myTextArea')" /></script>--> 

     </head>
    <body>
<div id="borderTop"></div>
<div id="center">
    <a href="geschickte-rechnungen.php" target="_blank"><h2>geschickte-rechnungen</h2></a>
    <h1>Rechnung</h1> 
    <hr id="line">
    
    <div id="kundenBestellungNummer">
        <h3> <form>
            <ul>
                <u><a href="logout.php" target="_blank" class="logMeOut">log Out</a></u></br></br>
                <u>Kunden finden</u>
               
           <li><input type="text" placeholder="Kunden-Nummer" id="loadFromKundenNummer"></li>  
<!--           <li><input type="text" placeholder="deleteMe" class="findMe" id="loadFromBestellungNummer"></li>-->
            <li><input type="text" placeholder="Bestellung-Nummer" class="findMe" id="rechnungsNummer"></li>
            
           <li><input type="text" placeholder="Name" class="findMe" id="name"></li> 
          <li><input type="text" placeholder="Email" class="findMe" id="email"></li>
          <li><button id="check" type="button">check</button></li>
          </ul>
            </form></h3>
      
    </div>
    <div id="accordionG">
        
         
        <h3 class="op">Kunden Daten <img id="kundenFillImg" class="img" data-number="1" src="img/transparent.png"></h3>
  <div class="ac" id="kundenFill">
<form id="kundenForm">   
<ul>
<li><label>KundenNummer</label>
    <input type="text" id="kundenFill_kundenNummer" name="kundenNummer" placeholder="KundenNummer - Blank lassen" readonly></li>
<li id="kundenFill_kundenNummer_error" class="error"><p>error</p></li>
<li><label>Institution</label>
    <input type="text" id="kundenFill_institution" name="institution" placeholder="Institution"></li>
<li id="kundenFill_institution_error" class="error"><p>error</p></li>
<li><label>Titel</label>
    <input type="text" id="kundenFill_titel" name="titel" placeholder="Titel" class="findMe"></li> 
<li id="kundenFill_titel_error" class="error"><p>error</p></li>
<li><label>Name</label>
    <input type="text" id="kundenFill_name" name="name" placeholder="Name"></li>
<li id="kundenFill_name_error" class="error"><p>error</p></li>
<li><label>Vorname</label>
    <input type="text" id="kundenFill_vorname"  name="vorname" placeholder="Vorname"></li>
<li id="kundenFill_vorname_error" class="error"><p>error</p></li>
<li><label>Strasse Nummer</label>
    <input type="text" id="kundenFill_anschrift" name="anschrift"placeholder="Anschrift"></li>
<li id="kundenFill_anschrift_error" class="error"><p>error</p></li>
<li><label>PLZ</label>
    <input type="text" id="kundenFill_plz" name="plz" placeholder="PLZ"></li>
<li id="kundenFill_plz_error" class="error"><p>error</p></li>
<li><label>Ort</label>
    <input type="text" id="kundenFill_ort" name="ort"placeholder="Ort"></li>
<li id="kundenFill_ort_error" class="error"><p>error</p></li>
<li><label>m/w</label>
    <input type="radio" id="kundenFill_sexU" name="sex" value="u">unbekannt&nbsp;&nbsp; 
<input type="radio" id="kundenFill_sexM" name="sex" value="m">Mann&nbsp;&nbsp; 
<input type="radio" id="kundenFill_sexW" name="sex" value="w">Frau</li>  
<li id="kundenFill_sex_error" class="error"><p>error</p></li>
<li><label>Email</label>
    <input type="email" id="kundenFill_email" name="email" placeholder="Email"></li> 
<li id="kundenFill_email_error" class="error"><p>error</p></li>
<li><label>Mob</label>
    <input type="text" id="kundenFill_mob" name="mob" placeholder="Mob"></li>
<li id="kundenFill_mob_error" class="error"><p>error</p></li>
<li><label>Tel</label>
    <input type="text" id="kundenFill_tel" name="tel" placeholder="Tel"></li>
<li id="kundenFill_tel_error" class="error"><p>error</p></li>
<li><label>Bemerkung</label><br>
<textarea  name="bemerkung" placeholder="bemerkung" id="myTextArea" rows="4" cols="65" ></textarea></li>
<li id="myTextArea_error" class="error"><p>error</p></li>

<li><button type="button" id="del_Kunden">Kunden löschen</button> &nbsp;&nbsp; 
    <button type="button" id="Neuen_Kunden_Eintragen">Neuen Kunden eintragen</button> &nbsp;&nbsp; 
    <button type="button" id="Neuen_Kunden_Speichern">Neuen Kunden Speichern</button> &nbsp;&nbsp; 
 <button type="button" id="Kunden_updaten">Kunden updaten</button></li>
</ul>
 </form>        
 
    </div>
    <h3 class="op">Bestellung Daten: <img id="itemFillImg" class="img" data-number="1" src="img/transparent.png"></h3>
    
    
    
<div class="ac" id="itemFill">
    <div id="last">
        <input type="text" readonly id="theStorno" name="theStorno" placeholder="storno">   
<label id="rechnung" data-bId="" >Rechnung nr:</label><input type="text" readonly id="theRechnung" name="theRechnung">
<label id="date">&nbsp;&nbsp;vom:</label><input type="text" id="theDate" name="theDate" readonly>&nbsp;&nbsp;
        <button type="button" id="delRechnung">del Rechnung</button>&nbsp;&nbsp;
        <button type="button" id="stornoRechnung">Storno Rechnung</button>&nbsp;&nbsp;
<button type="button" id="neueRechnung">neue Rechnung</button>&nbsp;&nbsp;
    <button type="button" id="updateRechnung">save Rechnung</button>
   
    </div>
    
 
<form id="preislisteForm">
    
<div id="ulLeft">
<ul >
  

<li class="newList"><label  id="newListeName"  >neuer Listename</label>
    <input  type='text' id="theNewListeName" placeholder="Name"><p id='error2'> exisitiert bereits.</p></li>

<li class="newList"><label  id="newListePreis"  >neuer Listebetrag</label>
 <input  type='text' id="theNewListePreis" placeholder="€"></li>

<li class="newList"><button type="button" id='ok'>ok</button>&nbsp;&nbsp;<button type="button" id='cancel'>cancel</button>&nbsp;&nbsp; <p class="newListerror"></p>
    <p id='erfolg'>"save" anclicken um die neue liste zu speichern.</p> </li>


<li class="newList"><hr></li>
 
    
<li><label  id="preislisteName"  ><u>Preisliste Name:</u></label>
<input id="preisName" name="preisName" data-preislisteName="" type="text" placeholder="Preisliste Name" class='findMe'>&nbsp;&nbsp;
<button type="button" id='delPreise'>&nbsp;del&nbsp;</button>&nbsp;&nbsp;
<button type="button" id='neuePreise'>neue</button>&nbsp;&nbsp;
<button type="button" id='savePreise'>save</button></li>
  <li> <p id='erfolg2'>wurde gespeichert.</p> </li>
<li><label id="item1">Der Anfang M1</label>
  <select name="item1_anzahl">
 <?php
for ($x = 0; $x<= 50; $x++) {
    echo "<option value='$x'>$x</option>";
}
?> 
 </select> x 
    <input id="p_item1" type='text' name="item1_preis" class="comma"> = 
<input id="p_item1_whole" type='text' class="comma5" readonly> &#8364;</li> 
<li><label id="item2">Der Anfang M1-12</label>
    <select name="item2_anzahl"> 
<?php
for ($x = 0; $x <= 50; $x++) {
    echo "<option value='$x'>$x</option>";
}
?>
 </select> x  
    <input id="p_item2" type='text'  name="item2_preis" class="comma"> = 
<input id="p_item2_whole" type='text' class="comma5" readonly> &#8364;</li>   
<li><label id="item3">Eröffnung R1</label>
     <select name="item3_anzahl"> 
  <?php
for ($x = 0; $x <= 50; $x++) {
    echo "<option value='$x'>$x</option>";
}
?>
 </select> x 
    <input id="p_item3" type='text' name="item3_preis" class="comma"> = 
<input id="p_item3_whole" type='text' class="comma5" readonly> &#8364;</li> 
<li><label id="item4">Eröffnung 501</label>
     <select name="item4_anzahl"> 
 <?php
for ($x = 0; $x <= 50; $x++) {
    echo "<option value='$x'>$x</option>";
}
?>
 </select> x  
    <input id="p_item4" type='text' name="item4_preis" class="comma"> = 
<input id="p_item4_whole" type='text' class="comma5" readonly> &#8364;</li> 
<li><label id="item5">Antworten auf OF/UF - Eröffnungen R4</label>
 <select name="item5_anzahl"> 
<?php
for ($x = 0; $x <= 50; $x++) {
    echo "<option value='$x'>$x</option>";
}
?>
 </select> x  
    <input id="p_item5" type='text' name="item5_preis" class="comma"> = 
<input id="p_item5_whole" type='text' class="comma5" readonly> &#8364;</li> 
<li><label id="item6">Antworten auf OF/UF - Eröffnungen 504</label>
 <select name="item6_anzahl"> 
 <?php
for ($x = 0; $x <= 50; $x++) {
    echo "<option value='$x'>$x</option>";
}
?>
 </select> x 
    <input id="p_item6" type='text' name="item6_preis" class="comma"> = 
<input id="p_item6_whole" type='text' class="comma5" readonly> &#8364;</li>  
<li><label id="item7">Antworten auf OF/UF - Eröffnungen R5</label>
    <select name="item7_anzahl"> 
 <?php
for ($x = 0; $x <= 50; $x++) {
    echo "<option value='$x'>$x</option>";
}
?>
 </select> x  
    <input id="p_item7" type='text' name="item7_preis" class="comma"> = 
<input id="p_item7_whole" type='text' class="comma5" readonly> &#8364;</li> 
<li><label id="item8">Antworten auf OF/UF - Eröffnungen 505</label>
     <select name="item8_anzahl"> 
 <?php
for ($x = 0; $x <= 50; $x++) {
    echo "<option value='$x'>$x</option>";
}
?>
 </select> x  
    <input id="p_item8" type='text' name="item8_preis" class="comma"> = 
<input id="p_item8_whole" type='text' class="comma5" readonly> &#8364;</li> 
<li><label id="item9" >EÖ-Antwort-Rebid R8</label>
     <select name="item9_anzahl"> 
<?php
for ($x = 0; $x <= 50; $x++) {
    echo "<option value='$x'>$x</option>";
}
?>
 </select> x  
    <input  id="p_item9" type='text' name="item9_preis" class="comma"> = 
<input id="p_item9_whole" type='text' class="comma5" readonly> &#8364;</li> 
<li><label id="item10">EÖ-Antwort-Rebid 508</label>
     <select name="item10_anzahl"> 
<?php
for ($x = 0; $x <= 50; $x++) {
    echo "<option value='$x'>$x</option>";
}
?>
 </select> x  
    <input id="p_item10"  type='text' name="item10_preis" class="comma"> = 
<input id="p_item10_whole" type='text' class="comma5" readonly> &#8364;</li> 
<li><label id="item11">EÖ-Antwort-Rebid R9</label>
     <select name="item11_anzahl"> 
<?php
for ($x = 0; $x <= 50; $x++) {
    echo "<option value='$x'>$x</option>";
}
?>
 </select> x  
    <input  id="p_item11" type='text' name="item11_preis" class="comma"> = 
<input id="p_item11_whole" type='text' class="comma5" readonly> &#8364;</li> 
<li><label id="item12">EÖ-Antwort-Rebid 509</label>
     <select name="item12_anzahl"> 
  <?php
for ($x = 0; $x <= 50; $x++) {
    echo "<option value='$x'>$x</option>";
}
?>
 </select> x  
    <input  id="p_item12" type='text' name="item12_preis" class="comma"> = 
<input id="p_item12_whole" type='text' class="comma5" readonly> &#8364;</li> 
<li><label id="item13">2.Gebot des Responders R10</label>
     <select name="item13_anzahl"> 
  <?php
for ($x = 0; $x <= 50; $x++) {
    echo "<option value='$x'>$x</option>";
}
?>
 </select> x  
    <input  id="p_item13" type='text' name="item13_preis" class="comma"> = 
<input id="p_item13_whole" type='text' class="comma5" readonly> &#8364;</li> 
<li><label id="item14">2.Gebot des Responders 510</label>
     <select name="item14_anzahl"> 
 <?php
for ($x = 0; $x <= 50; $x++) {
    echo "<option value='$x'>$x</option>";
}
?>
 </select> x  
    <input  id="p_item14" type='text' name="item14_preis" class="comma"> = 
<input id="p_item14_whole" type='text' class="comma5" readonly> &#8364;</li> 
<li><label id="item15" >2.Gebot des Responders R11</label>
     <select name="item15_anzahl"> 
<?php
for ($x = 0; $x <= 50; $x++) {
    echo "<option value='$x'>$x</option>";
}
?>
 </select> x  
    <input  id="p_item15" type='text' name="item15_preis" class="comma"> = 
<input id="p_item15_whole" type='text' class="comma5" readonly> &#8364;</li> 
<li><label id="item16">2.Gebot des Responders 511</label>
    <select name="item16_anzahl"> 
 <?php
for ($x = 0; $x <= 50; $x++) {
    echo "<option value='$x'>$x</option>";
}
?>
 </select> x  
    <input  id="p_item16" type='text' name="item16_preis" class="comma"> = 
<input id="p_item16_whole" type='text' class="comma5" readonly> &#8364;</li> 

<li><label id="item17">Informationskontra R13</label>
    <select name="item17_anzahl"> 
 <?php
for ($x = 0; $x <= 50; $x++) {
    echo "<option value='$x'>$x</option>";
}
?>
 </select> x  
    <input  id="p_item17" type='text' name="item17_preis" class="comma"> = 
<input id="p_item17_whole" type='text' class="comma5" readonly> &#8364;</li>
<li><label id="item18">Informationskontra 513</label>
     <select name="item18_anzahl" > 
 <?php
for ($x = 0; $x <= 50; $x++) {
    echo "<option value='$x'>$x</option>";
}
?>
 </select> x  
    <input  id="p_item18" type='text' name="item18_preis" class="comma"> = 
<input id="p_item18_whole" type='text' class="comma5" readonly> &#8364;</li> 
<li><label id="item19">Antworten auf Informationskontra R14</label>
     <select name="item19_anzahl"> 
  <?php
for ($x = 0; $x <= 50; $x++) {
    echo "<option value='$x'>$x</option>";
}
?>
 </select> x  
    <input  id="p_item19" type='text' name="item19_preis" class="comma"> = 
<input id="p_item19_whole" type='text' class="comma5" readonly> &#8364;</li>  
<li><label id="item20">Antworten auf Informationskontra 514</label>
     <select name="item20_anzahl"> 
 <?php
for ($x = 0; $x <= 50; $x++) {
    echo "<option value='$x'>$x</option>";
}
?>
 </select> x  
    <input  id="p_item20" type='text' name="item20_preis" class="comma"> = 
<input id="p_item20_whole" type='text' class="comma5" readonly> &#8364;</li> 
<li><label id="item21">RKCB R80</label>
     <select name="item21_anzahl" type='text'> 
 <?php
for ($x = 0; $x <= 50; $x++) {
    echo "<option value='$x'>$x</option>";
}
?>
 </select> x  
    <input  id="p_item21" type='text' name="item21_preis" class="comma"> = 
<input id="p_item21_whole" type='text' class="comma5" readonly> &#8364;</li>
<li><label id="item22">RKCB 580</label>
     <select name="item22_anzahl"> 
<?php
for ($x = 0; $x <= 50; $x++) {
    echo "<option value='$x'>$x</option>";
}
?>
 </select> x  
    <input  id="p_item22" type='text' name="item22_preis" class="comma"> = 
<input id="p_item22_whole" type='text' class="comma5" readonly> &#8364;</li> 
<li><label id="item23">Antworten nach Zwischenreizung R16</label>
    <select name="item23_anzahl"> 
<?php
for ($x = 0; $x <= 50; $x++) {
    echo "<option value='$x'>$x</option>";
}
?>
 </select> x  
    <input type='text' id="p_item23" name="item23_preis" class="comma"> = 
<input id="p_item23_whole" type='text' class="comma5" readonly> &#8364;</li>  
<li><label id="item24">Antworten nach Zwischenreizung 516</label>
   <select name="item24_anzahl"> 
<?php
for ($x = 0; $x <= 50; $x++) {
    echo "<option value='$x'>$x</option>";
}
?>
 </select> x  
    <input type='text' id="p_item24" name="item24_preis" class="comma"> = 
<input id="p_item24_whole" type='text' class="comma5" readonly> &#8364;</li>

</ul>
</div><!--ulLeft-->
    <div id="ulRight">
<ul>
<li><label id="item25">Antworten nach Zwischenreizung R18</label>
   <select name="item25_anzahl" > 
<?php
for ($x = 0; $x <= 50; $x++) {
    echo "<option value='$x'>$x</option>";
}
?>
 </select> x  
    <input type='text' id="p_item25" name="item25_preis" class="comma"> = 
<input id="p_item25_whole" type='text' class="comma5" readonly> &#8364;</li>  
<li><label id="item26">Antworten nach Zwischenreizung 518</label>
     <select name="item26_anzahl"> 
<?php
for ($x = 0; $x <= 50; $x++) {
    echo "<option value='$x'>$x</option>";
}
?>
 </select> x  
    <input type='text' id="p_item26" name="item26_preis" class="comma"> = 
<input id="p_item26_whole" type='text' class="comma5" readonly> &#8364;</li> 
<li><label id="item27" class="editable"></label>
     <select name="item27_anzahl"> 
<?php
for ($x = 0; $x <= 50; $x++) {
    echo "<option value='$x'>$x</option>";
}
?>
 </select> x  
    <input  id="p_item27" type='text' name="item27_preis" class="comma"> = 
<input id="p_item27_whole" type='text' class="comma5" readonly> &#8364;</li>  
<li><label id="item28" class="editable"></label>
  <select name="item28_anzahl"> 
<?php
for ($x = 0; $x <= 50; $x++) {
    echo "<option value='$x'>$x</option>";
}
?>
 </select> x  
    <input  id="p_item28" type='text' name="item28_preis" class="comma"> = 
<input id="p_item28_whole" type='text' class="comma5" readonly> &#8364;</li>
<li><label id="item29" class="editable"></label>
     <select name="item29_anzahl"> <option value="0">0</option>
<?php
for ($x = 0; $x <= 50; $x++) {
    echo "<option value='$x'>$x</option>";
}
?>
 </select> x  
    <input  id="p_item29" type='text' name="item29_preis" class="comma"> = 
<input id="p_item29_whole" type='text' class="comma5" readonly> &#8364;</li>  
<li><label id="item30" class="editable"></label>
   <select name="item30_anzahl"> 
  <?php
for ($x = 0; $x <= 50; $x++) {
    echo "<option value='$x'>$x</option>";
}
?>
 </select> x  
    <input  id="p_item30" type='text' name="item30_preis" class="comma"> = 
<input id="p_item30_whole" type='text' class="comma5" readonly> &#8364;</li>
<li><label id="item31" class="editable"></label>
     <select name="item31_anzahl"> 
<?php
for ($x = 0; $x <= 50; $x++) {
    echo "<option value='$x'>$x</option>";
}
?>
 </select> x  
    <input id="p_item31"  type='text' name="item31_preis" class="comma"> = 
<input id="p_item31_whole" type='text' class="comma5" readonly> &#8364;</li>
<li><label id="item32" class="editable"></label>
    <select name="item32_anzahl"> 
<?php
for ($x = 0; $x <= 50; $x++) {
    echo "<option value='$x'>$x</option>";
}
?>
 </select> x  
    <input  id="p_item32" type='text' name="item32_preis" class="comma"> = 
<input id="p_item32_whole" type='text' class="comma5" readonly> &#8364;</li>
<li><label id="item33">KarteiKiste</label >
     <select name="item33_anzahl"> 
<?php
for ($x = 0; $x <= 50; $x++) {
    echo "<option value='$x'>$x</option>";
}
?>
 </select> x 
    <input  id="p_item33" type='text' name="item33_preis" class="comma"> = 
<input id="p_item33_whole" type='text' class="comma5" readonly> &#8364;</li>
<!--adding new-->


<?php
for ($x = 34; $x <= 49; $x++) {
    echo "<li><label id='item";
    echo $x;
    echo"'>newitems</label>";
    echo "     <select name='item";
    echo $x;
    echo "_anzahl'>";
    
    
    for ($xx = 0; $xx <= 50; $xx++) { echo "<option value='$xx'>$xx</option>"; }


    echo " </select> x  <input  id='p_item".$x."' type='text' name='item".$x."_preis' class='comma'> = <input id='p_item".$x."_whole' type='text' class='comma5' readonly> &#8364;</li>";
}
?>

 
 


<!--adding new-->
</ul>
    </div> <!--ulRight-->
    
    
<div id="bottom">
    <ul>     
<li><label><u>Lieferschein/Rechnung</u></label></li>
<li class="newLr"><label  id="newLrName"  >neuer L/R name</label>
<input  type='text' id="theNewLrName"  placeholder="Name">
<p id='error2Lr'> exisitiert bereits.</p><p id='erfolgLr2'>wurde gespeichert</p></li>
<li class="newLr"><button type="button" id='okLr'>ok</button>&nbsp;&nbsp;<button type="button" id='cancelLr'>cancel</button>&nbsp;&nbsp; <p id="theNewLrName_error">Der Neue Name Scheint falsch zu sein.</p><p id='erfolgLr'>Den text anpassen und "save" anclicken um den neuen Text zu speichern.</p>
 </li>

<li class="newLr"><hr></li>

<li><input type="radio" name="lr" value="l" id="l">L&nbsp;&nbsp; 
    <input type="radio" name="lr" value="r" id="r">R</li>

<li><input id="theLrName" type="text" placeholder="L/R"  disabled>&nbsp;&nbsp;&nbsp;&nbsp;
<input id="lrName" data-lrName="" name="lrName" type="text" placeholder="L/R-Name" class='findMe'>&nbsp;&nbsp;
<button type="button" id='delLr'>&nbsp;del&nbsp;</button>&nbsp;&nbsp;
<button type="button" id='neueLr'>neue</button>&nbsp;&nbsp;
<button type="button" id='saveLr'>save</button></li>
<li> 
    <p id='erfolgLr3'>wurde gespeichert.</p>
    <p id='erfolgLr4_error'>error 4.</p>
    <p id='erfolgLr3_error'>error 3.</p> </li>
</li>
<li><textarea  name="myTextAreaLr" rows="8" cols="150" id="myTextAreaLr"></textarea></li>
<li> <p id="myTextAreaLr_error">Der Neue Name Scheint falsch zu sein.</p></li>
<li><label><u>Normal/Buch</u></label>
    <input type="radio" name="nb" value="0" id="normal"   >Normal&nbsp;&nbsp; 
    <input type="radio" name="nb" value="1" id="buch">Buch</li>
   <li>&nbsp;&nbsp;</li>
   <li><label><u>Porto</u></label>
    <input type="radio" name="porto" value="0" id="portoFrei" disabled>Frei&nbsp;&nbsp; 
    <input type="radio" name="porto" value="1" id="porto250" disabled>2,50 Euro&nbsp;&nbsp; 
    <input type="radio" name="porto" value="2" id="porto600" disabled>6,00 Euro&nbsp;&nbsp; 
   <input type="text" name="porto" value="" id="portoGewuenscht" placeholder="gewünscht portovalue">Euro&nbsp;&nbsp;
   <input type="button" value="auto" id="reset">&nbsp;&nbsp;
    <input type="button" value="ok" id="okPorto">&nbsp;&nbsp;
   </li>
   <li>&nbsp;&nbsp;</li>
   <li>
                                       <label><u>Preis:</u> </label><input type="text" name="thePrice"  id="price_thePrice"  disabled readonly> € 
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label id='price_the7Label'>  <span class='new7'>- </span>% aus:</label><input type="text" name="price_the7"  id="price_the7"  readonly disabled> = <input type="text" name="price_the7Done"  id="price_the7Done"  readonly disabled> €
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label id='price_the19Label'> <span class='new19'>- </span>% aus:</label><input type="text" name="price_the19"  id="price_the19"  readonly disabled> = <input type="text" name="price_the19Done"  id="price_the19Done"  readonly disabled> €
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" id='price_thePortoLabel' readonly disabled><b>% aus:</b> <input type="text" name="price_thePorto"  id="price_thePorto"  readonly disabled> = <input type="text" name="price_thePortoDone"  id="price_thePortoDone"  readonly disabled> €
   </li>
 <li><label id='price_theTotalLabel'><u>Preis in Total:</u> </label><input type="text" name="price_theTotal"  id="price_theTotal"  disabled readonly> € </li>
   <li>&nbsp;&nbsp;</li>

</ul> 
</div>

    </form></div><!--ac-->
    
 

    <h3 class="op">Rechnung Vorschau <input type='button' value="reset layout" id='resetLayout'></buton></h3>
<div class="ac" id="vorschau">
<div class='vorschauBack' id="vorschauBack1"><img  src="img/rechnung-empty.jpg"></div>
<div class='vorschauBack' id="vorschauBack2" style=" ">
     <div class="backPix"><img src="img/rechnung-white.jpg" style="width:794px; height:100px;"></div>
        <div class='letter'>
         <div id='klausAdress'>
          <p>Bridgeclub Berlin e.V.</p>
          <p>Klaus Maa&szlig;</p>
          <p>Sportplatzweg 8</p>
          <p>31840 Hessisch Oldendorf</p>
          <p>☏ 05152.7800570</p>
          <p>0152.53213926</p>
          <p>post@bridgeverein.de</p>
          <p>www.bridgeverein.de</p>
          <p>&nbsp;</p>
          <p>Steuernummer 27/66153822</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>Berlin, <span id="letter_theDate">13 Mai 2015</span></p>
           
          
          </div>
             <div id='buchsendung'>
          <p class="bold">Büchersendung</p>
          </div>  
            <div id='klausAdress2'>
          <p>Bridgeclub Berlin e.V. - Klosterhof 33 - 82401</p>
          </div>
                
              <div id='zusender'>
              <p><span id="letter_titel">titel</span>
              <span id="letter_vorname">vorname</span>
             <span id="letter_name">name</span>
             
          <p><span id="letter_institution">institution</span></p>
           <p> <span id="letter_anschrift">anschrift</span></p>
           <p> <span id="letter_plz">plz</span> <span id="letter_ort">ort</span></p>
              
          </div>  
           
            <div id='letter_theStorno'>
          <p><span id="letter_theRechnung"></span></p></div>
          
               <div id='rechnungLernkarte'>
          <p><span id="letter_lr"></span>Lernkarten <span id="letter_theRechnung">XXX</span></p>
          <p>Kunden Nr: <span id="letter_kundenNummer">XXX</span></p>
          </div>    
             
          <div id='sehrGeherte'>
          
 
</div> 
            
 
  
   <div id='sehrGeherte_2'>
     
   </div>
    <div id='sehrGeherte_3'>
       
   </div>        
   </div>          
</div>  <!--lettrer--> 


       
     

     
  </div><!--ac-->
  <div style="clear:both"></div>
  <h3 class="op" id="printLast">Rechnung Print herstellen</h3>
  
  <div class="ac" id="herstellen">
      <ul><li><button type="button"  id="printMe">click DRUCKEN</button></li></ul>
    
  </div>
  
 </div>
    
    
</div><!--center-->
</body>

</html>