let forms = document.querySelectorAll(".needs-validation");
console.log("hello 4");
// Loop over them and prevent submission
Array.from(forms).forEach((form) => {
  form.addEventListener("submit", function (event) {
    processForm(event, form);
  });
});

function processForm(e, form) {
  if (!form.checkValidity()) {
    e.preventDefault();
    e.stopPropagation();
    form.classList.add("was-validated");
    return;
  }
  const formValues = [];
  const formData = new FormData(form);
  formData.forEach((value, key) => {
    console.log(`Field Name: ${key}, Field Value: ${value}`);
    formValues.push({ name: key, value: value });
  });
  sendToPhp(formValues);
  form.classList.add("was-validated");
}

let sendToPhp = (formValues) => {
  // Convert formValues to a JSON string
  const jsonData = JSON.stringify(formValues);

  // Define the URL of your PHP script
  const url = "your_php_script.php";

  // Define the fetch options
  const options = {
    method: "POST",
    body: jsonData,
    headers: {
      "Content-Type": "application/json",
    },
  };

  // Make the fetch request
  fetch(url, options)
    .then((response) => response.json())
    .then((data) => {
      // Handle the response from the PHP script here
      console.log("Response from PHP script:", data);
    })
    .catch((error) => {
      console.error("Error sending data to PHP:", error);
    });
};
