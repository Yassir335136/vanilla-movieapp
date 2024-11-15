const favoriteButton = document.querySelectorAll('#favoriteButton');
const favoriteId = document.querySelectorAll('#favoriteId');

for (let i = 0; i < favoriteId.length; i++) {
    favoriteButton[i].addEventListener('click', () => {
        console.log(favoriteId[i].value);
    });
}
