<?php
// On détermine sur quelle page on se trouve
if(isset($_GET['pg']) && !empty($_GET['pg'])){
    $currentPage = (int) strip_tags($_GET['pg']);
}else{
    $currentPage = 1;
}
// On se connecte à là base de données
$servername = 'localhost';
$username = 'root';
$password = '';
  try {
  $conn = new PDO("mysql:host=$servername;dbname=afcom", $username, $password);
  // set the PDO error mode to exception
  $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
   $aid = "sa rentre";
  } catch(PDOException $e) {
  $aid = "Connection failed: " . $e->getMessage();
}
// echo  $aid;

// On détermine le nombre total d'articles
$sql = 'SELECT COUNT(*) AS nb_articles FROM `produit`;';

// On prépare la requête
$query = $conn->prepare($sql);

// On exécute
$query->execute();

// On récupère le nombre d'articles
$result = $query->fetch();

$nbArticles = (int) $result['nb_articles'];

// On détermine le nombre d'articles par page
$parPage = 12;

// On calcule le nombre de pages total
$pages = ceil($nbArticles / $parPage);

// Calcul du 1er article de la page
$premier = ($currentPage * $parPage) - $parPage;

$sql = 'SELECT * FROM `produit` ORDER BY `prd_id` DESC LIMIT :premier, :parpage;';

// On prépare la requête
$query = $conn->prepare($sql);

$query->bindValue(':premier', $premier, PDO::PARAM_INT);
$query->bindValue(':parpage', $parPage, PDO::PARAM_INT);

// On exécute
$query->execute();

// On récupère les valeurs dans un tableau associatif
$articles = $query->fetchAll(PDO::FETCH_ASSOC);

// require_once('close.php');
?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>
    <main class="container">
        <div class="row">
            <section class="col-12">
                <h1>Liste des articles</h1>
                <table class="table">
                    <thead>
                        <th>ID</th>
                        <th>Titre</th>
                        <th>Date</th>
                    </thead>
                    <tbody>
                        <?php
                        foreach($articles as $article){
                        ?>
                            <tr>
                                <td><?= $article['prd_id'] ?></td>
                                <td><?= $article['prd_libelle'] ?></td>
                                <td><?= $article['prd_libelle'] ?></td>
                            </tr>
                        <?php
                        }
                        ?>
                    </tbody>
                </table>
                <nav>
                    <ul class="pagination">
                        <!-- Lien vers la page précédente (désactivé si on se trouve sur la 1ère page) -->
                        <li class="page-item <?= ($currentPage == 1) ? "disabled" : "" ?>">
                            <a href="./?pg=1" class="page-link" title="Début"> << </a>
                        </li>
                        <li class="page-item <?= ($currentPage == 1) ? "disabled" : "" ?>">
                            <a href="./?pg=<?= $currentPage - 1 ?>" class="page-link" title="Précédent"> < </a>
                        </li>
                        <?php
                          $d1=1; $d2=2; $d3=3; $trois_point = false;
                           $f1=$pages-2; $f2=$pages-1; $f3=$pages-0;

                           // 
                           $debut =1;
                           // if($pages<10)
                           //  {
                           if(($currentPage <> $f1 && $currentPage <> $f2 && $currentPage <> $f3) && $currentPage > $d2 )
                              {
                                $debut =  $currentPage - 1;
                                $d1=$currentPage-1; $d2=$currentPage; $d3=$currentPage+1;
                                }
                              // }
                          
                         for($page = $debut; $page <= $pages; $page++): ?>
                          <!-- Lien vers chacune des pages (activé si on se trouve sur la page correspondante) -->
                          <?php 
                            if($pages<10)
                            {
                              ?>
                                <li class="page-item <?= ($currentPage == $page) ? "active" : "" ?>">
                                    <a href="./?pg=<?= $page ?>" class="page-link"><?= $page ?></a>
                                </li>
                              <?php
                            }
                            else
                            {
                             
                              // if(($currentPage <> $f1 || $currentPage <> $f2 || $currentPage <> $f3) && $currentPage > $d2 )
                              // {
                              //     $d1=$currentPage-1; $d2=$currentPage; $d3=$currentPage+1;
                              // }
                              if($page == $d1 || $page == $d2 || $page == $d3 ){
                              ?>
                                 <li class="page-item <?= ($currentPage == $page) ? "active" : "" ?>">
                                    <a href="./?pg=<?= $page ?>" class="page-link"><?= $page ?></a>
                                </li>
                              <?php
                              }
                              else
                              {
                                if($trois_point==false)
                                {
                                  echo '<li> &nbsp; . &nbsp; . &nbsp; . &nbsp; </li>';
                                  $trois_point = true;
                                 }

                                 if($page == $f1 || $page == $f2 || $page == $f3 ){
                                     ?>
                                     <li class="page-item <?= ($currentPage == $page) ? "active" : "" ?>">
                                        <a href="./?pg=<?= $page ?>" class="page-link"><?= $page ?></a>
                                    </li>
                                  <?php
                                 }
                              }
                            }
                           ?>
                          
                        <?php endfor ?>
                          <!-- Lien vers la page suivante (désactivé si on se trouve sur la dernière page) -->
                          <li class="page-item <?= ($currentPage == $pages) ? "disabled" : "" ?>">
                            <a href="./?pg=<?= $currentPage + 1 ?>" class="page-link" title="Suivant" > > </a>
                        </li>
                          <li class="page-item <?= ($currentPage == $pages) ? "disabled" : "" ?>">
                            <a href="./?pg=<?= $pages ?>" class="page-link" title="Fin"> >> </a>
                        </li>
                    </ul>
                </nav>
            </section>
        </div>
    </main>
</body>
</html>
