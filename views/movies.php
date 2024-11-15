<?php include_once 'partials/header.php'; ?>

<div class="grid gap-6 grid-cols-2 md:grid-cols-4 lg:grid-cols-5 xl:grid-cols-10">
    <?php foreach ($movieResults as $movie): ?>
        <div class="relative">
            <a href="/movie?id=<?= htmlspecialchars($movie->id) ?>">
                <img class="rounded-lg" src="https://image.tmdb.org/t/p/w500/<?= $movie->poster_path ?>">
            </a>
            <?php if (isset($_SESSION['id'])): ?>
            <input hidden value="<?= htmlspecialchars($movie->id) ?>" name="favorite" id="favoriteId" />
            <button class="absolute top-0 right-0 bg-red-500 text-white rounded-full text-sm p-2 mt-2 mr-2" id="favoriteButton">
            <?php if (str_contains($favoriteId, $movie->id)): ?>
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" class="w-6 h-6">
                    <path d="M11.645 20.91l-.007-.003-.022-.012a15.247 15.247 0 01-.383-.218 25.18 25.18 0 01-4.244-3.17C4.688 15.36 2.25 12.174 2.25 8.25 2.25 5.322 4.714 3 7.688 3A5.5 5.5 0 0112 5.052 5.5 5.5 0 0116.313 3c2.973 0 5.437 2.322 5.437 5.25 0 3.925-2.438 7.111-4.739 9.256a25.175 25.175 0 01-4.244 3.17 15.247 15.247 0 01-.383.219l-.022.012-.007.004-.003.001a.752.752 0 01-.704 0l-.003-.001z" />
                </svg>
            <?php else: ?>
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                     stroke="currentColor" class="w-6 h-6">
                    <path stroke-linecap="round" stroke-linejoin="round"
                          d="M21 8.25c0-2.485-2.099-4.5-4.688-4.5-1.935 0-3.597 1.126-4.312 2.733-.715-1.607-2.377-2.733-4.313-2.733C5.1 3.75 3 5.765 3 8.25c0 7.22 9 12 9 12s9-4.78 9-12z"/>
                </svg>
            <?php endif; ?>
            </button>
            <?php endif; ?>
            <div class="container text-sm">
                <div class="flex justify-between">
                    <p class="mt-0.5"><?= htmlspecialchars(date("Y", strtotime($movie->release_date))) ?></p>
                    <span><?= htmlspecialchars(round($movie->vote_average, 1)) ?><i class="text-yellow-500 not-italic ml-1">★</i></span>
                </div>
                <p class="float-right"><?= htmlspecialchars($movie->runtime) . 'min' ?></p>
                <p class="truncate"><?= htmlspecialchars($movie->original_title) ?></p>
            </div>
        </div>
    <?php endforeach; ?>
</div>

<div class="flex justify-center mt-5">
    <?php if ($getPage > 1): ?>
        <a href="/movies?page=<?= $getPage - 1 ?>"
           class="flex items-center justify-center px-3 h-8 mr-3 text-sm font-medium text-gray-500 bg-white border border-gray-300 rounded-lg hover:bg-gray-100 hover:text-gray-700 dark:bg-gray-800 dark:border-gray-700 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white">
            <svg class="w-3.5 h-3.5 mr-2" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none"
                 viewBox="0 0 14 10">
                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                      d="M13 5H1m0 0 4 4M1 5l4-4"/>
            </svg>
            Previous
        </a>
    <?php endif; ?>

    <?php if ($count): ?>
        <a href="/movies?page=<?= $getPage + 1 ?>"
           class="flex items-center justify-center px-3 h-8 text-sm font-medium text-gray-500 bg-white border border-gray-300 rounded-lg hover:bg-gray-100 hover:text-gray-700 dark:bg-gray-800 dark:border-gray-700 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white">
            Next
            <svg class="w-3.5 h-3.5 ml-2" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none"
                 viewBox="0 0 14 10">
                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                      d="M1 5h12m0 0L9 1m4 4L9 9"/>
            </svg>
        </a>
    <?php endif; ?>
</div>


<?php include_once 'partials/footer.php'; ?>
