<?php include('server.php') ?>

<?=template_header('Register')?>

<div class="formbg-outer content-wrapper register">
    <h1>Ein Konto erstellen</h1>
    <div class="formbg">
        <div class="formbg-inner padding-horizontal--48">
            <span class="padding-bottom--15">Geben Sie Ihre Kontodaten ein</span>
            <form id="stripe-login" method="post" action="index.php?page=register">
            <div class="field padding-bottom--24">
                <label for="username">Benutzername</label>
                <input type="text" name="username" value="<?php echo $username; ?>">
            </div>
            <div class="field padding-bottom--24">
                <div class="grid--50-50">
                    <label for="email">E-Mail</label>
                </div>
                <input type="email" name="email" value="<?php echo $email; ?>">
            </div>
            <div class="field padding-bottom--24">
                <div class="grid--50-50">
                    <label for="address">Adresse</label>
                </div>
                <input type="text" name="address" value="<?php echo $address; ?>">
            </div>
            <div class="field padding-bottom--24">
                <div class="grid--50-50">
                    <label for="password">Passwort</label>
                </div>
                <input type="password" name="password_1">
            </div>
            <div class="field padding-bottom--24">
                <div class="grid--50-50">
                    <label for="password">Passwort wiederholen</label>
                </div>
                <input type="password" name="password_2">
            </div>
            <div class="field padding-bottom--24">
                <input type="submit" name="reg_user" value="Registrieren" class>
            </div>
            </form>
            <?php include('errors.php'); ?>
        </div>
    </div>
</div>
            <div class="footer-link padding-top--24 padding-bottom--24">
            <span>Haben Sie bereits ein Konto? <a href="index.php?page=login">Anmelden</a></span>
            </div>
</div>

<?=template_footer()?>