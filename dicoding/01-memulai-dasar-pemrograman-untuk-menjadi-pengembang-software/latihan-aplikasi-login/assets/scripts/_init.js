const popupElemen = document.getElementById('popup');
const closePopupButton = document.getElementById('closePopup');

function goToHome() {
    location.href = './home.html';
}

function goToLogin() {
    location.href = './index.html';
}

function showPopUp() {
    // Menampilkan popup
    popupElemen.style.display = 'block';
}

closePopupButton.addEventListener('click', function () {
    // Menutup popup
    popupElemen.style.display = 'none';
});