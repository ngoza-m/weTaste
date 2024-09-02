// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "@popperjs/core"
import "bootstrap"

// Footer icon code
document.addEventListener("DOMContentLoaded", function() {
  console.log("Hello from JavaScript!");

  document.querySelectorAll('.footer-menu-item').forEach(function(item) {
    item.addEventListener('click', function() {
      // Remove 'selected' class from all items
      document.querySelectorAll('.footer-menu-item').forEach(function(i) {
        i.classList.remove('selected');
      });

      // Add 'selected' class to the clicked item
      this.classList.add('selected');
    });
  });
});
