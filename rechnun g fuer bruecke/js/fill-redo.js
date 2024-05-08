jQuery.noConflict(); //$ freigegeben
jQuery(document).ready(function ($) {
  //layout add up
  let splitP = []; // the info text
  let firstTable = []; // the items
  let secondTable = []; // the porto
  let lastP = []; // the greetings and last sentance
  let pages = [{}]; // Initialize array of objects for pages to build

  //corona ad up
  const $normalerProzent = [7, 19];
  const $coronaProzent = [5, 16];
  let $prozent = [];

  let $winwidth; //check for banner
  let totalItems; //number of items
  let totalKk; //number of kk
  let totalItemsPreis = 0; //number of items
  let totalKkPreis = 0; //number of kk
  let itemsToSave = []; //items to save
  let biggerPreis;
  let myPost = []; //??
  let x; //??

  //! Define start and end timestamps for the coronavirus period
  function calculateprozent(datum) {
    const startCorona = 1593554399; // Represents the start of the coronavirus period
    const endCorona = 1609455600; // Represents the end of the coronavirus period

    // Send a POST request to the server with the provided date
    $.post("php/mktime.php", { datum: datum }, function (data) {
      // Parse the received data into an integer representing Unix timestamp
      $datumtoUnix = parseInt(data);

      // Check if the received date falls within the coronavirus period
      if ($datumtoUnix > startCorona && $datumtoUnix < endCorona) {
        // If yes, set percentage values to those during the coronavirus period
        $prozent = $coronaProzent;
      } else {
        // If no, set percentage values to normal values
        $prozent = $normalerProzent;
      }

      // Update the text content of elements with the calculated percentage values
      $(".new7").text($prozent[0]); // Update element with class .new7
      $(".new19").text($prozent[1]); // Update element with class .new19
    });
  }

  //! Autofill ITEMS Names from DB
  function autofill_ITEMS_Names_from_DB() {
    // Fetch JSON data from PHP script to retrieve items names list
    $.getJSON(
      "php/items_names_list.php",
      function (data) {
        // Iterate through each item in the retrieved JSON data
        $.each(data, function (idx, obj) {
          // Log function invocation for debugging purposes
          console.log("function autofill_ITEMS_Names_from_DB()");

          // Extract item name and corresponding element ID
          let valItem = obj.iName;
          let items = "#item" + obj.iId;

          // Set the text content of the element with the extracted element ID to the item name
          $(items).text(valItem);
        }); // End of $.each loop
      } // End of anonymous function for handling data retrieval
    ); // End of $.getJSON function
  } // End of autofill_ITEMS_Names_from_DB function

  //! << empty AllData
  function emptyAllData() {
    console.log("fName function emptyAllData()");
    removeKundentDaten();
    removePriceNameAndValue();
  }

  function alertUser(message) {
    alert(message);
  }

  function removePriceNameAndValue() {
    $("#preisName").val("");
    $(".comma").val("");
    $("#preisName").attr("data-preislistename", "");
  }
  function removeKundentDaten() {
    $("#kundenFill_kundenNummer").val("");
    $("#kundenFill_institution").val("");
    $("#kundenFill_titel").val("");
    $("#kundenFill_name").val("");
    $("#kundenFill_vorname").val("");
    $("#kundenFill_anschrift").val("");
    $("#kundenFill_plz").val("");
    $("#kundenFill_ort").val("");
    document.getElementById("kundenFill_sexM").checked = false;
    document.getElementById("kundenFill_sexW").checked = false;
    document.getElementById("kundenFill_sexU").checked = false;
    $("#kundenFill_email").val("");
    $("#kundenFill_mob").val("");
    $("#kundenFill_tel").val("");
    $("#myTextArea").val("");
  }
  //! empty AllData >>

  function removeLR() {
    console.log("fName: function removeLR()");
    $("#lrName").attr("data-lrName", "");
    $("#myTextAreaLr").val("");
    $("#theLrName").val("");
    $("#lrName").val("");
  }

  function removeKudenFinden() {
    //removeKudenFinden
    console.log("fName function removeKudenFinden()");
    $("#kundenBestellungNummer h3 form ul li input").val("");
    $(".provisoryButtons").parent().remove();
    $(".provisoryButtons_2").parent().remove();
  }

  function removeErr() {
    console.log("fName function removeErr()");
    $(".error").hide();
    $('#kundenForm input[type="text"]').css("background-color", "white");
  }

  function removeLetter(from) {
    console.log("removeLetter", from);
    $("[id^=letter_]").text("");
    $("#sehrGeherte_2").html("");
    $("#sehrGeherte_3").html("");
    $("#letter_table tr").remove();
  }

  //NEUEn KUNDE EINTRAGEN$
  $("body").on("click", "#Neuen_Kunden_Eintragen", function () {
    console.log("fName: 'click', '#Neuen_Kunden_Eintragen");
    $("#theStorno").val("");
    removeLetter("#Neuen_Kunden_Eintragen");
    $("#rechnung").attr("data-bid", "");
    emptyAllData();
    removeKudenFinden();
    removeErr();
    removeLast();
    $("#preisName").attr("data-preislisteName", 1);
    $("#preisName").val("Normale");
    completePrice("Normale");
  });

  function testString(regex, string) {
    console.log("fName testString(regex,string)");
    //    console.log('testString '+string);
    if (regex === "onlyLetters") {
      regex =
        /^[a-zA-ZùúûüÿäàáâæçéèêëïîíôœìöòóùñçğıİşÙÚÛÜŸÀÄÁÂÆÇÉÈÊËÏÎÍÔÖŒÌÒÓÙÑÇß'\-\s]+$/;
    } else if (regex === "address") {
      regex =
        /^[a-zA-ZùúûüÿäàáâæçéèêëïîíôœìòöóùñçğıİşÙÚÛÜŸÀÄÁÂÆÇÉÈÊËÏÎÍÔÖŒÌÒÓÙÑÇß0-9'_\.\-\s\,]+$/;
    } else if (regex === "tel") {
      regex = /^[0-9+()\-\/\.\s]+$/;
    } else if (regex === "email") {
      regex =
        /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    } else if (regex === "comment") {
      regex =
        /^[a-zA-ZùúûüÿäàáâæçéèêëïîíôœìòöóùñçğıİşÙÚÛÜŸÀÄÁÂÆÇÉÈÊËÏÎÍÔÖŒÌÒÓÙÑÇß0-9+€()<>!?:/;'_\.\-\s\,]+$/;
    }

    if (!regex.test(string)) {
      return 1;
    } else {
      return 0;
    }
  }

  function cap(text) {
    //make to Uppercase
    console.log("fName: cap(text)");

    let res = text.substring(0, 4);
    //alert (res);
    if (res !== "von ") {
      return text.substr(0, 1).toUpperCase() + text.substr(1);
      //$("#"+id).val('');
    } else {
      return (
        text.substr(0, text.indexOf(" ") + 1) +
        text.substr(text.indexOf(" ") + 1, 1).toUpperCase() +
        text.substr(text.indexOf(" ") + 2)
      );
    }
  }
  function markFaulty(id) {
    console.log("fName: function markFaulty(id)");
    console.log("markFaulty");
    //$("#"+id).val('');
    $("#" + id).css("background-color", "pink");
  }

  function writeFaulty(id, mess) {
    console.log("fName: function writeFaulty(id, mess)");
    $("#" + id + "_error").html("<p>" + mess + "</p>");
    $("#" + id + "_error").show();
    $("#" + id + "_error").css("margin-top", 0);
  }

  function checkValues() {
    console.log("fName: function checkValues()");
    let err = [];
    let errEmpty = [];
    let write = [];
    write[0] = "Institution: bitte nur Buchstaben";
    write[1] = "Titel: bitte nur Buchstaben";
    write[2] = [];
    write[2][0] = "Name: darf nicht leer bleiben";
    write[2][1] = "Name: bitte nur Buchstaben";
    write[3] = [];
    write[3][0] = "Vorname: darf nicht leer bleiben";
    write[3][1] = "Vorname: bitte nur Buchstaben";
    write[4] = [];
    write[4][0] = "Anschrift: darf nicht leer bleiben";
    write[4][1] = "Anschrift: bitte nur Buchstaben und Zahl und '_ . - ,";
    write[5] = [];
    write[5][0] = "PLZ: darf nicht leer bleiben";
    write[5][1] = "PLZ: bitte nur Buchstaben und Zahl und '_ . - ,";
    write[6] = [];
    write[6][0] = "Ort: darf nicht leer bleiben";
    write[6][1] = "Ort: bitte nur Buchstaben und Zahl und '_ . - ,";
    write[7] = "Mann oder Frau bitte anclicken";
    write[8] = "Email: scheint falsch zu sein";
    write[9] = "Tel: scheint falsch zu sein";
    write[10] = "Mob: scheint falsch zu sein";
    write[11] = "Bemerkung: scheint falsch zu sein";
    let kundenFill_kundenNummer,
      kundenFill_institution,
      kundenFill_titel,
      kundenFill_name;
    let kundenFill_vorname,
      kundenFill_anschrift,
      kundenFill_plz,
      kundenFill_ort;
    let kundenFill_sex,
      kundenFill_email,
      kundenFill_mob,
      kundenFill_tel,
      myTextArea;

    kundenFill_kundenNummer = $.trim($("#kundenFill_kundenNummer").val());
    kundenFill_institution = $.trim($("#kundenFill_institution").val());
    kundenFill_titel = $.trim($("#kundenFill_titel").val());
    kundenFill_name = $.trim($("#kundenFill_name").val());
    kundenFill_vorname = $.trim($("#kundenFill_vorname").val());
    kundenFill_anschrift = $.trim($("#kundenFill_anschrift").val());
    kundenFill_plz = $.trim($("#kundenFill_plz").val());
    kundenFill_ort = $.trim($("#kundenFill_ort").val());
    kundenFill_sex = $("input[name='sex']:checked").val();
    kundenFill_email = $.trim($("#kundenFill_email").val());
    kundenFill_mob = $.trim($("#kundenFill_mob").val());
    kundenFill_tel = $.trim($("#kundenFill_tel").val());
    myTextArea = $.trim($("#myTextArea").val());

    $("#kundenFill_institution").val(cap(kundenFill_institution));
    $("#kundenFill_titel").val(cap(kundenFill_titel));
    $("#kundenFill_name").val(cap(kundenFill_name));
    $("#kundenFill_vorname").val(cap(kundenFill_vorname));
    $("#kundenFill_anschrift").val(cap(kundenFill_anschrift));
    $("#kundenFill_plz").val(cap(kundenFill_plz));
    $("#kundenFill_ort").val(cap(kundenFill_ort));
    $("#kundenFill_mob").val(cap(kundenFill_mob));
    $("#kundenFill_tel").val(cap(kundenFill_tel));
    $("#myTextArea").val(cap(myTextArea));

    if (kundenFill_institution.length > 0) {
      if (testString("address", kundenFill_institution) > 0) {
        //doesnt match
        markFaulty("kundenFill_institution");
        err.push("kundenFill_institution");
        writeFaulty("kundenFill_institution", write[0]);
        console.log(err);
      }
    }

    if (kundenFill_titel.length > 0) {
      if (testString("address", kundenFill_titel) > 0) {
        //doesnt match
        markFaulty("kundenFill_titel");
        err.push("kundenFill_titel");
        writeFaulty("kundenFill_titel", write[1]);
        console.log(err);
      }
    }

    if (kundenFill_name.length < 1) {
      markFaulty("kundenFill_name");
      errEmpty.push("kundenFill_name empty");
      writeFaulty("kundenFill_name", write[2][0]);
      console.log(errEmpty);
      //doesnt match
    } else {
      if (testString("onlyLetters", kundenFill_name) > 0) {
        //doesnt match
        markFaulty("kundenFill_name");
        err.push("kundenFill_name");
        writeFaulty("kundenFill_name", write[2][1]);
        console.log(err);
      }
    }

    if (kundenFill_vorname.length < 1) {
      markFaulty("kundenFill_vorname");
      errEmpty.push("kundenFill_vorname empty");
      writeFaulty("kundenFill_vorname", write[3][0]);
      console.log(errEmpty);
      //doesnt match
    } else {
      if (testString("onlyLetters", kundenFill_vorname) > 0) {
        //doesnt match
        markFaulty("kundenFill_vorname");
        err.push("kundenFill_vorname");
        writeFaulty("kundenFill_vorname", write[3][1]);
        console.log(err);
      }
    }

    if (kundenFill_anschrift.length < 1) {
      markFaulty("kundenFill_anschrift");
      errEmpty.push("kundenFill_anschrift empty");
      writeFaulty("kundenFill_anschrift", write[4][0]);
      console.log(errEmpty);
      //doesnt match
    } else {
      if (testString("address", kundenFill_anschrift) > 0) {
        //doesnt match
        markFaulty("kundenFill_anschrift");
        err.push("kundenFill_anschrift");
        writeFaulty("kundenFill_anschrift", write[4][1]);
        console.log(err);
      }
    }

    if (kundenFill_plz.length < 1) {
      markFaulty("kundenFill_plz");
      errEmpty.push("kundenFill_plz empty");
      writeFaulty("kundenFill_plz", write[5][0]);
      console.log(errEmpty);
      //doesnt match
    } else {
      if (testString("address", kundenFill_plz) > 0) {
        //doesnt match
        markFaulty("kundenFill_plz");
        err.push("kundenFill_plz");
        writeFaulty("kundenFill_plz", write[5][1]);
        console.log(err);
      }
    }

    if (kundenFill_ort.length < 1) {
      markFaulty("kundenFill_ort");
      errEmpty.push("kundenFill_ort empty");
      writeFaulty("kundenFill_ort", write[6][0]);
      console.log(errEmpty);
      //doesnt match
    } else {
      if (testString("address", kundenFill_ort) > 0) {
        //doesnt match
        markFaulty("kundenFill_ort");
        err.push("kundenFill_ort");
        writeFaulty("kundenFill_ort", write[6][1]);
        console.log(err);
      }
    }

    if (!kundenFill_sex) {
      errEmpty.push("kundenFill_sex empty");
      writeFaulty("kundenFill_sex", write[7]);
      console.log(errEmpty);
      //doesnt match
    }

    if (kundenFill_mob.length > 0) {
      if (testString("tel", kundenFill_mob) > 0) {
        //doesnt match
        markFaulty("kundenFill_mob");
        err.push("kundenFill_mob");
        writeFaulty("kundenFill_mob", write[9]);
        console.log(err);
      }
    }

    if (kundenFill_tel.length > 0) {
      if (testString("tel", kundenFill_tel) > 0) {
        //doesnt match
        markFaulty("kundenFill_tel");
        err.push("kundenFill_tel");
        writeFaulty("kundenFill_tel", write[10]);
        console.log(err);
      }
    }

    if (kundenFill_email.length > 0) {
      if (testString("email", kundenFill_email) > 0) {
        //doesnt match
        markFaulty("kundenFill_email");
        err.push("kundenFill_email");
        writeFaulty("kundenFill_email", write[8]);
        console.log(err);
      }
    }

    if (myTextArea.length > 0) {
      if (testString("comment", myTextArea) > 0) {
        //doesnt match
        markFaulty("myTextArea");
        err.push("myTextArea");
        writeFaulty("myTextArea", write[11]);
        console.log(err);
      }
    }

    err = err.concat(errEmpty);
    if (err.length < 1) {
      return 0;
    } else {
      return 1;
    }
    //console.log("---------------------------");
    //console.log("-------------err------------");
    //console.log(err);
    //console.log("---------------------------");
    //console.log("-------------errlength------------");
    //console.log(err.length);
  } //checkValues

  function removeLast() {
    console.log("fName: function removeLast()");

    $("input:radio").removeAttr("checked");
    $("#portoGewuenscht").val("");
    $("#thePrice").val("");
    $("#theLrName").val("");
    $("#theRechnung").val("");
    $("#myTextAreaLr").val("");
    $("#theDate").val("");
    $("#lrName").val("");
    $(".comma5").val("");
    $("input[type=text][id^=price_]").val("");
    $("input[type=text]").css("background-color", "white");
    $(".error").hide();
    $('select[name$="_anzahl"] ').val(0);
    $("p[id^=erfolg]").css("visibility", "hidden");
    $(".newLr").hide();
    $(".provisoryButtons").parent().remove();
    $(".provisoryButtons_2").parent().remove();
    $(".provisoryButtonsHr").remove();
  }

  function newLoadButtons(data) {
    console.log("fName: function newLoadButtons(data)");
    //console.log(data);
    //console.log(data[0]);
    $(".provisoryButtons").parent().remove();
    $(".provisoryButtons_2").parent().remove();
    $(".provisoryButtonsHr").remove();
    //$.each( obj, function( key, value ) {
    //  alert( key + ": " + value );
    //});
    $.each(data, function (key, value) {
      let newButton;
      newButton =
        '<li id="li' +
        data[key]["kId"] +
        '"><button class="provisoryButtons" id="kunden_finden' +
        data[key]["kId"] +
        '" type="button">K-Nr#' +
        data[key]["kId"] +
        ", " +
        data[key]["vorname"] +
        " " +
        data[key]["name"] +
        ", " +
        data[key]["strasse"] +
        ' Daten Laden</button></li><li class="provisoryButtonsHr"><hr></li>';
      $("#kundenBestellungNummer h3 form ul").append(newButton);

      ////get rechnungen Daten
      $.getJSON(
        "php/loadFromKundenNummer.php",
        "find=rechnungen&suche=" + data[key]["kId"],
        function (data2) {
          // console.log(data2);
          $.each(data2, function (idx, obj) {
            //console.log(items);
            //console.log(valItem);
            let newButton_2;
            let stat = "";
            if (obj.stat < 1) {
              stat = "storno";
            }
            newButton_2 =
              '<li><button class="provisoryButtons_2" id="rechnung_finden' +
              obj.bId +
              '" type="button">' +
              stat +
              "Rechnung Nr#" +
              obj.rechnungsNummer +
              " von " +
              obj.datum +
              " laden</button></li>";
            $("#li" + data[key]["kId"]).append(newButton_2);
          }); //each
        }
      ); //$.getJSON
    }); //each
  } //newloadbuttons

  function loadFromKundenNummer() {
    console.log("fName:  function loadFromKundenNummer()");
    let findKundenFromKundenNummer = $("#loadFromKundenNummer").val();
    console.log(findKundenFromKundenNummer);
    if (findKundenFromKundenNummer.length > 3) {
      //     alert(findKundenFromKundenNummer);
      $.getJSON(
        "php/loadFromKundenNummer.php",
        "find=kunden&suche=" + findKundenFromKundenNummer,
        function (data) {
          //JSON holen
          if (data === "nicht gefunden") {
            alertUser(findKundenFromKundenNummer + " wurde nicht gefunden");
          } else {
            console.log("ok");
            newLoadButtons(data);
          }
        }
      ); //getJson
    } //if
  } //loadFromKundenNummer

  function loadFromAlteKundenNummer() {
    console.log("fName: function loadFromAlteKundenNummer()");
    let findKundenFromKundenNummer = $("#rechnungsNummer").val();
    console.log(findKundenFromKundenNummer);
    //     alert(findKundenFromKundenNummer);
    $.getJSON(
      "php/loadFromKundenNummer.php",
      "find=alteNummer&suche=" + findKundenFromKundenNummer,
      function (data) {
        //JSON holen
        if (data === "nicht gefunden") {
          alertUser(findKundenFromKundenNummer + " wurde nicht gefunden");
        } else {
          //alert('am ok')
          newLoadButtons(data);
        }
      }
    );
  } //loadFromKundenNummer

  function loadFromBestellungNummer() {
    console.log("fName: function loadFromBestellungNummer()");
    let loadFromBestellungNummer = $("#loadFromBestellungNummer").val();
    console.log(loadFromBestellungNummer);
    if (loadFromBestellungNummer.length > 3) {
      //     alert(findKundenFromKundenNummer);
      $.getJSON(
        "php/loadFromKundenNummer.php",
        "find=bestellungNummer&suche=" + loadFromBestellungNummer,
        function (data) {
          //JSON holen
          if (data === "nicht gefunden") {
            alertUser(loadFromBestellungNummer + " wurde nicht gefunden");
          } else {
            console.log("ok");
            newLoadButtons(data);
          }
        }
      );
    } //if
  } //load from BestellungNUMMER

  //load from Email
  function loadFromEmail() {
    console.log("fName: function loadFromEmail()");
    let email = $("#email").val();
    console.log(email);
    //     alert(findKundenFromKundenNummer);
    $.getJSON(
      "php/loadFromKundenNummer.php",
      "find=email&suche=" + email,
      function (data) {
        //JSON holen
        if (data === "nicht gefunden") {
          alertUser(email + " wurde nicht gefunden");
        } else {
          console.log("ok");
          newLoadButtons(data);
        }
      }
    );
  } //load from Email

  //load FromName und address
  function loadFromNameAndAddress() {
    console.log("fName: function loadFromNameAndAddress()");
    let name = $("#name").val();
    //check if all ok
    let err = [];
    if (name.length < 1) {
      err.push(" Name");
      $("#name").css("background-color", "pink");
    }
    if (err.length > 0) {
      alertUser("Error" + err + " bitte eintragen.");
    } else {
      $.getJSON(
        "php/loadFromKundenNummer.php",
        "find=strasse&name=" + name,
        function (data) {
          //JSON holen
          if (data === "nicht gefunden") {
            alertUser(name + " wurde nicht gefunden");
          } else {
            console.log("name ok");
            newLoadButtons(data);
          }
        }
      ); //$.getJSON
    }
  } //load FromName und address

  function loadbestellungNew(x) {
    alert("fName: function loadbestellungNew(x)");

    removeLetter("loadbestellungNew");
    resetLetterDiv();

    $("input[type=text][id^=price_]").val("");
    $("input:radio").removeAttr("checked");
    $("input[type=text]").css("background-color", "white");
    $(".error").hide();
    $("p[id^=erfolg]").css("visibility", "hidden");
    $(".newLr").hide();
    $.getJSON("php/loadBestellung.php", "bestellung=" + x, function (data) {
      $("#rechnung").attr("data-bid", data[0].bId);
      $("#preisName").attr("data-preislisteName", data[0].preislisteName);
      $("#lrName").attr("data-lrName", data[0].lr);
      $("#theRechnung").val(data[0].rechnungsNummer);
      $("#letter_theRechnung").text(data[0].rechnungsNummer);
      $("#thePrice").val(data[0].preis);
      calculateprozent(data[0].datum);
      $("#theDate").val(data[0].datum);
      let germanDate = MARS(data[0].theDate);
      $("#letter_theDate").text(germanDate);

      $("#preisName").val(data[0].preisName);
      if (data[0].stat < 1) {
        $("#theStorno").val("STORNIERT");
        $("#letter_theStorno").text("STORNIERT");
      } else {
        $("#theStorno").val("");
        $("#letter_theStorno").text("");
      }

      loadNb(data[0].buecher);
      loadPorto(data[0].portoGewuenscht, data[0].porto);
      fillKunden(data[0].kId2, "rechnung");
      loadLr(data[0].lrName, data[0].lrName.charAt(0));

      let myNewArray = [];
      for (let i = 1; i < 50; i++) {
        let itemPrefix = "data[0].item_";
        let item = itemPrefix + i;
        let tr = "<tr id='letter_tr_" + i + "'>";
        //   console.log(eval(item) );
        //   $('#preisName').val(data[0].preisName);
        //  console.log( 'data[0].item_'+i);
        let name = "item" + i + "_anzahl";
        //   if(i==1){alert(eval(item));};
        $('select[name="' + name + '"]').val(eval(item));
        //  let valItem = $('#p_item'+i).val();
        if (eval(item) > 0) {
          console.log("adding");
          myNewArray.push(i);
          //        $.getJSON('php/price.php','price='+data[0].preisName+'&i='+i,function(data){
          tr +=
            "<td class='td0' ><p class='bold' style='text-align:right' ><span id='letter_item" +
            i +
            "_anzahl'>" +
            eval(item) +
            "</span></p></td>";
          tr +=
            "<td class='td1' ><p class='bold'>&nbsp;St&uuml;ck Kartens&auml;tze</p></td>";
          tr +=
            "<td class='td2'><p class='bold'><span id='letter_item" +
            i +
            "_anzahl_name' style='font-size: 9pt'>name</span></p></td>";
          tr +=
            "<td class='td3a'><p class='bold' style='text-align:right'>à </p></td>";
          tr +=
            "<td class='td3b'><p class='bold' style='text-align:right'><span id='letter_item" +
            i +
            "_anzahl_preis'>preis</span> €</p></td>";
          tr +=
            "<td class='td3' align='right'><p class='bold' style='text-align:right'><span id='letter_item" +
            i +
            "_anzahl_whole'>preis whole</span> €</p></td>";
          tr += "</tr>";
          $("#letter_table").append(tr);
        } //if
      } //for
      //console.log('My myNewArray:' + myNewArray);

      let aArray = JSON.stringify(myNewArray);
      //console.log(aArray);

      $.getJSON(
        "php/price.php",
        "price=" + data[0].preisName + "&i=" + aArray,
        function (data) {
          console.log("1 april: " + data);
          $.each(data, function (i, field) {
            $("#letter_item" + data[i].iId + "_anzahl_name").text(data[i].name);

            $("#letter_item" + data[i].iId + "_anzahl_preis").text(
              Number(data[i].preis).toFixed(2).replace(".", ",")
            );
            let calculate = $("#letter_item" + data[i].iId + "_anzahl").text();
            //  console.log ( Number(calculate)*Number(data[i].preis) );
            $("#letter_item" + data[i].iId + "_anzahl_whole").text(
              (Number(calculate) * Number(data[i].preis))
                .toFixed(2)
                .replace(".", ",")
            );
          }); //each
        }
      ); //$.getJSON

      completePrice(data[0].preisName);
    }); //getjson loadbestellung php
  } //function loadbestellung

  function MARS(x) {
    let xx;
    if (x.indexOf("January") > -1) {
      xx = x.replace("January", "Januar");
    } else if (x.indexOf("February") > -1) {
      xx = x.replace("February", "Februar");
    } else if (x.indexOf("March") > -1) {
      xx = x.replace("March", "März");
    } else if (x.indexOf("Mai") > -1) {
      xx = x.replace("Mai", "Mai");
    } else if (x.indexOf("June") > -1) {
      xx = x.replace("June", "Juni");
    } else if (x.indexOf("July") > -1) {
      xx = x.replace("July", "Juli");
    } else if (x.indexOf("October") > -1) {
      xx = x.replace("October", "Oktober");
    } else {
      xx = x;
    }

    return xx;
  }

  function emptyItems() {
    console.log("fName: function emptyItems()");
    $('select[name$="_anzahl"] ').val(0);
  } //emptyitems

  function fillKunden(x, type) {
    console.log("fName: function fillKunden(x, type)");
    if (type === "kunden") {
      $.getJSON("php/loadKunden.php", "kunden=" + x, function (data) {
        console.log(data);
        $("#kundenFill_kundenNummer").val(x);
        $("#letter_kundenNummer").text(x);
        $("#kundenFill_institution").val(data[0].institution);
        $("#letter_institution").text(data[0].institution);
        if (data[0].institution.length < 1) {
          $("#letter_institution").parent().hide();
        } else {
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
        let xy;
        xy = data[0].mw;

        let theTitel;
        if (data[0].titel !== null) {
          theTitel = data[0].titel + " ";
        } else {
          theTitel = "";
        }
        if (xy === "1") {
          //mann
          //    alert('mann');
          document.getElementById("kundenFill_sexU").checked = false;
          document.getElementById("kundenFill_sexM").checked = true;
          document.getElementById("kundenFill_sexW").checked = false;

          $("#letter_tex").text(
            "Sehr geehrter Herr " + theTitel + data[0].name + ","
          );
        } else if (xy === "0") {
          //frau
          document.getElementById("kundenFill_sexU").checked = false;
          document.getElementById("kundenFill_sexM").checked = false;
          document.getElementById("kundenFill_sexW").checked = true;
          $("#letter_tex").text(
            "Sehr geehrte Frau " + theTitel + data[0].name + ","
          );
          //alert('frau');
        } else if (xy === "3") {
          document.getElementById("kundenFill_sexU").checked = true;
          document.getElementById("kundenFill_sexM").checked = false;
          document.getElementById("kundenFill_sexW").checked = false;
          $("#letter_tex").text("Sehr geehrte Damen und Herren,");
          //    alert('unbekannt');
        }
        //$("#kundenFill_vorname").val(data[0].vorname);
        $("#kundenFill_email").val(data[0].email);
        $("#kundenFill_mob").val(data[0].mob);
        $("#kundenFill_tel").val(data[0].tel);
        $("#myTextArea").val(data[0].bemerkung);
        $("#preisName").val(data[0].preisListeName);
        let y = data[0].preisListeName;
        $("#preisName").attr("data-preislisteName", data[0].preisId);
        completePrice(y);
        let rl = data[0].rl;
        let buecher = data[0].buecher;
        loadLr(rl);
        loadNb(buecher);
        emptyItems();
      }); //JSON holen
    } else if (type === "rechnung") {
      $.getJSON("php/loadKunden.php", "kunden=" + x, function (data) {
        //console.log(data);
        $("#kundenFill_kundenNummer").val(x);
        $("#letter_kundenNummer").text(x);
        $("#kundenFill_institution").val(data[0].institution);
        $("#letter_institution").text(data[0].institution);
        if (data[0].institution.length < 1) {
          $("#letter_institution").parent().hide();
        } else {
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
        let xy;
        xy = data[0].mw;

        let theTitel;
        if (data[0].titel !== null) {
          theTitel = data[0].titel + " ";
        } else {
          theTitel = "";
        }
        if (xy === "1") {
          //mann
          document.getElementById("kundenFill_sexU").checked = false;
          document.getElementById("kundenFill_sexM").checked = true;
          document.getElementById("kundenFill_sexW").checked = false;
          $("#letter_tex").text(
            "Sehr geehrter Herr " + theTitel + data[0].name + ","
          );
        } else if (xy === "0") {
          //frau
          document.getElementById("kundenFill_sexU").checked = false;
          document.getElementById("kundenFill_sexM").checked = false;
          document.getElementById("kundenFill_sexW").checked = true;
          $("#letter_tex").text(
            "Sehr geehrte Frau " + theTitel + data[0].name + ","
          );
        } else if (xy === "3") {
          document.getElementById("kundenFill_sexU").checked = true;
          document.getElementById("kundenFill_sexM").checked = false;
          document.getElementById("kundenFill_sexW").checked = false;
          $("#letter_tex").text("Sehr geehrte Damen und Herren,");
        }
        $("#kundenFill_email").val(data[0].email);
        $("#kundenFill_mob").val(data[0].mob);
        $("#kundenFill_tel").val(data[0].tel);
        $("#myTextArea").val(data[0].bemerkung);
      }); //JSON holen
    } //if rechnung
  } //fillKunden

  function loadNb(buecher) {
    console.log("fName: function loadNb(buecher)");
    if (typeof buecher === "undefined" || buecher === null) {
      buecher = 0;
    } else {
      if (buecher < 1) {
        $("#buchsendung").hide();
        $("#klausAdress2").show();
      } else {
        $("#buchsendung").show();
      }
    }
    $("input[name=nb]:radio:nth(" + buecher + ")").prop("checked", true);
  }

  //loadNb(buecher)

  function loadPorto(portoGewuenscht, porto) {
    document.getElementById("portoFrei").checked = false;
    document.getElementById("porto250").checked = false;
    document.getElementById("porto600").checked = false;
    if (portoGewuenscht !== null) {
      //    alert(data[0].portoGewuenscht);

      $("#portoGewuenscht").val(portoGewuenscht);
    } else $("#portoGewuenscht").val("");
  }

  function loadLr(x, y) {
    console.log(" fName:  function loadLr(x,y) ");
    if (typeof x === "undefined" || x === null) {
      x = 2;
    }
    let Y = y;
    $.getJSON("php/loadLr.php", "suche=" + x, function (data) {
      if (typeof Y === "undefined") {
        //  console.log ( 'no y: ' +  Y);
        Y = data[0].lrName.charAt(0);
        //  console.log ( 'Y: ' +  Y);
      }
      $("#lrName").attr("data-lrName", data[0].lrId);
      let myformatedText = data[0].lrText;
      let myformatedText2 = make_P(myformatedText);
      let myformatedText3 = myformatedText2 + '<span id="lastP">';
      myformatedText3 +=
        "<p>Ich bedanke mich für die Zusammenarbeit und wünsche einen schönen Tag.</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>";
      myformatedText3 +=
        "<p>Klaus Maaß </p><p>Bridgeclub Berlin e.V.</p></span>";
      //    console.log(myformatedText);
      $("#letter_myTextAreaLr").html(
        '<p id="letter_myTextAreaLr_0">' + myformatedText3
      );
      //console.log(data);
      if (isNaN(x)) {
        //alert(data[0].lrText)
        $("#myTextAreaLr").val(data[0].lrText);
        let x_ = x.indexOf("-") + 2;
        let xClean = x.substr(x_, x.length);
        $("#lrName").val(xClean);
      } else {
        //alert(data[0].lrText)
        if (data[0].lrText.length > 0) {
          $("#myTextAreaLr").val(data[0].lrText);
          console.log(x);
        }
        let x_ = data[0].lrName.indexOf("-") + 2;
        let xClean = data[0].lrName.substr(x_, data[0].lrName.length);
        $("#lrName").val(xClean);
      }

      if (Y === "L") {
        $("#theLrName").val("Lieferschein");
        $("#letter_lr").text("Lieferschein ");
        console.log("L: " + Y);
        document.getElementById("l").checked = true;
        document.getElementById("r").checked = false;
      } else if (Y === "R") {
        //alert('R: '+Y);
        $("#theLrName").val("Rechnung");
        $("#letter_lr").text("Rechnung ");
        document.getElementById("l").checked = false;
        document.getElementById("r").checked = true;
      }
    }); //getJson
    howBigNew();
  } //loadLr(x,y)

  function make_P(x) {
    // Function to replace line breaks with paragraph tags

    // Replace line breaks with a special string for identification
    let x1 = x.replace(/\n/g, "bbreakk");

    // Initialize counter for paragraph IDs
    let i = 1;

    // Loop to replace the special string with paragraph tags
    while (x1.indexOf("bbreakk") > -1) {
      let y = '</p><p id="letter_myTextAreaLr_' + i + '">';
      x1 = x1.replace("bbreakk", y);
      i++;
    }

    // Replace any empty paragraph tags with non-breaking space
    let find = "></p";
    let reg = new RegExp(find, "g");
    let x2 = x1.replace(reg, ">&nbsp;</p");

    // Add an additional non-breaking space paragraph at the end
    x2 += "<p>&nbsp;</p>";

    // Return the modified string
    return x2;
  } // End of make_P(x)

  function resetLetterDiv() {
    // Resetting letter div content

    // Adjusting CSS properties and HTML content
    console.log(".............resetLetterDiv.................");
    $("#printLast").css("margin-top", "0px");
    $("#vorschauBack2").height(1122);
    $(".vorschauBack").height(1122);
    $("#vorschauBack1").html("");
    $(".backPix").html("");

    // Replacing images with default ones
    let myImg = '<img src="img/rechnung-empty.jpg">';
    let myImg2 =
      '<img src="img/rechnung-white.jpg" style="width:794px; height:100px;" >';
    $("#vorschauBack1").html(myImg);
    $(".backPix").html(myImg2);

    // Constructing letter text content
    let myletterText = "";
    myletterText += '<p><span id="letter_tex">XXX</span></p>';
    myletterText += "<p>&nbsp;</p>";
    myletterText +=
      "<p>vielen Dank für Ihre Bestellung. Anbei erhalten Sie</p>";
    myletterText += "<p>&nbsp;</p>";
    myletterText += '<table id="letter_table" border="0">';
    myletterText += "</table>";
    myletterText += "<table >";
    myletterText += "<tr>";
    myletterText +=
      '<td class="td4"><p class="bold">Porto, Verpackung und Versand</p></td>';
    myletterText +=
      '<td class="td5"><p class="bold" style="text-align:right"><span id="letter_porto">0,00</span>  €</p></td>';
    myletterText += "</tr>";
    myletterText += "<tr>";
    myletterText += '<td colspan="4"><p class="bold">&nbsp;</p></td>';
    myletterText += "</tr>";
    myletterText +=
      '<tr><td><p class="bold">Gesamtbetrag incl.gesetzlicher Mehrwertsteuer</p></td>';
    myletterText +=
      '<td><p class="bold" style="text-align:right; text-decoration: underline;"><span id="letter_price_theTotal">x,xx</span>€</p></td></tr >';
    myletterText +=
      '<tr><td colspan="2"><p class="bold" style=" ">enthaltene USt: <span class="new7">- </span>,00 % aus <span id ="letter_price_the7">xxxx,xx</span> € = <span id="letter_price_the7Done">xxx,xx</span> € und <span class="new19">- </span>,00 % aus <span id="letter_price_the19">xxxx,xx</span> € = <span id="letter_price_the19Done">x,xx</span> € </p></td>';
    myletterText +=
      '<tr><td colspan="2"><p class="bold" style=" "> und <span id="letter_price_thePortoLabel"> xx </span>% aus <span id="letter_price_thePorto">0,00</span> € = <span id ="letter_price_thePortoDone">0,00</span> €</p></td>';
    myletterText += "</tr>";
    myletterText += "</table>";
    myletterText += '<p id="moveMe">&nbsp</p>';
    myletterText += '<span id="letter_myTextAreaLr">xxx</span>';

    // Inserting constructed letter text into specific HTML elements
    $("#sehrGeherte").html(myletterText);
    $("#sehrGeherte_2").html("");
    $("#sehrGeherte_3").html("");
  }

  function click_lrName() {
    removeLetter("click_lrName");
    $("#lrName").val("");
  }

  //$("#saveLr").click(function(){
  $("body").on("click", "#saveLr", function () {
    click_saveLr();
  }); //saveLr

  function click_saveLr() {
    removeLetter("click_saveLr");
    $(".newLr").hide("slow");
    $("#erfolgLr3").hide();
    $("#erfolgLr4_error").css("visibility", "hidden");
    $("#erfolgLr4_error").hide();
    let w = encodeURI($("#theLrName").val());
    let y = encodeURI($.trim($("#lrName").val()));
    let x = encodeURI($("#myTextAreaLr").val());
    //check comment
    //console.log(darfLR);
    if (y === "") {
      // alert('Field darf nicht leer sein');
      $("#erfolgLr3").hide();
      $("#erfolgLr3_error").html("Field darf nicht leer sein");
      $("#erfolgLr3_error").css("visibility", "visible");
      $("#lrName").css("background-color", "pink");
    } else {
      console.log(w);
      console.log(y);
      console.log(x);
      if (testString("comment", $("#myTextAreaLr").val()) > 0) {
        $("#erfolgLr4_error").show();
        $("#erfolgLr4_error").css("visibility", "visible");
        $("#erfolgLr4_error").html(
          "Der unteren Text Field enthählt verbotene characters"
        );
        $("#myTextAreaLr").css("background-color", "pink");
      } else {
        $.post(
          "php/write_lr.php",
          "lrText=" + x + "&lrName=" + y + "&lr=" + w + "&action=write",
          function (result) {
            if (result == 0) {
              let r = confirm(w + " - " + y + " Text überschreiben?");

              if (r === true) {
                $.post(
                  "php/write_lr.php",
                  "lrText=" +
                    x +
                    "&lrName=" +
                    y +
                    "&lr=" +
                    w +
                    "&action=update",
                  function (result) {
                    //alert(result)
                    $("#erfolgLr3").show();
                    $("#erfolgLr3").css("visibility", "visible");
                    //      alert(JSON.parse(result));
                    $("#erfolgLr3").html(JSON.parse(result));
                    $(".newLr").hide("slow");
                    $("#erfolgLr").hide("");
                  }
                );
              }
            } else if (result > 0) {
              $("#erfolgLr3_error").html(
                $.trim($("#lrName").val()) +
                  ' ist nicht in Database, "neu" ancliken um neue Liste zu herstellen'
              );
              $("#erfolgLr3_error").css("visibility", "visible");
            } else {
              //alert(result)
              $("#erfolgLr3").show();
              $("#erfolgLr3").css("visibility", "visible");
              $("#erfolgLr3").html(JSON.parse(result));
              $(".newLr").hide("slow");
              $("#erfolgLr").hide("");
            } //else
          }
        ); // $.post("php/write_lr.php
      } //else
    } //else
  }

  ////////////////////////////////////////////////////////////
  ////////////////////////////////////////////////////////////
  //autocomplete

  //$('.findMe').focus(function(){
  $("body").on("focus", ".findMe", function () {
    removeLetter(".findMe");
    x = $(this).attr("id");
    let minLetters = 1;
    let y = "";
    if (x === "rechnungsNummer") {
      minLetters = 2;
    }
    if (x === "loadFromBestellungNummer") {
      minLetters = 3;
    }
    if (x === "lrName") {
      let lr_choice = $("input[name='lr']:checked").val();
      //       console.log (lr_choice);
      y = "lr_choice=" + lr_choice + "&";
    }
    //console.log (x);
    $("#" + x).autocomplete({
      source: "php/complete.php?" + y + "suche=" + x,
      minLength: minLetters,
      delay: 100,
      open: function (event, el) {
        //            console.log('---klappt auf---');
      },
      focus: function (event, el) {
        //            console.log('---auf dem Element---');
        event.preventDefault();
      },
      select: function (event, el) {
        event.preventDefault();
        //            console.log('---ausgewählt---');
        //            console.log(el.item.label);
        //            console.log(el.item.value); //BS oder id
        $(this).val(el.item.label);
        if (x === "email") {
          loadFromEmail();
          removeLetter("email");
        } else if (x === "name") {
          loadFromNameAndAddress();
          removeLetter("name");
        } else if (x === "lrName") {
          removeLetter("lrName");
          loadLr(el.item.value);
        } else if (x === "rechnungsNummer") {
          loadFromAlteKundenNummer();
          removeLetter("rechnungsNummer");
        } else if (x === "preisName") {
          removeLetter("preisName");
          if (!isNaN(el.item.value)) {
            el.item.value.toString();
            alert(typeof el.item.value);
          }
          completePrice(el.item.value);
        }
      },
      search: function (event, el) {
        //            console.log('---suche---');
      },
      response: function (event, el) {
        //            console.log('---antwort---');
        //console.log(el);
      },
    });
  });
  //autocomplete

  function completePrice(x) {
    console.log("fName: function completePrice(x)");
    if (x === null) {
      x = "1";
      //  alert('NOT NULL');
    }

    if (x == "5" || x === "Frei") {
      $("#portoGewuenscht").val("");
    }
    $("input[type=text][id^=price_]").val("");
    //alert('complate price')
    $(".newList").hide("slow");
    $("#erfolg2").css("visibility", "hidden");
    $('#preislisteForm input[type="text"]').css("background-color", "white");
    //    alert('completePrice' + x);
    $.getJSON("php/complete_preise.php", "suche=" + x, function (data) {
      //JSON holen
      $("#preisName").attr("data-preislistename", data[0].preisId);
      $("#preisName").val(data[0].preisName);
      $.each(data, function (idx, obj) {
        ////      // get each object:
        // console.log(Object.keys(obj).length);
        // console.log(data.length);
        for (let i = 2; i < Object.keys(obj).length - 1; i++) {
          // console.log(obj[Object.keys(obj)[i]] );
          let valItem = obj[Object.keys(obj)[i]];
          let items = "#p_item" + (i - 1);
          let items_anzahl = i - 1;
          // console.log(items);
          $(items).val(valItem);
          preisForItems(items_anzahl, valItem);
        }
      }); //each
      total();
      twofifity(totalItems, totalKk);
    }); //Json
  }

  $("body").on("change", 'select[name$="_anzahl"]', function () {
    removeLetter('select[name$="_anzahl"]');
    $("input[type=text][id^=price_]").val("");
    for (let i = 1; i < 50; i++) {
      let valItem = $("#p_item" + i).val();
      preisForItems(i, valItem);
    }

    total();
    twofifity(totalItems, totalKk);
  });

  function total() {
    console.log("fName: function total()");
    totalItems = 0;
    totalKk = Number($('select[name="item33_anzahl"]').val());
    //console.log( 'totalKk is' + totalKk);
    //$('input[type=text][id^=price_]').val('');
    for (let i = 1; i < 33; i++) {
      totalItems += Number($('select[name="item' + i + '_anzahl"]').val());
    }

    for (let j = 34; j < 50; j++) {
      totalItems += Number($('select[name="item' + j + '_anzahl"]').val());
    }

    //console.log('totalItems:' + totalItems+ ' totalKk:' + totalKk );
  }

  function twofifity(totalItems, totalKk) {
    console.log("---------------------function twofifity(totalItems,totalKk) ");
    //  console.log('totalItems: '+ totalItems);
    //    console.log('totalKK: '+ totalKk);
    //     console.log('twofifity(totalItems,totalKk)' );

    if (
      typeof $("#portoGewuenscht").val() !== "undefined" &&
      $("#portoGewuenscht").val() !== ""
    ) {
      //    console.log('this Porto');
      $("input[name=porto]").prop("checked", false);
      $("#portoGewuenscht").val($("#portoGewuenscht").val());
      $("#price_thePorto").val(Number($("#portoGewuenscht").val()));
      $("#price_theTotal").val(
        Number($("#price_thePrice").val()) + Number($("#portoGewuenscht").val())
      );

      $("#letter_price_theTotal").text(
        Number(
          Number($("#price_thePrice").val()) +
            Number($("#portoGewuenscht").val())
        )
          .toFixed(2)
          .replace(".", ",")
      );

      $("#letter_price_thePortoLabel").text(
        biggerPreis.toFixed(2).replace(".", ",")
      );
      $("#letter_price_thePorto").text(
        Number($("#portoGewuenscht").val()).toFixed(2).replace(".", ",")
      );
      $("#letter_porto").text(
        Number($("#portoGewuenscht").val()).toFixed(2).replace(".", ",")
      );
      $("#letter_price_thePortoDone").text(
        ($("#price_thePorto").val() * (biggerPreis * 0.01))
          .toFixed(2)
          .replace(".", ",")
      );
    } else if ($("#portoGewuenscht").val() === "") {
      if ($("#preisName").val() === "Frei") {
        //   console.log('frei');
        document.getElementById("portoFrei").checked = true;
        document.getElementById("porto250").checked = false;
        document.getElementById("porto600").checked = false;
        $("#portoGewuenscht").val("");
        $("#price_thePorto").val(0);
        $("#price_theTotal").val(Number($("#price_thePrice").val()) + 0);

        $("#letter_price_theTotal").text(
          Number(Number($("#price_thePrice").val()) + 0)
            .toFixed(2)
            .replace(".", ",")
        );

        $("#letter_price_thePortoLabel").text(
          biggerPreis.toFixed(2).replace(".", ",")
        );
        $("#letter_price_thePorto").text("0,00");
        $("#letter_porto").text("0,00");
        $("#letter_price_thePortoDone").text(
          ($("#price_thePorto").val() * (biggerPreis * 0.01))
            .toFixed(2)
            .replace(".", ",")
        );
        ////    $('#price_thePrice').val(0);
        ////    $('#price_theTotal').val(0);
      } else if (totalKk > 0) {
        //    console.log('totalKk>0');
        document.getElementById("portoFrei").checked = false;
        document.getElementById("porto250").checked = false;
        document.getElementById("porto600").checked = true;
        $("#portoGewuenscht").val("");
        $("#price_thePorto").val(6);
        $("#letter_porto").text("6.00");
        $("#price_theTotal").val(Number($("#price_thePrice").val()) + 6);

        $("#letter_price_theTotal").text(
          (Number($("#price_thePrice").val()) + 6).toFixed(2).replace(".", ",")
        );

        $("#letter_price_thePortoLabel").text(
          biggerPreis.toFixed(2).replace(".", ",")
        );
        $("#letter_price_thePorto").text("6,00");
        $("#letter_price_thePortoDone").text(
          ($("#price_thePorto").val() * (biggerPreis * 0.01))
            .toFixed(2)
            .replace(".", ",")
        );
      } else if (totalItems < 6) {
        //     console.log('totalItems<6');
        document.getElementById("portoFrei").checked = false;
        document.getElementById("porto250").checked = true;
        document.getElementById("porto600").checked = false;
        $("#portoGewuenscht").val("");
        $("#price_thePorto").val(2.5);
        $("#letter_porto").text((2.5).toFixed(2));
        $("#price_theTotal").val(Number($("#price_thePrice").val()) + 2.5);
        $("#letter_price_theTotal").text(
          (Number($("#price_thePrice").val()) + 2.5)
            .toFixed(2)
            .replace(".", ",")
        );

        $("#letter_price_thePortoLabel").text(
          biggerPreis.toFixed(2).replace(".", ",")
        );
        $("#letter_price_thePorto").text("2,50");
        $("#letter_price_thePortoDone").text(
          ($("#price_thePorto").val() * (biggerPreis * 0.01))
            .toFixed(2)
            .replace(".", ",")
        );
      } else {
        console.log("else");
        document.getElementById("portoFrei").checked = true;
        document.getElementById("porto250").checked = false;
        document.getElementById("porto600").checked = false;
        $("#portoGewuenscht").val("");
        $("#price_thePorto").val(0);
        $("#letter_porto").text("0,00");
        $("#price_theTotal").val(Number($("#price_thePrice").val()) + 0);
        $("#letter_price_theTotal").text(
          (Number($("#price_thePrice").val()) + 0).toFixed(2).replace(".", ",")
        );
        //       alert(4);
        $("#letter_price_thePortoLabel").text(
          biggerPreis.toFixed(2).replace(".", ",")
        );
        $("#letter_price_thePorto").text("0,00");
        $("#letter_price_thePortoDone").text(
          ($("#price_thePorto").val() * (biggerPreis * 0.01))
            .toFixed(2)
            .replace(".", ",")
        );
      }
    }
    $("#price_thePortoDone").val(
      $("#price_thePorto").val() * (biggerPreis * 0.01)
    );
    $("#letter_price_thePortoDone").text(
      ($("#price_thePorto").val() * (biggerPreis * 0.01))
        .toFixed(2)
        .replace(".", ",")
    );
    //console.log("$('#price_thePorto').val()*(biggerPreis*.01)).toFixed(2");
    //console.log(($('#price_thePorto').val()*(biggerPreis*.01)).toFixed(2));
    $("letter_price_thePortoLabel").text(
      biggerPreis.toFixed(2).replace(".", ",")
    );
  }

  $("body").on("click", "#okPorto", function () {
    okPorto();
  });
  $("body").on("blur", "#portoGewuenscht", function () {
    okPorto();
  });

  function okPorto() {
    $("#portoGewuenscht").css("background-color", "pink");
    let porto = $("#portoGewuenscht").val();
    let portoPoint = porto.replace(",", ".");
    $("#portoGewuenscht").val(portoPoint);
    //check if numbers
    let float = /^\d*\.?\d*$/;
    if (!float.test(portoPoint)) {
      alertUser("wert ungültig");
      $("#portoGewuenscht").css("background-color", "pink");
      $("#portoGewuenscht").val("");
    } else {
      $("#portoGewuenscht").css("background-color", "white");
      $("input[name=porto]").prop("checked", false);
    }
    twofifity(totalItems, totalKk);
  }

  $("body").on("click", "#reset", function () {
    $("#portoGewuenscht").val("");
    //alert(totalItems +' '+totalKk);
    biggerPrice();
    twofifity(totalItems, totalKk);
  }); // clcik reset

  function preisForItems(items_anzahl, valItem) {
    //place +  preis

    //  console.log('fName: function preisForItems( '+items_anzahl+', '+valItem+')');
    //  console.log('preisForItems(items_anzahl, valItem)');
    let thePreisX = $("#price_thePrice").val();
    let thePreis = Number(thePreisX);
    // console.log('the preis:' +thePreis);
    let x = $('select[name="item' + items_anzahl + '_anzahl"]').val();
    let y = valItem;
    //    console.log(x+' x '+y +' = ' +   Number(x)*Number(y) );
    let z = Number(x) * Number(y);
    $("#p_item" + items_anzahl + "_whole").val(z);
    thePreis += z;
    $("#price_thePrice").val(thePreis);
    //add 2,5
    // % 7 or 19
    if (items_anzahl === 33) {
      totalKkPreis = 0;
      let zz =
        Number($('select[name="item33_anzahl"]').val()) *
        Number($("#p_item33").val());

      //alert(  $('select[name="item33_anzahl"]').val());
      //alert(  $("#p_item33").val());
      $("#price_the19").val(zz);
      let $19prozent = $prozent[1] / 100;
      $("#price_the19Done").val((zz * $19prozent).toFixed(2));
      $("#letter_price_the19").text(zz.toFixed(2).replace(".", ","));
      $("#letter_price_the19Done").text(
        (zz * $19prozent).toFixed(2).replace(".", ",")
      );
      totalKkPreis = zz;
      //alert(zz)
    }

    if (items_anzahl !== 33) {
      //    alert(33);

      let actual7X = $("#price_the7").val();
      let actual7 = Number(actual7X);
      actual7 += z;
      totalItemsPreis = actual7;
      $("#price_the7").val(actual7);

      let $7prozent = $prozent[0] / 100;
      $("#price_the7Done").val((actual7 * $7prozent).toFixed(2));
      $("#letter_price_the7").text(actual7.toFixed(2).replace(".", ","));
      $("#letter_price_the7Done").text(
        (actual7 * $7prozent).toFixed(2).replace(".", ",")
      );
    }

    biggerPrice(totalKkPreis, totalItemsPreis);
  }
  function biggerPrice(totalKkPreis, totalItemsPreis) {
    //    console.log('........................................totalKkPreis'+totalKkPreis);
    //    console.log('..................biggerPrice...........totalItemsPreis'+totalItemsPreis)
    if (totalItemsPreis === 0 && totalKkPreis === 0) {
      biggerPreis = 0;
    } else if (totalItemsPreis <= totalKkPreis) {
      biggerPreis = $prozent[1];
    } else if (totalItemsPreis > totalKkPreis) {
      biggerPreis = $prozent[0];
    }
    //console.log('totalItemsPreis : '+totalItemsPreis +' - totalKkPreis : '+ totalKkPreis+ ' - biggerPreis: '+  biggerPreis);
    $("#price_thePortoLabel").val(biggerPreis);
  }

  function erroOr(err, theNewListePreis, theNewListeName) {
    //console.log('fName: function erroOr(err,theNewListePreis,theNewListeName)');
    $(".newListerror").html("");
    if (err.length > 0) {
      $("#preisName").val("");
      $(".newListerror").show("slow");
      $(".newListerror").html(err.join(" und ") + " bitte überprüfen");
    } else {
      $(".newListerror").html("");
      for (let i = 0; i < 33; i++) {
        let items = "#p_item" + i;
        $(items).val(theNewListePreis);
      } //for

      for (let j = 34; j < 50; j++) {
        let items1 = "#p_item" + j;
        $(items1).val(theNewListePreis);
      } //for
      $("#p_item33").val(17);
      $("#preisName").val(theNewListeName);
      $("#erfolg").css("visibility", "visible");
    }
  } //neuePreise

  $("#letter_myTextAreaLr").change(function () {
    alert("alert");
    setTimeout(function () {
      howBigNew();
    }, 2000);
  });

  //$('#letter_myTextAreaLr').change(function () {

  //KUNDEN DATEN
  function retnum(str) {
    let num = str.replace(/[^0-9]/g, "");
    return num;
  }
  //neuer kunde
  $("body").on("click", "#Neuen_Kunden_Speichern", function () {
    console.log("click: #Neuen_Kunden_Speichern");

    if ($("#kundenFill_kundenNummer").val() === "") {
      removeLetter("#Neuen_Kunden_Speichern");
      //checkvalues
      if (checkValues() < 1) {
        let myform = $("#kundenForm");
        let serializedKunden = myform.serialize();
        console.log(serializedKunden);
        $.post(
          "php/neuen_kunden_speichern.php",
          { data: serializedKunden },
          function (data) {
            myPost = $.parseJSON(data);
            alertUser(myPost.message);
            fillKunden(myPost.kId, "kunden");
          }
        );
      } //if checkValues()<1
    } else {
      alertUser(
        $("#kundenFill_vorname").val() +
          " " +
          $("#kundenFill_name").val() +
          " ist bereits gespeichert unter kndN: " +
          $("#kundenFill_kundenNummer").val()
      );
    }
  }); //neuer kunde

  //kunde update
  // $('#Kunden_updaten').click(function(){
  $("body").on("click", "#Kunden_updaten", function () {
    console.log("click: Kunden_updaten");
    removeLetter("#Kunden_updaten");
    if (checkValues() < 1) {
      //checkvalues
      let myform = $("#kundenForm");
      let serializedKunden = myform.serialize();
      let x = $("#kundenFill_kundenNummer").val();
      console.log(serializedKunden);
      let r = confirm("Kunden Daten aktualisieren?");
      if (r === true) {
        $.post(
          "php/kunden_update.php",
          { data: serializedKunden },
          function (data) {
            alertUser(data);
          }
        );
      } //r ===
      //
      if ($("#rechnung").attr("data-bid") !== "") {
        loadbestellungNew($("#rechnung").attr("data-bid"));
      } else {
        fillKunden(x, "kunden");
      }
    } //checkValues()<1
  }); //kunde update

  $("body").on("focus", "#theNewLrName", function () {
    console.log("focus: #theNewLrName");
    removeLetter("#theNewLrName");
    $("#error2Lr").css("visibility", "hidden");
    $("#theNewLrName_error").css("visibility", "hidden");
    $("#erfolgLr").css("visibility", "hidden");
    $("#lrName").val("");
  });

  $("body").on("focus", "#lrName", function () {
    console.log("focus: #lrName");
    removeLetter("#lrName");
    $("#erfolgLr3").hide();
    $("#erfolgLr3_error").css("visibility", "hidden");
    $("#error2Lr").hide();
    $("#erfolgLr2").css("visibility", "hidden");
    $("error2Lr").css("visibility", "hidden");
  });

  $("body").on("focus", "#myTextAreaLr", function () {
    console.log("focus:#myTextAreaLr");
    $(this).css("background-color", "white");
    $("#theNewLrName").css("background-color", "white");
    $("#error2Lr").css("visibility", "hidden");
    $("#erfolgLr4_error").css("visibility", "hidden");
    $("#erfolgLr4_error").hide();

    $("#erfolgLr3").css("visibility", "hidden");
    $("#erfolgLr3").hide();
  });

  $("body").on("focus", "#theNewListeName", function () {
    console.log("focus:#theNewListeName ");
    removeLetter("#theNewListeName");
    $("#error2").css("visibility", "hidden");
  });

  $("body").on("focus", '#preislisteForm input[type="text"]', function () {
    console.log('focus:preislisteForm input[type="text"]');
    removeLetter('#preislisteForm input[type="text"]');
    //alert($(this).attr('id'));
    $(this).css("background-color", "yellow");
  });

  $("body").on("blur", '#preislisteForm input[type="text"]', function () {
    console.log("blur #preislisteForm");
    $(this).css("background-color", "white");
  });

  $("body").on("focus", '#kundenForm input[type="text"]', function () {
    console.log("focus: kundenForm");
    removeLetter("focus: kundenForm");
    //alert($(this).attr('id'));
    $(this).css("background-color", "yellow");
    let myId = $(this).attr("id");
    $("#" + myId + "_error").hide("slow");
  });

  $("body").on("focus", "#myTextArea", function () {
    console.log("focus: #myTextArea");
    removeLetter("focus: #myTextArea");
    //alert($(this).attr('id'));
    $("#myTextArea_error").hide("slow");
    $("#myTextArea").css("background-color", "yellow");
  });

  $("body").on("blur", "#myTextArea", function () {
    console.log("blur: #myTextArea");
    removeLetter();
    $("#myTextArea").css("background-color", "white");
  });

  $("body").on("blur", "#myTextAreaLr", function () {
    console.log("blur: #myTextAreaLr");
    removeLetter("blur: #myTextAreaLr");
    $("#myTextArea").css("background-color", "white");
  });

  $("body").on("blur", '#kundenForm input[type="text"]', function () {
    console.log("blur: #kundenForm");
    removeLetter("blur: #kundenForm");
    //alert($(this).attr('id'));
    $(this).css("background-color", "white");
  });

  $("body").on("focus", '#kundenForm input[type="email"]', function () {
    console.log("focus: #kundenForm");
    removeLetter();
    //alert($(this).attr('id'));
    $(this).css("background-color", "yellow");
    let myId = $(this).attr("id");
    $("#" + myId + "_error").hide("slow");
  });

  $("body").on("blur", '#kundenForm input[type="email"]', function () {
    console.log("blur: #kundenForm");
    removeLetter("blur: #kundenForm");
    //alert($(this).attr('id'));
    $(this).css("background-color", "white");
  });

  $("body").on("focus", '#kundenForm input[type="radio"]', function () {
    console.log("focus: #kundenForm");
    removeLetter();
    $("#kundenFill_sex_error").hide("slow");
  });

  $("body").on("focus", ".findMe", function () {
    console.log("focus: #findMe");
    removeLetter("focus: #findMe");
    //alert($(this).attr('id'));
    $(this).css("background-color", "yellow");
  });

  $("body").on("blur", ".findMe", function () {
    console.log("blur: #findMe");
    removeLetter("blur: #findMe");
    //alert($(this).attr('id'));
    $(this).css("background-color", "white");
  });

  $("body").on("focus", "#loadFromKundenNummer", function () {
    $("#theStorno").val("");
    removeLetter("#loadFromKundenNummer");
    $(".provisoryButtons").parent().remove();
    $(".provisoryButtons_2").parent().remove();
    $(".provisoryButtonsHr").remove();
    $("#name").val("");
    $("#email").val("");
    $("#loadFromBestellungNummer").val("");
    $("#rechnungsNummer").val("");
    emptyAllData();
  });

  $("body").on("focus", "#email", function () {
    $("#theStorno").val("");
    removeLetter("#email");
    $(".provisoryButtons").parent().remove();
    $(".provisoryButtons_2").parent().remove();
    $(".provisoryButtonsHr").remove();
    $("#name").val("");
    $("#loadFromKundenNummer").val("");
    $("#loadFromBestellungNummer").val("");
    $("#rechnungsNummer").val("");
    emptyAllData();
    removeLast();
  });

  $("body").on("focus", "#loadFromBestellungNummer", function () {
    $("#theStorno").val("");
    removeLetter("#loadFromBestellungNummer");
    $(".provisoryButtons").parent().remove();
    $(".provisoryButtons_2").parent().remove();
    $(".provisoryButtonsHr").remove();
    $("#name").val("");
    $("#loadFromKundenNummer").val("");
    $("#email").val("");
    $("#rechnungsNummer").val("");
    emptyAllData();
    removeLast();
  });

  $("body").on("focus", "#name", function () {
    $("#theStorno").val("");
    removeLetter("#name");
    $(".provisoryButtons").parent().remove();
    $(".provisoryButtons_2").parent().remove();
    $(".provisoryButtonsHr").remove();
    $("#loadFromKundenNummer").val("");
    $("#loadFromBestellungNummer").val("");
    $("#email").val("");
    $("#rechnungsNummer").val("");
    emptyAllData();
    removeLast();
  });

  $("body").on("focus", "#rechnungsNummer", function () {
    $("#theStorno").val("");
    removeLetter("#rechnungsNummer");
    $(".provisoryButtons").parent().remove();
    $(".provisoryButtons_2").parent().remove();
    $(".provisoryButtonsHr").remove();
    $("#name").val("");
    $("#loadFromKundenNummer").val("");
    $("#email").val("");
    $("#loadFromBestellungNummer").val("");
    emptyAllData();
    removeLast();
  });

  $("body").on("click", "#check", function () {
    $("#theStorno").val("");
    removeLast();
    removeLetter("#check");
    $("#rechnung").attr("data-bid", "");
    if ($("#loadFromKundenNummer").val().length > 0) {
      loadFromKundenNummer();
      console.log("loadFromKundenNummer");
    } else if (
      $.trim($("#email").val().length) > 0 &&
      $.trim($("#email").val()) !== ""
    ) {
      loadFromEmail();
      console.log("loadFromEmail");
    } else if ($("#rechnungsNummer").val().length > 0) {
      loadFromAlteKundenNummer();
      console.log("loadFromAlteKundenNummer");
    } else {
      loadFromNameAndAddress();
    }
    emptyAllData();
  }); //check

  $("#loadFromKundenNummer").keyup(function () {
    $("#theStorno").val("");
    loadFromKundenNummer();
  }); //loadFromKundenNummer

  $("#email").keyup(function () {
    //    loadFromEmail();
  }); //loadFromKundenNummer

  $("#loadFromBestellungNummer").keyup(function () {
    $("#theStorno").val("");
    loadFromBestellungNummer();
  }); //loadFromKundenNummer

  $("body").on("click", ".provisoryButtons_2", function () {
    console.log("click:provisoryButtons_2 ");
    removeLetter(".provisoryButtons_2");
    let x = $(this).attr("id");
    x = retnum(x);
    loadbestellungNew(x);
  });

  $("body").on("click", ".provisoryButtons", function () {
    $("#theStorno").val("");
    removeLetter(".provisoryButtons");
    $("input:radio").removeAttr("checked");
    $("#theRechnung").val("");
    $("#rechnung").attr("data-bid", "");
    $("#theDate").val("");
    $("input[type=text][id^=price_]").val("");
    $("input[type=text]").css("background-color", "white");
    $(".error").hide();
    $('select[name$="_anzahl"]').val(0);
    //$('select[name="item1_anzahl"] option[value="0"]').attr("selected","selected");
    $("p[id^=erfolg]").css("visibility", "hidden");
    $(".newLr").hide();
    let x = $(this).attr("id");
    x = retnum(x);
    fillKunden(x, "kunden");
    $("#rechnung").attr("data-bid", "");
    removeLR();
  }); //click', '.provisoryButtons'

  //$('#delPreise').click(function(){
  $("body").on("click", "#del_Kunden", function () {
    $("#theStorno").val("");
    removeLetter("#del_Kunden");
    let kundenFill_kundenNummer = $("#kundenFill_kundenNummer").val();
    if (kundenFill_kundenNummer === "") {
      alertUser("bitte kunden auswählen");
    } else {
      $.post(
        "php/delKunden.php",
        "kId2=" + kundenFill_kundenNummer,
        function (data) {
          let myPost = JSON.parse(data);
          if (myPost[myPost.length - 1].antwort > 0) {
            //yes
            alertUser(
              $("#kundenFill_vorname").val() +
                " " +
                $("#kundenFill_name").val() +
                " mit KNr: " +
                kundenFill_kundenNummer +
                " " +
                myPost[0].text
            );
            emptyAllData();
            removeKudenFinden();
            removeErr();
            removeLast();
            $("#preisName").attr("data-preislisteName", 1);
            $("#preisName").val("Normale");
            completePrice("Normale");
          } else {
            let myText = "";
            $.each(myPost, function (idx, obj) {
              if (typeof obj.rechnungsNummer !== "undefined") {
                myText += obj.rechnungsNummer + " ";
              } //if
            }); //each
            alertUser(
              $("#kundenFill_vorname").val() +
                " " +
                $("#kundenFill_name").val() +
                " mit KNr: " +
                kundenFill_kundenNummer +
                " kann nicht gelöscht werden.\nUnd hat folgende Rechnungen:\n" +
                myText
            );
          } //else
        }
      ); //post
    } //else
  }); //delKunde

  $("body").on("click", "#delPreise", function () {
    //delPreis
    removeLetter("#delPreise");
    let preislisteName = $("#preisName").attr("data-preislisteName");
    if (preislisteName === "") {
      alertUser("bitte Preis auswählen");
    } else {
      $.post(
        "php/delPrice.php",
        "preislisteName=" + preislisteName,
        function (data) {
          let myPost = JSON.parse(data);
          if (myPost[myPost.length - 1].antwort > 0) {
            //yes
            alertUser($("#preisName").val() + " " + myPost[0].text);
            completePrice("Normale");
            $("#preisName").val("Normale");
            $("#preisName").attr("data-preislisteName", "1");
          } else {
            let myText = "";
            $.each(myPost, function (idx, obj) {
              if (typeof obj.rechnungsNummer !== "undefined") {
                myText += obj.rechnungsNummer + " ";
              }
            }); //each
            alertUser(
              $("#preisName").val() +
                " kann nicht gelöscht werden.\nUnd wird gebraucht für folgende Rechnungen:\n" +
                myText
            );
          }
        }
      );
    }
  }); //delPreis

  $("body").on("click", "#delLr", function () {
    //check if is used
    $("[id^=erfolgL]").css("visibility", "hidden");
    $("#myTextAreaLr").css("background-color", "white");
    let lrId = $("#lrName").attr("data-lrName");
    if (lrId === "") {
      alertUser("bitte Lieferschein/Rechnung auswählen");
    }
    $.post("php/delLr.php", "lrId=" + lrId, function (data) {
      let myPost = JSON.parse(data);
      if (myPost[myPost.length - 1].antwort > 0) {
        //yes
        alertUser(
          $("#theLrName").val() +
            " - " +
            $("#lrName").val() +
            " " +
            myPost[0].text
        );
        loadLr(2);
      } else {
        let myText = "";
        $.each(myPost, function (idx, obj) {
          if (typeof obj.rechnungsNummer !== "undefined") {
            myText += obj.rechnungsNummer + " ";
          }
        });
        alertUser(
          $("#theLrName").val() +
            " - " +
            $("#lrName").val() +
            " kann nicht gelöscht werden.\nUnd wird gebraucht für folgende Rechnungen:\n" +
            myText
        );
      }
    }); //$.post('php/delLr.php
  }); // #delLr

  //$("#lrName").click(function(){
  $("body").on("click", "#lrName", function () {
    click_lrName();
  });

  $("body").on("click", "input[name='nb']", function () {
    removeLetter("input[name='nb']");
  }); //click nb
  //
  //$("input[name='lr']").click(function(){
  $("body").on("click", "input[name='lr']", function () {
    let x;
    //alert( $("input[name='lr']:checked").val() );
    removeLetter("input[name='lr']");
    if ($("input[name='lr']:checked").val() === "l") {
      x = "Lieferschein - normal";
      $("#theLrName").val("Lieferschein");
    } else if ($("input[name='lr']:checked").val() === "r") {
      x = "Rechnung - normal";
      $("#theLrName").val("Rechnung");
    }
    $("#lrName").val("normal");
    loadLr(x);
  });

  //$("#neueLr").click(function(){
  $("body").on("click", "#neueLr", function () {
    removeLetter("#neueLr");
    $(".newLr").show("slow");
    $("#lrName").val("");
    $("#erfolgLr3").hide();
    $("#erfolgLr3").css("visibility", "hidden");
    $("#theNewLrName_error").css("visibility", "hidden");
    $("#theNewLrName").val("");
    $("#theNewLrName").css("background-color", "white");
    $("#error2Lr").css("visibility", "hidden");
    $("#erfolgLr").css("visibility", "hidden");
    $("#erfolgLr3_error").css("visibility", "hidden");
    $("#erfolgLr4_error").css("visibility", "hidden");
    $("#erfolgLr4_error").hide();
    $("#erfolgLr2").css("visibility", "hidden");
    $("#lrName").css("background-color", "white");
    $("#myTextAreaLr").css("background-color", "white");
    $("#theNewLrName").css("background-color", "white");
  });

  //$("#cancelLr").click(function(){

  $("body").on("click", "#cancelLr", function () {
    $(".newLr").hide("slow");
    $("#erfolgLr2").css("visibility", "hidden");
    $("#theNewLrName_error").css("visibility", "hidden");
    $("#error2Lr").css("visibility", "hidden");
    $("#erfolgLr").css("visibility", "hidden");
    $("#lrName").removeAttr("disabled");
    $("#erfolgLr3_error").css("visibility", "hidden");
    $("#erfolgLr4_error").css("visibility", "hidden");
    $("#erfolgLr4_error").hide();
    $("#lrName").css("background-color", "white");
    $("#myTextAreaLr").css("background-color", "white");
    loadLr(Number($("#lrName").attr("data-lrName")));
    $("#myTextAreaLr").css("background-color", "white");
    //      $("#myTextAreaLr").val(theText);
  });

  //$("#okLr").click(function(){
  $("body").on("click", "#okLr", function () {
    removeLetter("#okLr");
    if (typeof $("input[name='lr']:checked").val() === "undefined") {
      alertUser("lieferschein oder Rechnung anclicken");
    } //check
    $("#myTextAreaLr").css("background-color", "white");
    $("#erfolgLr2").css("visibility", "hidden");
    $("#erfolgLr3_error").css("visibility", "hidden");
    $("#lrName").css("background-color", "white");
    $("#erfolgLr").css("visibility", "hidden");
    let theNewLrName;
    theNewLrName = $("#theNewLrName").val();
    let x;
    //alert( $("input[name='lr']:checked").val() );
    if ($("input[name='lr']:checked").val() === "l") {
      x = "Lieferschein - ";
      $("#theLrName").val("Lieferschein");
    } else if ($("input[name='lr']:checked").val() === "r") {
      x = "Rechnung - ";
      $("#theLrName").val("Rechnung");
    }
    if (testString("address", theNewLrName) < 1) {
      console.log("all good 2 ");
      //but check if in DB
      $.getJSON(
        "php/check_lr_name.php",
        "suche=" + encodeURI(x) + encodeURI(theNewLrName),
        function (data) {
          //         alert(data);
          //
          if (data > 0) {
            $("#theNewLrName").css("background-color", "pink");
            console.log(theNewLrName + " existiert bereit.");
            $("#error2Lr").css("visibility", "visible");
            $("#error2Lr").css("display", "inline");
            $("#erfolgLr").css("visibility", "hidden");
            $("#erfolgLr").hide();
          } else {
            $("#erfolgLr").css("visibility", "visible");
            $("#erfolgLr").css("display", "inline");
            $("#myTextAreaLr").css("background-color", "lightblue");
            darfLR = true;
            $("#lrName").val(theNewLrName);
            $("#theNewLrName_error").hide();
            $("#theNewLrName_error").css("visibility", "hidden");
            $("#lrName").css("background-color", "white");
            $.getJSON(
              "php/write_new_lr_name.php",
              "suche=" + encodeURI(x) + encodeURI(theNewLrName),
              function (data) {
                //       alert(data);//
                $("#error2Lr").hide();
                $("#erfolgLr2").css("visibility", "visible");
                $("#erfolgLr2").html(data[0].anwort);
                $("#lrName").attr("data-lrname", data[0].lrId);
              }
            ); //getjson
          }
        }
      );
    } else {
      $("#theNewLrName").css("background-color", "pink");
      $("#theNewLrName_error").css("visibility", "visible");
      $("#theNewLrName_error").show();
      $("#erfolgLr").css("visibility", "hidden");
      $("#error2Lr").show();
    }
  });

  //neuePreise
  //$('#neuePreise').click(function(){
  $("body").on("click", "#neuePreise", function () {
    $("#preisName").attr("data-preislisteName", "");
    $(".comma5").val("");
    $("input[type=text][id^=price_]").val("");
    $("#erfolg2").css("visibility", "hidden");
    $("#erfolg").css("visibility", "hidden");
    $("#theNewListeName").val("");
    $("#theNewListePreis").val("");
    $(".newListerror").html("");
    $("#error2").css("visibility", "hidden");
    $("#preisName").val("");
    for (let i = 1; i < 50; i++) {
      let items = "#p_item" + i;
      $(items).val("");
    }
    $(".newList").show("slow");
    $(".newList").css("background-color", "yellow");
    $('.newList input[type="text"]').css("background-color", "white");
  });

  $("body").on("click", "#resetLayout", function () {
    loadbestellungNew($("#rechnung").attr("data-bid"));
  });
  ////cancel
  //$('#cancel').click(function(){
  $("body").on("click", "#cancel", function () {
    $(".newList").hide("slow");
  });
  ////cancel

  //$('#ok').click(function(){
  $("body").on("click", "#ok", function () {
    let err = [];
    let theNewListePreis;
    let theNewListeName;
    $("#erfolg").css("visibility", "hidden");
    $(".comma").val("");
    theNewListeName = $.trim($("#theNewListeName").val());
    $("#theNewListeName").val(cap(theNewListeName));
    theNewListeName = $.trim($("#theNewListeName").val());
    console.log(theNewListeName);
    console.log(testString("address", "theNewListeName"));
    if (testString("address", theNewListeName) < 1) {
      console.log("all good 2 ");
      //but check if in DB
      $.getJSON(
        "php/check_preise_name.php",
        "suche=" + theNewListeName,
        function (data) {
          if (data > 0) {
            $("#theNewListeName").css("background-color", "pink");
            console.log(theNewListeName + " existiert bereit.");
            $("#error2").css("visibility", "visible");
            err.push("Namen");
            console.log(err);
            $(".newList").show();
            erroOr(err, theNewListePreis, theNewListeName);
          }
        }
      );
    } else {
      err.push("Namen");
      $("#theNewListeName").css("background-color", "pink");
      $(".newList").show();
      erroOr(err, theNewListePreis, theNewListeName);
    }

    theNewListePreis = $.trim($("#theNewListePreis").val().replace(",", "."));
    $("#theNewListePreis").val(theNewListePreis);
    if ($.isNumeric(theNewListePreis)) {
      console.log("ok");
      erroOr(err, theNewListePreis, theNewListeName);
    } else {
      err.push("Betrag");
      $("#theNewListePreis").css("background-color", "pink");
      erroOr(err, theNewListePreis, theNewListeName);
    }
    console.log(theNewListePreis);
  }); //neuePreise

  //savePreise
  $("body").on("click", "#savePreise", function () {
    removeLetter("#savePreise");
    //check if empty
    $(".newList").hide("slow");
    let err0r = "";
    let err0r1 = "";
    let err0r2 = "";
    $(".comma").each(function (index, obj) {
      let comma = $.trim($(".comma:eq(" + index + ")").val());
      let withComma = comma.replace(",", ".");
      $(".comma:eq(" + index + ")").val(withComma);
      if (withComma.length < 1 && comma.length < 1) {
        err0r1 = "bitte Felder Preis füllen\n";
        $(".comma:eq(" + index + ")").css("background-color", "pink");
      }
      //check if numbers
      let float = /^\d*\.?\d*$/;
      if (!float.test(withComma)) {
        err0r2 = "Preis bitte eintragen";
        $(".comma:eq(" + index + ")").css("background-color", "pink");
      }
    }); //each

    err0r += err0r1 + err0r2;
    if (err0r.length > 0) {
      $("#erfolg2").css("visibility", "visible");
      $("#erfolg2").html("Error: " + err0r);
      $("#erfolg2").css("color", "red");
    } else {
      let serializedForm = $("#preislisteForm").serializeArray();
      //trim
      $.each(serializedForm, function (i, field) {
        serializedForm[i].value = $.trim(field.value);
      }); //each
      //removedanger /^\w+$/
      let re = /[a-zA-Z0-9äöüÄÖÜß_]/;
      if (!re.test(serializedForm[0].value)) {
        alertUser(
          "Preisliste darf nicht leer sein, und darf bestehn nur aus Buchstaben, Zahlen und underscores. Bitte versuchen Sie noch mal"
        );
        $("#preisName").focus();
      } else {
        //send
        console.log(serializedForm);
        let data = JSON.stringify(serializedForm);
        $.post("php/check_price_list.php", "data=" + data, function (result) {
          if (isNaN(Number(result))) {
            completePrice($("#preisName").val());
            $("#erfolg2").css("visibility", "visible");
            $("#erfolg2").text(result);
            //            alert(result);
            $("#erfolg2").css("color", "blue");
          } else {
            let r = confirm($("#preisName").val() + " überschreiben?");
            if (r == true) {
              $.post(
                "php/update_price_list.php",
                "data=" + data,
                function (xx) {
                  completePrice($("#preisName").val());
                  $("#erfolg2").css("visibility", "visible");
                  $("#erfolg2").text(xx);
                  //    alert(xx);//wurde aktualisiert
                  $("#erfolg2").css("color", "blue");
                }
              ); //post
            } else {
              alertUser("wurde nicht aktualisiert"); //wurde aktualisiert
            }
          } //if
        }); //post
      } //else
    } //else
  }); //savePreise

  $("body").on("change", ".comma", function () {
    //alert('change');
    $("#erfolg2")
      .css("visibility", "visible")
      .css("color", "red")
      .text("Liste Anderungen wurden noch nicht gespeichert");
  }); //change .comma

  $("body").on("click", "#neueRechnung", function () {
    $("#theStorno").val("");
    removeLetter("#neueRechnung");
    removeLast();
    //empty everything in rechnung
    //if no kunden nummer alert
    if ($("#kundenFill_kundenNummer").val() === "") {
      alertUser("bitte kunden auswählen/eintragen");
    } else {
      let data = $("#kundenFill_kundenNummer").val();
      let dataPreis = $("#preisName").val();
      //reset lr
      if ($("#lrName").attr("data-lrName") !== "") {
        loadLr($("#lrName").attr("data-lrName"));
      } else {
        loadLr(2);
      }
      //loadNb(buecher)
      loadNb($("input[name=nb]").val());
      //reset preis
      if ($("#preisName").attr("data-preislisteName") !== "") {
        completePrice($("#preisName").attr("data-preislisteName"));
      } else {
        completePrice(1);
      }
      $.post(
        "php/retrieve.php",
        "dataPreis=" + encodeURI(dataPreis),
        function (result) {
          $.post(
            "php/neue_rechnung_speichern.php",
            "dataKundenNummer=" + data + "&dataPreis=" + result,
            function (result2) {
              console.log(result2);
              //console.log(result2["datum"]);
              //console.log(result2[0]['datum']);
              let obj = JSON.parse(result2);
              // console.log(obj[0]);
              //console.log(result2["datum"]);
              $("#theDate").val(obj[0].datum);
              calculateprozent(obj[0].datum);

              $("#theRechnung").val(obj[0].rechnungsNummer);
              $("#rechnung").attr("data-bid", obj[0].bId);
              //console.log(result2[0].datum );
            }
          ); // $.post("php/neue_rechnung_speichern.php"
        }
      ); //$.post("php/retrieve.php"
    } //else
  }); //click', '#neueRechnung'

  $("body").on("click", "#stornoRechnung", function () {
    removeLetter("#stornoRechnung");
    if ($("#rechnung").attr("data-bid") === "") {
      alertUser("bitte Rechnung auswählen");
    } else {
      $.post(
        "php/stornoRechnung.php",
        "bId=" + $("#rechnung").attr("data-bid"),
        function (result) {
          alertUser(result);
          loadbestellungNew($("#rechnung").attr("data-bid"));
        }
      ); //post
    } //if
  });

  $("body").on("click", "#delRechnung", function () {
    $("#theStorno").val("");
    removeLetter("#delRechnung");
    if ($("#rechnung").attr("data-bid") === "") {
      alertUser("bitte Rechnung auswählen");
    } else {
      let r = confirm("Rechnung " + $("#theRechnung").val() + " löschen?");
      if (r === true) {
        $.post(
          "php/delRechnung.php",
          "bId=" + $("#rechnung").attr("data-bid"),
          function (result) {
            alertUser("Rechnung wurde gelöscht");
            $("#theDate").val("");
            $("#theRechnung").val("");
            $("#rechnung").attr("");
            $("#rechnung").attr("data-bid", "");
            fillKunden($("#kundenFill_kundenNummer").val(), "kunden");
            $("#rechnung").attr("data-bid", "");
          }
        ); //post
      }
    } //if
  });

  $("body").on("click", "#updateRechnung", function () {
    // Initialize an array to store error messages
    let myLastError = [];

    // Check if required fields are filled
    if ($("#kundenFill_kundenNummer").val() === "") {
      myLastError.push("Kunden");
    }
    if ($("#rechnung").attr("data-bid") === "") {
      myLastError.push("Rechnung Nr");
    }
    if (!$("input[name=nb]:radio:checked").val()) {
      myLastError.push("Normal oder buch");
    }
    if ($("#lrName").attr("data-lrName") === "") {
      myLastError.push("Lieferschein oder Rechnung ");
    }

    // If there are any errors, display them and return
    if (myLastError.length > 0) {
      alertUser("Bitte " + myLastError.join(", ") + " auswählen");
      return;
    }

    // If no errors, proceed to gather data
    let bId = $("#rechnung").attr("data-bid");
    let preisName = $("#preisName").attr("data-preislistename");
    let itemsToSave = [];
    for (let i = 0; i < 49; i++) {
      let itemIndex = 'select[name="item' + (i + 1) + '_anzahl"]';
      itemsToSave.push($(itemIndex).val());
    }
    let lr = $("#lrName").attr("data-lrName");
    let porto = $("input[name=porto]:radio:checked").val() || 0;
    let buecher = $("input[name=nb]:radio:checked").val();
    let preis = $("#price_thePrice").val();
    let portoGewuenscht = $("#portoGewuenscht").val();

    // Log gathered data for debugging
    console.log("////////////////////////////");
    console.log("bId: " + bId);
    console.log("preisName: " + preisName);
    console.log("itemsToSave: " + JSON.stringify(itemsToSave));
    console.log("lr: " + lr);
    console.log("buecher: " + buecher);
    console.log("porto: " + porto);
    console.log("preis: " + preis);

    // Send data via AJAX post request
    $.post(
      "php/update-rechnung.php",
      {
        bId: bId,
        preisName: preisName,
        lr: lr,
        buecher: buecher,
        porto: porto,
        portoGewuenscht: portoGewuenscht,
        preis: preis,
        data: JSON.stringify(itemsToSave),
      },
      function (result) {
        // Display result
        alertUser(result);
        // Load updated data
        loadbestellungNew(bId);
      }
    );
  });

  //clcik #updateRechnung

  function replaceComma(x) {
    x.replace(".", ",");
    return x;
  }

  //EDITABLE+++++++++++++++++++++++++++++++++++++++++++

  let numb;
  //$('.editable').bind('dblclick', function(){
  $("body").on("click", ".editable", function () {
    console.log("click editable");
    removeLetter("click editable");
    let myEditableId = $(this).attr("id");
    console.log(myEditableId);
    // gets the id of a clicked link that has a class of menu
    numb = myEditableId.match(/\d/g);
    numb = numb.join("");
    console.log(numb);
  }); //clcik editable

  $(".editable").editable({
    touch: true, // Whether or not to support touch (default true)
    lineBreaks: true, // Whether or not to convert \n to <br /> (default true)
    toggleFontSize: false, // Whether or not it should be possible to change font size (default true),
    closeOnEnter: true, // Whether or not pressing the enter key should close the editor (default false)
    event: "dblclick", // The event that triggers the editor (default dblclick)
    tinyMCE: false, // Integrate with tinyMCE by settings this option to true or an object containing your tinyMCE configuration
    emptyMessage: autofill_ITEMS_Names_from_DB(), // HTML that will be added to the editable element in case it gets empty (default false)

    callback: function (data) {
      // Callback that will be called once the editor is blurred
      if (data.content) {
        $.post(
          "php/update_name_list.php",
          "data=" + data.content + "&id=" + numb,
          function (result) {
            alertUser(result);
          }
        );
        //         alert(data.content);
      }
      if (data.fontSize) {
        // the font size has changed
      }
      //data.$el gives you a reference to the element that was edited
      //        data.$el.effect('blink');
    },
  });

  //+++++++++++++++++++++++++++++++++++++++++++++++++
  // BOrder TOP
  $(window).resize(function () {
    resiIze();
  });

  function resiIze() {
    $winwidth = $(window).width();
    //alert($winwidth);
    pixSiIze($winwidth);
  }

  function borderTop() {
    let $h1 = parseInt($("h1").css("margin-top"));
    // alert($h1);
    let $hr;
    $("hr").css("visibility", "hidden");
    if (!isNaN(parseInt($("hr").css("-webkit-margin-before")))) {
      $hr = parseInt($("hr").css("-webkit-margin-before"));
    } else if (!isNaN(parseInt($("hr").css("border-top-width")))) {
      $hr = 8;
    }
    // alert($hr);
    let newHeight = 3 * $h1 + $hr - 2;
    //  alert(newHeight);
    $("#borderTop").height(newHeight + "px");
  }

  function pixSiIze(X) {
    // check window size
    $("body").css({ "background-size": $winwidth });
  }
  // BOrder TOP

  //! PRINT
  // Event handler for printing functionality
  $("body").on("click", "#printMe", function () {
    // Log relevant information
    console.log("#printMe");
    console.log(
      "Number of children in #sehrGeherte_2: " +
        $("#sehrGeherte_2").children().length
    );

    // Retrieve the ID to reload
    let idToReload = $("#rechnung").attr("data-bid");
    let originalContents = document.body.innerHTML;

    // Log information about elements
    logElementInformation();

    // Print the desired content
    printContent(idToReload, originalContents);
  });

  // Function to log information about various elements
  function logElementInformation() {
    console.log("#vorschauBack2.html: " + $("#vorschauBack2").html());
    console.log(".vorschauBack.height: " + $(".vorschauBack").height());
    console.log("#vorschauBack2.height: " + $("#vorschauBack2").height());
    console.log(".backPix.height: " + $(".backPix").height());
    console.log(".backPix img.height: " + $(".backPix").find("img").height());
    console.log(".letter.height: " + $(".letter").height());
    console.log("#vorschau.height: " + $("#vorschau").height());
  }

  function printContent(idToReload, originalContents) {
    console.log("Printing content...");

    // Check if the browser is Firefox
    if (navigator.userAgent.indexOf("Firefox") != -1) {
      printIframe(idToReload, originalContents);
    } else {
      let printContents = $("#vorschauBack2").html();

      // Replace the entire body content with the content to print
      document.body.innerHTML = printContents;

      // Trigger the print dialog
      window.print();

      // Restore the original body content
      document.body.innerHTML = originalContents;

      // Load additional data after printing
      loadBestellungNew(idToReload);
    }
  }

  function printIframe(idToReload, originalContents) {
    console.log("Printing content...");

    // Create a hidden iframe
    let iframe = document.createElement("iframe");
    iframe.style.display = "none";
    document.body.appendChild(iframe);

    // Get the content to print
    let printContents = $("#vorschauBack2").html();

    // Write the content and style links to the iframe
    let iframeDoc = iframe.contentWindow.document;
    iframeDoc.open();
    iframeDoc.write(
      "<html><head><title>Print</title></head><body>" +
        printContents +
        "</body></html>"
    );

    // Load the print-specific stylesheets
    let cssLinks = ["css/normalize.css", "css/jquery-ui.css", "css/main.css"];
    cssLinks.forEach(function (link) {
      let styleLink = iframeDoc.createElement("link");
      styleLink.rel = "stylesheet";
      styleLink.type = "text/css";
      styleLink.href = link;
      iframeDoc.head.appendChild(styleLink);
    });

    iframeDoc.close();

    // Wait for stylesheets to load before printing
    iframe.onload = function () {
      // Print the content using the iframe
      let ifWin = iframe.contentWindow || iframe;
      ifWin.focus();
      ifWin.print();

      // Remove the iframe after printing
      document.body.removeChild(iframe);

      // Restore the original body content
      document.body.innerHTML = originalContents;

      // Load additional data after printing
      loadBestellungNew(idToReload);
    };
  }
  //! PRINT

  //! RESET LAYOUT new

  const firstPageHeight = 600;
  const normalPageHeight = 855;
  function howBigNew() {
    splitP = [];
    firstTable = [];
    secondTable = [];
    lastP = [];
    resetArrays();
    setTimeout(function () {
      let thisText = "";
      let thisHeight = "";
      let thisR;

      $("#sehrGeherte table:eq( 0 ) tr").each(function () {
        thisR = $(this).html();
        thisHeight = $(this).height();
        firstTable.push([thisR, thisHeight]);
      });

      $("#sehrGeherte table:eq( 1 ) tr").each(function () {
        thisR = $(this).html();
        thisHeight = $(this).height();
        secondTable.push([thisR, thisHeight]);
      });

      $("#sehrGeherte #letter_myTextAreaLr> p").each(function (index) {
        thisText = $(this).text();
        thisHeight = $(this).height();
        // Check if it's the last paragraph
        if (index === $("#sehrGeherte #letter_myTextAreaLr> p").length - 2) {
          lastP.push([thisText, thisHeight]);
        } else {
          if (index < 1) {
            splitP.push(["&nbsp", 19]);
          }
          splitP.push([thisText, thisHeight]);
        }
      });
      lastP.push(["&nbsp", 19]);
      $("#sehrGeherte #lastP> p").each(function () {
        thisText = $(this).text();
        thisHeight = $(this).height();
        lastP.push([thisText, thisHeight]);
      });

      console.log("......");
      console.log("howBigNew");
      console.log(".......");
      console.log(splitP);
      console.log("first_Table");
      console.log(firstTable);
      console.log("second_Table");
      console.log(secondTable);
      console.log("lastP");
      console.log(lastP);

      sendToMoveNew();
    }, 500);
  }

  function resetArrays() {
    splitP = [];
    firstTable = [];
    secondTable = [];
    lastP = [];
    pages = [{}];
  }
  function sendToMoveNew() {
    // Calculate the total height of the content
    let h = 0;
    firstTable.forEach(function (item) {
      h += item[1]; // Assuming item[1] represents the height
    });
    secondTable.forEach(function (item) {
      h += item[1];
    });
    splitP.forEach(function (item) {
      h += item[1];
    });
    lastP.forEach(function (item) {
      h += item[1];
    });

    let remainingSpace = 0; // Variable to store remaining space on the current page
    // Initialize variables for page heights
    let currentPageIndex = 0;
    let currentPageHeight = 0;
    let currentFirstPageHeight = 0;

    // Function to add content to the current page
    function addToCurrentPage(arrayName, item, height) {
      // If adding the content exceeds the page height limit, move to the next page
      if (
        currentPageHeight + height >
        (currentPageIndex + 1) * normalPageHeight
      ) {
        currentPageIndex++;
        pages[currentPageIndex] = {};
        currentPageHeight = 0;
      }
      // Add content to the current page with reference to the original array
      if (!pages[currentPageIndex][arrayName]) {
        pages[currentPageIndex][arrayName] = [];
      }
      
      pages[currentPageIndex][arrayName].push(item);
      currentPageHeight += height;
    }

    // Iterate over firstTable content
    firstTable.forEach(function (item) {
      // If adding the content exceeds the first page height limit, move to the next page
      if (currentFirstPageHeight + item[1] > firstPageHeight) {
        currentPageIndex++;
        pages[currentPageIndex] = {};
        currentPageHeight = 0;
        currentFirstPageHeight = 0;
      }
      addToCurrentPage("firstTable", item, item[1]);
      currentFirstPageHeight += item[1];
    });

    // Check if the secondTable fits on the current page, otherwise, move it to the next page
    let secondTableFits = true;
    secondTable.forEach(function (item) {
      if (
        currentPageHeight + item[1] >
        (currentPageIndex + 1) * normalPageHeight
      ) {
        secondTableFits = false;
        return;
      }
    });

    // If the secondTable fits on the current page, add it, otherwise move it to the next page
    if (secondTableFits) {
      addToCurrentPage(
        "secondTable",
        secondTable,
        secondTable.reduce((acc, item) => acc + item[1], 0)
      );
    } else {
      currentPageIndex++;
      pages[currentPageIndex] = { secondTable: secondTable };
      currentPageHeight = secondTable.reduce((acc, item) => acc + item[1], 0);
    }

    // Iterate over splitP content
    splitP.forEach(function (item) {
      addToCurrentPage("splitP", item, item[1]);
    });

    // Calculate remaining space on the current page
    if (currentPageIndex > 0) {
      remainingSpace = normalPageHeight - currentPageHeight;
    } else {
      remainingSpace = firstPageHeight - currentPageHeight;
    }
    // Check remaining space and add lastP accordingly
    let lastPHeight = 0;
    lastP.forEach((n) => {
      lastPHeight += n[1];
    });

    if (remainingSpace > lastPHeight) {
      if (!pages[currentPageIndex]["lastP"]) {
        pages[currentPageIndex]["lastP"] = [];
      }
      lastP.forEach(function (p) {
        pages[currentPageIndex]["lastP"].push(p);
      });
    } else {
      currentPageIndex++;
      pages[currentPageIndex] = { lastP: lastP };
    }

    console.log("Pages:", pages);
    buildPages(pages);
    console.log("page length", pages.length);

    // Display remaining space on the current page
    console.log("Remaining space on current page:", remainingSpace);
    console.log("lastPHeight:", lastPHeight);
  }

  function buildPages(pages) {
    alert("buildPages");
    $("#sehrGeherte").html("");
    $("#sehrGeherte_2").html("");
    $("#sehrGeherte_3").html("");

    $("#sehrGeherte_2").hide();
    $("#sehrGeherte_3").hide();
    if (pages.length > 2) {
      // 2 pages

      $("#vorschauBack1").find("img").clone().appendTo("#vorschauBack1");
      $("#vorschauBack2").height(2244);
      $(".vorschauBack").height(2244);
      $("#sehrGeherte_2").show();
      $("#printLast").css("margin-top", "1142px");

      // 3 pages
      $("#vorschauBack1")
        .find("img:eq( 0 )")
        .clone()
        .appendTo("#vorschauBack1");
      $("#vorschauBack2").height(3366);
      $(".vorschauBack").height(3366);
      $("#sehrGeherte_3").show();
      $("#printLast").css("margin-top", "2264px");

      //! first Page
      if ("firstTable" in pages[0]) {
        $("#sehrGeherte").append("<table  class='3_1_firsttable'></table>");
        // Append second table
        pages[0]["firstTable"].forEach(function (r) {
          $("#sehrGeherte table").append("<tr>" + r[0] + "</tr>");
        });
      }
      if ("secondTable" in pages[0]) {
        // Append second table
        $("#sehrGeherte").append("<table  class='3_1_secondtable'></table>");
        pages[0]["secondTable"][0].forEach(function (r) {
          $("#sehrGeherte table:last-child").append("<tr>" + r[0] + "</tr>");
        });
      }

      // Append paragraphs for splitP if it has data
      if (pages[0]["splitP"] && pages[0]["splitP"].length > 0) {
        pages[0]["splitP"].forEach(function (p) {
          $("#sehrGeherte").append("<p>" + p[0] + "</p>");
        });
      }

      // Append paragraphs for lastP if it has data
      if (pages[0]["lastP"] && pages[0]["lastP"].length > 0) {
        pages[0]["lastP"].forEach(function (p) {
          $("#sehrGeherte").append("<p>" + p[0] + "</p>");
        });
      }

      // ! second  Page
      if ("firstTable" in pages[1]) {
        $("#sehrGeherte_2").append("<table  class='3_2_firsttable'></table>");
        // Append second table
        pages[1]["firstTable"].forEach(function (r) {
          $("#sehrGeherte_2 table").append("<tr>" + r[0] + "</tr>");
        });
      }
      if ("secondTable" in pages[1]) {
        // Append second table
        $("#sehrGeherte_2").append("<table  class='3_2_secondtable'></table>");
        pages[1]["secondTable"][0].forEach(function (r) {
          $("#sehrGeherte_2 table:last-child").append("<tr>" + r[0] + "</tr>");
          console.log(r[0]);
        });
      }
      // Append paragraphs
      if (pages[1]["splitP"] && pages[1]["splitP"].length > 0) {
        pages[1]["splitP"].forEach(function (p) {
          $("#sehrGeherte_2").append("<p>" + p[0] + "</p>");
        });
      }

      if (pages[1]["lastP"] && pages[1]["lastP"].length > 0) {
        pages[1]["lastP"].forEach(function (p) {
          $("#sehrGeherte_2").append("<p>" + p[0] + "</p>");
        });
      }

      // ! 3rd  Page
      if ("firstTable" in pages[2]) {
        $("#sehrGeherte_3").append("<table  class='3_3_firsttable'></table>");
        // Append second table
        pages[2]["firstTable"].forEach(function (r) {
          $("#sehrGeherte_3 table").append("<tr>" + r[0] + "</tr>");
        });
      }
      if ("secondTable" in pages[2]) {
        // Append second table
        $("#sehrGeherte_3").append("<table  class='3_3_secondtable'></table>");
        pages[2]["secondTable"][0].forEach(function (r) {
          $("#sehrGeherte_3 table:last-child").append("<tr>" + r[0] + "</tr>");
        });
      }
      // Append paragraphs
      if (pages[2]["splitP"] && pages[2]["splitP"].length > 0) {
        pages[2]["splitP"].forEach(function (p) {
          $("#sehrGeherte_3").append("<p>" + p[0] + "</p>");
        });
      }

      if (pages[2]["lastP"] && pages[2]["lastP"].length > 0) {
        pages[2]["lastP"].forEach(function (p) {
          $("#sehrGeherte_3").append("<p>" + p[0] + "</p>");
        });
      }
    } else if (pages.length > 1) {
      $("#vorschauBack1").find("img").clone().appendTo("#vorschauBack1");
      $("#vorschauBack2").height(2244);
      $(".vorschauBack").height(2244);
      $("#sehrGeherte_2").show();
      $("#printLast").css("margin-top", "1142px");

      //! first Page
      if ("firstTable" in pages[0]) {
        $("#sehrGeherte").append("<table class='2_1_firsttable'></table>");
        // Append second table
        pages[0]["firstTable"].forEach(function (r) {
          $("#sehrGeherte table").append("<tr>" + r[0] + "</tr>");
        });
      }
      if ("secondTable" in pages[0]) {
        $("#sehrGeherte").append("<table  class='2_1_secondtable'></table>");
        // Append second table
        pages[0]["secondTable"][0].forEach(function (r) {
          // alert(r[0]);
          $("#sehrGeherte table:last-child").append("<tr>" + r[0] + "</tr>");
        });
      }
      // Append paragraphs
      // Append paragraphs for splitP if it has data
      if (pages[0]["splitP"] && pages[0]["splitP"].length > 0) {
        pages[0]["splitP"].forEach(function (p) {
          $("#sehrGeherte").append("<p>" + p[0] + "</p>");
        });
      }

      // Append paragraphs for lastP if it has data
      if (pages[0]["lastP"] && pages[0]["lastP"].length > 0) {
        pages[0]["lastP"].forEach(function (p) {
          $("#sehrGeherte").append("<p>" + p[0] + "</p>");
        });
      }

      // ! second  Page
      if ("firstTable" in pages[1]) {
        $("#sehrGeherte_2").append("<table class='2_2_firsttable'></table>");
        // Append second table
        pages[1]["firstTable"].forEach(function (r) {
          $("#sehrGeherte_2 table").append("<tr>" + r[0] + "</tr>");
        });
      }
      if ("secondTable" in pages[1]) {
        // Append second table
        $("#sehrGeherte_2").append("<table class='2_2_secondtable'></table>");
        pages[1]["secondTable"][0].forEach(function (r) {
          $("#sehrGeherte_2 table:last-child").append("<tr>" + r[0] + "</tr>");
        });
      }
      // Append paragraphs
      if (pages[1]["splitP"] && pages[1]["splitP"].length > 0) {
        pages[1]["splitP"].forEach(function (p) {
          $("#sehrGeherte_2").append("<p>" + p[0] + "</p>");
        });
      }

      if (pages[1]["lastP"] && pages[1]["lastP"].length > 0) {
        pages[1]["lastP"].forEach(function (p) {
          $("#sehrGeherte_2").append("<p>" + p[0] + "</p>");
        });
      }
    } else if (pages.length > 0) {
      // all on one Page
      $("#sehrGeherte").html("");
      $("#sehrGeherte_2").html("");
      $("#sehrGeherte_3").html("");

      $("#sehrGeherte_2").hide();
      $("#sehrGeherte_3").hide();
      // Append first table
      $("#sehrGeherte").append("<table></table>");
      firstTable.forEach(function (r) {
        $("#sehrGeherte table").append("<tr>" + r[0] + "</tr>");
      });
      // Append second table
      $("#sehrGeherte").append("<table></table>");
      secondTable.forEach(function (r) {
        $("#sehrGeherte table:last-child").append("<tr>" + r[0] + "</tr>");
      });
      splitP.forEach(function (p) {
        $("#sehrGeherte").append("<p>" + p[0] + "</p>");
      });
      lastP.forEach(function (p) {
        $("#sehrGeherte").append("<p>" + p[0] + "</p>");
      });
    } else {
      console.log("do nothing on this page");
    }

    resetArrays();
  }

  //start funtions
  resetLetterDiv();
  resiIze();
  borderTop();
  autofill_ITEMS_Names_from_DB();
  //set normal oder buch
  $("input[name=nb]:radio:nth(0)").prop("checked", true);

  loadbestellungNew(1240);

  //! RESET LAYOUT new
}); // jquery
