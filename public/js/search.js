const search = document.querySelectorAll('.search');
const searchBar = document.querySelector('.search-bar');

for (let i = 0;  i < search.length; i++) {
    search[i].addEventListener('click', () => {
        searchBar.classList.remove('hidden');
        searchBar.classList.add('flex');
    });
}

searchBar.addEventListener('click', (e) => {
    if (searchBar === e.target) {
        searchBar.classList.add('hidden');
        searchBar.classList.remove('flex');
    }
});

