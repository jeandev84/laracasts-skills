<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Demo</title>
    <style>
        /*
        body {
            display: grid;
            place-items: center;
            height: 100vh;
            margin: 0;
            font-family: sans-serif;
        }
       */
    </style>
</head>
<body>

   <h1>Recommended Books</h1>

   <?php
    $books = [
        [
            "name" => "Do Androids Dream of Electric Sheep",
            "author" => "Philip K. Dick",
            "releaseYear" => 1968,
            "purchaseUrl" => "http://example.com"
        ],
        [
            "name" => "Project Hail Mary",
            "author" => "Andy Weir",
            "releaseYear" => 2021,
            "purchaseUrl" => "http://example.com"
        ],
        [
            "name" => "The Martian",
            "author" => "Andy Weir",
            "releaseYear" => 2011,
            "purchaseUrl" => "http://example.com"
        ],
    ];


    function filterBooksByAuthor(array $books, string $author) {

        $filteredBooks = [];

        foreach ($books as $book) {
            if ($book['author'] === $author) {
                $filteredBooks[] = $book;
            }
        }

        return $filteredBooks;
    }

   function filterBooksByYear(array $books, int $year) {
       $filteredBooks = [];

       foreach ($books as $book) {
           if ($book['releaseYear'] === $year) {
               $filteredBooks[] = $book;
           }
       }

       return $filteredBooks;
   }

   ?>
   <ul>
      <?php foreach (filterBooksByAuthor($books, 'Andy Weir') as $book): ?>
          <li>
              <a href="<?= $book['purchaseUrl'] ?>">
                  <?= $book['name'] ?> (<?= $book['releaseYear'] ?>) - By <?= $book['author'] ?>
              </a>
          </li>
     <?php endforeach; ?>
   </ul>

   <ul>
       <?php foreach (filterBooksByAuthor($books, 'Philip K. Dick') as $book): ?>
           <li>
               <a href="<?= $book['purchaseUrl'] ?>">
                   <?= $book['name'] ?> (<?= $book['releaseYear'] ?>) - By <?= $book['author'] ?>
               </a>
           </li>
       <?php endforeach; ?>
   </ul>

</body>
</html>