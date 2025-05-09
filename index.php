<?php 
require ('core/config.php');
require ('core/function.php');
//require ('core/debug.php');

require('controllers/userController.php');
require('controllers/adminController.php');
require('controllers/homeController.php');

//http://localhost/projet/plantes-mvc/?p=inscription
if(isset($_GET['p'])){

    switch ($_GET['p']) {
        //
        case 'inscription':
                inscription();
            break;
        case 'connexion':
                connexion();
            break;
        case 'deconnexion':
                deconnexion();
            break;
        
        //
        case 'compte':
                compte();
            break;
        
        //
        case 'backOffice':
                backOffice();
            break;
        case 'addProduct':
                addProduct();
            break;
        
        //
        case 'updateUserView':
                updateUserView();
            break;
        // case 'updateUserAction':
        //     updateUserAction();
        //     break;
        
        default:
                page404();
            break;
    }
    
}else{
    //echo "Aucun paramètre d'url défini";
    home();
}

?>