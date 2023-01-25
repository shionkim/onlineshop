<?=template_header('Contact')?>

<div class="cart content-wrapper downloaddiv">
    <h1>Archiv</h1>
    <form  method="get" class="download" action="files/Beschreibung%20.pdf">
        <button class="btn" name="search"><i class="fas fa-download"></i></button>
        <input type="submit" value="Konzept">
    </form>
    <form method="get" class="download" action="files/onlineshop.zip">
        <button class="btn" name="search"><i class="fas fa-download"></i></button>
        <input type="submit" value="PHP-Quellcode">
    </form>
    <form method="get" class="download" action="files/shoppingcart.sql">
        <button class="btn" name="search"><i class="fas fa-download"></i></button>
        <input type="submit" value="SQL-Export">
    </form>
</div>

<?=template_footer()?>