const togglePasswordSpan = document.querySelector('.input-group-text'); // Select the span
const togglePasswordIcon = document.querySelector('#togglePassword');   // Select the icon
const password = document.querySelector('#user_password');

// Ensure elements exist before adding event listeners
if (togglePasswordSpan && togglePasswordIcon && password) {
  togglePasswordSpan.addEventListener('click', function() {
    // Toggle the type attribute of the password field
    const type = password.getAttribute('type') === 'password' ? 'text' : 'password';
    password.setAttribute('type', type);

    // Toggle the eye and eye-slash icon classes
    togglePasswordIcon.classList.toggle('bi-eye');
    togglePasswordIcon.classList.toggle('bi-eye-slash');
  });
}
