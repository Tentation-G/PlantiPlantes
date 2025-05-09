<?php ob_start(); //Commence l'enregistrement  ?>
<div class="compte-container">
    <h1 id="h1">Mon espace perso</h1>
    <div class="col-4 m-auto ulDataUser">
        <ul>
            <li>Email:<?= $_SESSION['user']['email'] ?></li>
            <li>Nom:<?= $_SESSION['user']['nom'] ?></li>
            <li>Prenom:<?= $_SESSION['user']['prenom'] ?></li>
            <!-- <li>Télèphone<?= $_SESSION['user']['tel'] ?></li> -->
        </ul>
    </div>
    <div class="row col-8">
        <div class="col-4">
            <a href="<?= URL; ?>compte.php?action=modifier" class="btn btn-yellow">Modifier mon compte</a>
        </div>
        <div class="col-4">
            <a href="<?= URL; ?>compte.php?action=password" class="btn btn-yellow">Modifier mon mot de passe </a>
        </div>
        <div class="col-4">
            <a href="<?= URL; ?>compte.php?action=delete" class="btn btn-yellow " onclick="return confirm('Etes vous sûr de vouloir supprimer votre compte?')">Supprimer mon compte</a>
        </div>
    </div>
</div>

<?php
    $content = ob_get_clean(); //copie l'enregistrement dans la variable content
    $title = "Compte";
    require('./views/layout/template-fontpage.php');
?>