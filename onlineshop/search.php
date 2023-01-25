<?php 

include('server.php');

?>

<?=template_header('Search')?>

<div class="cart content-wrapper">
    <h1>  </h1>
    <form class="searchbar" action="index.php?page=search" method="post">
        <button class="btn" name="search"><i class="fas fa-search"></i></button>
        <input type="text" placeholder="Wonach suchen Sie?" name="search" autocomplete="off">
    </form>
</div>



<div class="cart content-wrapper search1">
    <h1>Suchergebnisse</h1>
    <form action="index.php?page=cart" method="post">
        <table>
            <thead>
                <tr>
                    <td colspan="2">Produkt</td>
                    <td>Preis</td>
                </tr>
            </thead>
            <tbody>
                <?php if (empty($res)): ?>
                <tr>
                    <td colspan="5" style="text-align:center;">Keine Ergebnisse</td>
                </tr>
                <?php else: ?>
                <?php foreach ($res as $product): ?>
                <tr>
                    <td class="img">
                        <a href="index.php?page=product&id=<?=$product['id']?>">
                            <img src="imgs/<?=$product['img']?>" width="50" height="50" alt="<?=$product['name']?>">
                        </a>
                    </td>
                    <td>
                        <a href="index.php?page=product&id=<?=$product['id']?>"><?=$product['name']?></a>
                    </td>
                    <td class="price">&euro;<?=$product['price']?></td>
                </tr>
                <?php endforeach; ?>
                <?php endif; ?>
            </tbody>
        </table>
    </form>
</div>


<?=template_footer()?>