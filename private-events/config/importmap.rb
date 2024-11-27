# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin "jquery", to: "https://code.jquery.com/jquery-3.6.0.min.js", preload: true
pin "semantic-ui", to: "https://cdn.jsdelivr.net/npm/semantic-ui@2.4.1/dist/semantic.min.js", preload: true
pin "navbar", to: "navbar.js"
pin "jquery_check", to: "jquery_check.js"

pin_all_from "app/javascript/controllers", under: "controllers"
