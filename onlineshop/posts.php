<?php
// The amounts of products to show on each page
$num_products_on_each_page = 4;
// The current page, in the URL this will appear as index.php?page=products&p=1, index.php?page=products&p=2, etc...
$current_page = isset($_GET['p']) && is_numeric($_GET['p']) ? (int)$_GET['p'] : 1;
// Select products ordered by the date added
$stmt = $pdo->prepare('SELECT * FROM posts ORDER BY date_added DESC LIMIT ?,?');
// bindValue will allow us to use integer in the SQL statement, we need to use for LIMIT
$stmt->bindValue(1, ($current_page - 1) * $num_products_on_each_page, PDO::PARAM_INT);
$stmt->bindValue(2, $num_products_on_each_page, PDO::PARAM_INT);
$stmt->execute();
// Fetch the products from the database and return the result as an Array
$posts = $stmt->fetchAll(PDO::FETCH_ASSOC);

// Get the total number of products
$total_posts = $pdo->query('SELECT * FROM posts')->rowCount();
?>

<?=template_header('Blog')?>

<div class="products content-wrapper">
    <h1>Blog</h1>
    <p><?=$total_posts?> Beiträge</p>
    <div class="products-wrapper">
        <?php foreach ($posts as $post): ?>
        <a href="index.php?page=post&id=<?=$post['id']?>" class="product">
            <img src="imgs/<?=$post['img']?>" width="200" height="200" alt="<?=$post['name']?>">
            <span class="name"><?=$post['name']?></span>
        </a>
        <?php endforeach; ?>
    </div>
    <div class="buttons">
        <?php if ($current_page > 1): ?>
        <a href="index.php?page=posts&p=<?=$current_page-1?>">Prev</a>
        <?php endif; ?>
        <?php if ($total_posts > ($current_page * $num_products_on_each_page) - $num_products_on_each_page + count($posts)): ?>
        <a href="index.php?page=posts&p=<?=$current_page+1?>">Weiter</a>
        <?php endif; ?>
    </div>
</div>

<?=template_footer()?>