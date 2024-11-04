document.addEventListener("turbo:load", () => {
  if (typeof $ !== 'undefined') {
    console.log("jQuery is loaded!");
  } else {
    console.log("jQuery is not loaded!");
  }
});
