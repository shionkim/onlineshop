<?php
// The amounts of products to show on each page
$num_products_on_each_page = 10;
// The current page, in the URL this will appear as index.php?page=products&p=1, index.php?page=products&p=2, etc...
$current_page = isset($_GET['p']) && is_numeric($_GET['p']) ? (int)$_GET['p'] : 1;
// Select products ordered by the date added
$stmt = $pdo->prepare('SELECT * FROM faqs ORDER BY question DESC LIMIT ?,?');
// bindValue will allow us to use integer in the SQL statement, we need to use for LIMIT
$stmt->bindValue(1, ($current_page - 1) * $num_products_on_each_page, PDO::PARAM_INT);
$stmt->bindValue(2, $num_products_on_each_page, PDO::PARAM_INT);
$stmt->execute();
// Fetch the products from the database and return the result as an Array
$faqs = $stmt->fetchAll(PDO::FETCH_ASSOC);

// Get the total number of products
$total_faqs = $pdo->query('SELECT * FROM faqs')->rowCount();
?>

<?=template_header('FAQs')?>

<div class="products content-wrapper">
    <h1>FAQs</h1>
    <p><?=$total_faqs?> Fragen</p>
    <div class="faq-wrapper">
        <ul>
            <?php foreach ($faqs as $faq): ?>
                    <li><a href="index.php?page=faq&id=<?=$faq['id']?>" class="faqs"><div><?=$faq['question']?></div></a></li>
            <?php endforeach; ?>
        </ul>
    </div>
    <div class="buttons">
        <?php if ($current_page > 1): ?>
        <a href="index.php?page=faqs&p=<?=$current_page-1?>">Prev</a>
        <?php endif; ?>
        <?php if ($total_fags > ($current_page * $num_products_on_each_page) - $num_products_on_each_page + count($faqs)): ?>
        <a href="index.php?page=faqs&p=<?=$current_page+1?>">Next</a>
        <?php endif; ?>
    </div>
</div>

<?=template_footer()?>