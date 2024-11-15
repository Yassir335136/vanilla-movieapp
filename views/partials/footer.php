</main>
<footer class="bg-gray-900 text-center">
    <div class="flex justify-center">
    </div>
</footer>
<div class="w-[100vw] h-[100vh] top-0 left-0 fixed z-20 bg-neutral-900 bg-opacity-75 p-8 flex justify-center search-bar hidden">
    <form method="get" action="/search">
       <div class="flex flex-col gap-2">
           <input name="query" class="bg-gray-600 placeholder-neutral-200 outline-0 rounded border border-gray-600 shadow appearance-none leading-tight py-3 px-6" placeholder="Search movies..." />
           <button type="submit" class="bg-blue-700 hover:bg-blue-900 text-white font-bold py-3 px-6 rounded-lg">Search</button>
       </div>
    </form>
</div>
</body>
<?php if (str_contains($_SERVER['REQUEST_URI'], '/movies') || str_contains($_SERVER['REQUEST_URI'], '/search')): ?>
<script src="/js/search.js"></script>
<script src="/js/favorites.js"></script>
<?php endif; ?>
<script src="/js/navbar.js"></script>
</html>