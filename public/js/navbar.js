const menuBtn = document.querySelector('.menu-btn');
const navbarItems = document.querySelector('.navbar-items');
const closeMenuBtn = document.querySelector('.close-menu-btn');

menuBtn.addEventListener('click', () => {
    navbarItems.classList.remove('right-[-13rem]');
    navbarItems.classList.add('right-0');
});

closeMenuBtn.addEventListener('click', () => {
    navbarItems.classList.add('right-[-13rem]');
    navbarItems.classList.remove('right-0');
});


