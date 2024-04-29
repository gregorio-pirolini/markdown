jQuery.noConflict(); //$ freigegeben
jQuery(document).ready(function($) {

    $('body').on('click', '#printMe', function() {
        console.log('#printMe');
        printDiv('vorschauBack2');
    });

    function printDiv(divName1) {
        var printContents = document.getElementById(divName1).innerHTML;
        var originalContents = document.body.innerHTML;

        // Create a new element to hold the print-specific content
        var printContainer = document.createElement('div');
        printContainer.innerHTML = printContents;

        // Append the print-specific content to the body
        document.body.appendChild(printContainer);

        // Print the content
        window.print();

        // Remove the print-specific content from the body
        document.body.removeChild(printContainer);

        // Restore the original HTML content
        document.body.innerHTML = originalContents;
    }
    
});