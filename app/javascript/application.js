// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import * as bootstrap from "bootstrap"

// const modalBtn = document.querySelector('.shopping-list-btn');
const modalBtn = document.querySelectorAll('button[type="submit"]')[0];
const modal = document.querySelector('.modal');

modalBtn.addEventListener('click', (e) => {
    modal.classList.toggle('show-modal');
});