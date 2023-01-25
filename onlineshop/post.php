<?php
// Check to make sure the id parameter is specified in the URL
if (isset($_GET['id'])) {
    // Prepare statement and execute, prevents SQL injection
    $stmt = $pdo->prepare('SELECT * FROM posts WHERE id = ?');
    $stmt->execute([$_GET['id']]);
    // Fetch the product from the database and return the result as an Array
    $post = $stmt->fetch(PDO::FETCH_ASSOC);
    // Check if the product exists (array is not empty)
    if (!$post) {
        // Simple error to display if the id for the product doesn't exists (array is empty)
        exit('Post does not exist!');
    }
} else {
    // Simple error to display if the id wasn't specified
    exit('Product does not exist!');
}
?>

<?=template_header('Blog')?>

<div class="post content-wrapper">
    <img src="imgs/<?=$post['img']?>" width="500" height="500" alt="<?=$post['name']?>">
    <div>
        <h1 class="name"><?=$post['name']?></h1>
        <div class="description">
            <?=$post['desc']?>
        </div>
    </div>
</div>

<?=template_footer()?>