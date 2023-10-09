document.getElementById("myForm").addEventListener("submit", function (event) {
  event.preventDefault();

  // Check if at least one checkbox is checked
  const checkboxes = document.querySelectorAll('input[name="checkbox[]"]');
  let atLeastOneChecked = false;

  checkboxes.forEach((checkbox) => {
    if (checkbox.checked) {
      atLeastOneChecked = true;
    }
  });

  if (!atLeastOneChecked) {
    event.stopPropagation();
    const invalidFeedback = document.querySelector(".invalid-feedback");
    invalidFeedback.style.display = "block";
  } else {
    const formData = new FormData(this);

    fetch("process.php", {
      method: "POST",
      body: formData,
    })
      .then((response) => response.text())
      .then((data) => {
        // Handle the response from the PHP file
        console.log(data);
      })
      .catch((error) => {
        console.error("Error:", error);
      });
  }

  this.classList.add("was-validated");
});
