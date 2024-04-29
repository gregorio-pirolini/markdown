//jQuery.noConflict(); //$ freigegeben
jQuery(document).ready(function($){
    
    
     $.get("php/letzteRechnungen.php?", function(data, status){
         console.log(data+','+ status);
           var post = $.parseJSON( data); 
           var table="<table>";
                    table+= '<tr>';
                    
                    table+='<td><b>Bestellung Id</b></td>';
                    table+='<td><b>Rechnungs Nummer</b></td>';
                    table+='<td><b>Datum</b></td>';
                    table+='<td><b>Kunden Id</b></td>';
                    table+='<td><b>Name</b></td>';
                    table+='<td><b>Vorname</b></td>';
                    table+='<td><b>Straße</b></td>';
                     table+='<td><b>Ort</b></td>';
                     table+='<td><b>Titel</b></td>';
                     table+='<td><b>Mob</b></td>';
                      table+='<td><b>Tel</b></td>';
                      table+='<td><b>E-mail</b></td>';
                     table+='</tr>'
                    
                    
                    
                            $.each(post, function(i, field){
                            table+="<tr>";
                             
                            table+='<td>'+field.bId+'</td>';
                             table+='<td>'+field.rechnungsNummer+'</td>';
                            table+='<td>'+field.datum+'</td>';
                            table+='<td>'+field.kId2+'</td>';
                            table+='<td>'+field.name+'</td>';
                           table+='<td>'+field.vorname+'</td>';
                           table+='<td>'+field.strasse+'</td>';
                           table+='<td>'+field.ort+'</td>';
                           table+='<td>'+field.titel+'</td>';
                           table+='<td>'+field.mob+'</td>';
                           table+='<td>'+field.tel+'</td>';
                           table+='<td>'+field.email+'</td>';
                            table+="</tr>";
                            });
         
         table+="</table>";
         $('#geschikte').append(table);
     });
    
    
 
     
});
