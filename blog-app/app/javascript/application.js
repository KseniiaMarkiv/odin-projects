// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

import React from "react"
import ReactDOM from "react-dom"

const App = () => {
  return (
    <div>
      <h1>Hello, React!</h1>
      <p>This is a simple React component rendered in a Rails application.</p>
    </div>
  );
};

document.addEventListener("DOMContentLoaded", () => {
  const rootElement = document.getElementById("react-root");
  if (rootElement) {
    const root = createRoot(rootElement);
    root.render(<App />);
  }
});