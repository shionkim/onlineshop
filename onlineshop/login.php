<?php include('server.php') ?>

<?=template_header('Login')?>

<div class="formbg-outer content-wrapper login">
    <h1>Login</h1>
    <div class="formbg">
        <div class="formbg-inner padding-horizontal--48">
            <span class="padding-bottom--15">Bei Ihrem Konto anmelden</span>
            <form id="stripe-login" method="post" action="index.php?page=login">
            <div class="field padding-bottom--24">
                <label for="username">Benutzername</label>
                <input type="text" name="username">
            </div>
            <div class="field padding-bottom--24">
                <div class="grid--50-50">
                    <label for="password">Passwort</label>
                </div>
                <input type="password" name="password">
            </div>
            <div class="field padding-bottom--24">
                <input type="submit" name="login_user" value="Anmelden" class>
            </div>
            </form>
            <?php include('errors.php'); ?>
        </div>
    </div>
</div>
            <div class="footer-link padding-top--24 padding-bottom--24">
            <span>Sie haben noch kein Konto? <a href="index.php?page=register">Registrieren</a></span>
            </div>
</div>

<?=template_footer()?>