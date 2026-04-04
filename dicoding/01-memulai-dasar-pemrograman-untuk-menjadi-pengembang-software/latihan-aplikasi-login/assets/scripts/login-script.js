const loginFormElemen = document.querySelector('#login-form');
const inputEmail = document.querySelector('#email');
const inputPassword = document.querySelector('#password');

const emailData = 'bay@bay';
const passwordData = '1234';

loginFormElemen.addEventListener('submit', function(event){
    event.preventDefault();
    
    const email = inputEmail.value;
    const password = inputPassword.value;

    console.log(email);
    console.log(password);

    if (email == emailData && password == passwordData) {
        goToHome();
    } else {
        showPopUp();
    }
});