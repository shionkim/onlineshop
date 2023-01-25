<?php
// Check to make sure the id parameter is specified in the URL
if (isset($_GET['id'])) {
    // Prepare statement and execute, prevents SQL injection
    $stmt = $pdo->prepare('SELECT * FROM faqs WHERE id = ?');
    $stmt->execute([$_GET['id']]);
    // Fetch the product from the database and return the result as an Array
    $faq = $stmt->fetch(PDO::FETCH_ASSOC);
    // Check if the product exists (array is not empty)
    if (!$faq) {
        // Simple error to display if the id for the product doesn't exists (array is empty)
        exit('FAQ does not exist!');
    }
} else {
    // Simple error to display if the id wasn't specified
    exit('This Question does not exist!');
}
?>

<?=template_header('FAQ')?>

<div class="post content-wrapper">
    <img src="imgs/<?=$faq['img']?>" width="500" height="500" alt="<?=$faq['question']?>">
    <div>
        <h1 class="name"><?=$faq['question']?></h1>
        <div class="description">
            <?=$faq['desc']?>
            <p id="contact">Haben Sie noch Fragen? <a href="index.php?page=contact">Kundenservice kontaktieren</a></p>
        </div>
    </div>
</div>

<?=template_footer()?>