// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

document.getElementById("theme-input").addEventListener("input", function (event) {
  let prompt = event.target.value;

  fetch("/questions/generate_text", {
    method: "POST",
    body: JSON.stringify({ prompt: prompt }),
    headers: {
      "Content-Type": "application/json",
      "X-CSRF-Token": document.getElementsByName("csrf-token")[0].content,
    },
  })
    .then((response) => {
      console.log(response);
      return response.json();
    })
    .then((data) => {
      console.log(data);
      document.getElementById("generated-text").innerText = data.generated_text;
    });
});
