<?php include('server.php') ?>

<?=template_header('Contact')?>

<div class="formbg-outer content-wrapper register">
    <h1>Gibt es ein Problem?</h1>
    <div class="formbg">
        <div class="formbg-inner padding-horizontal--48">
            <span class="padding-bottom--15">Erklären Sie Ihr Problem</span>
            <form id="stripe-login" method="post" action="index.php?page=register">
            <div class="field padding-bottom--24">
                <div class="grid--50-50">
                    <label for="email">Email</label>
                </div>
                <input type="email" name="email" value="<?php echo $email; ?>">
            </div>
            <div class="field padding-bottom--24">
                <div class="grid--50-50">
                    <label for="password">Frage</label>
                </div>
                <textarea name="question" value="<?php echo $question; ?>" rows="4" cols="50"></textarea>
            </div>
            <div class="field padding-bottom--24">
                <input type="submit" name="faq_user" value="Senden" class>
            </div>
            </form>
            <?php include('errors.php'); ?>
        </div>
    </div>
</div>
<div class="footer-link padding-top--24 padding-bottom--24">
    <span>Haben Sie schon unsere <a href="index.php?page=faqs">FAQs</a> gesehen?</span>
</div>

<?=template_footer()?>