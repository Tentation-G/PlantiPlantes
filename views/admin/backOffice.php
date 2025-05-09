<?php ob_start(); //Commence l'enregistrement 

?>
<div class="container">
    <div class="data">
        <?php 
            echo "User Co : " . getAllConnectedUsers() . "<br>";
            echo "User Deco : " . getAllDisconnectedUsers() . "<br>";
        ?>
    </div>
    <?php

        $data = getUserStatusCounts();
        $connected = $data['connected'];
        $disconnected = $data['disconnected'];

    ?>
    
    
    <!-- User Part | Connection Graph | User List Card | User List Tab -->
    <div class="container ">
        <!-- User card + Connection Graph -->
        <section class="sectionBo1">
            <div class="user-card-container">
                <?php
                $users = getAllUsersCard();
                $roles = [
                    '1' => 'admin', 
                    '2' => 'mod', 
                    '3' => 'user'
                ];
                $connectedCss = [
                    '1' => 'connectedColor',
                    '0' => 'discconnectedColor'
                ];

                foreach ($users as $user): 
                    $userRoleBorder = $roles[$user['id_role']] ?? null;
                    $connectionStatusColor = $connectedCss[$user['is_connected']] ?? null;
                ?>
                <div class="user-card-wrapper <?= $userRoleBorder ?>">
                    <h2><?= $user['id'] ?></h2>
                    <div class="user-icon-wrapper <?= $connectionStatusColor ?>">
                        <svg fill="currentColor" width="100px" height="100px" viewBox="0 0 128 128" id="Layer_1" version="1.1" xml:space="preserve"xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                            <g>
                                <path d="M30,49c0,18.7,15.3,34,34,34s34-15.3,34-34S82.7,15,64,15S30,30.3,30,49z M90,49c0,14.3-11.7,26-26,26S38,63.3,38,49   s11.7-26,26-26S90,34.7,90,49z" />
                                <path d="M24.4,119.4C35,108.8,49,103,64,103s29,5.8,39.6,16.4l5.7-5.7C97.2,101.7,81.1,95,64,95s-33.2,6.7-45.3,18.7L24.4,119.4z" />
                            </g>
                        </svg>
                    </div>
                    <div class="user-content">
                        <h2 class="user-name"><?= $user['nom']?> <?=$user['prenom']?></h2>
                        <p class="user-email"><?= $user['email'] ?></p>
                        <p class="user-tel"><?= $user['tel'] ?></p>
                    </div>
                </div>
                <?php endforeach; ?>
            </div>
            <div id="userStatusChart"></div>
        </section>
        <!-- User Tab-->
        <section class="sectionBo2">
            <div class="table-container">
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Email</th>
                            <th>Nom</th>
                            <th>Prénom</th>
                            <th>Téléphone</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $users = getAllUsers();
                        foreach ($users as $user): ?>
                                <tr>
                                    <td><?= $user['id'] ?></td>
                                    <td><?= $user['email'] ?></td>
                                    <td><?= $user['nom'] ?></td>
                                    <td><?= $user['prenom'] ?></td>
                                    <td><?= $user['tel'] ?></td>
                                    <td>
                                        <a href="<?= URL; ?>?p=updateUserView&id=<?= $user['id'] ?>" class="btn-action btn-mod"><i class="fa fa-pencil" aria-hidden="true"></i></a>
                                        <a href="<?= URL; ?>controllers/userCrud/deleteUser.php?id=<?= $user['id'] ?>" class="btn-action btn-supp"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                                    </td>
                                </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </section>
        <!-- User log + Global Log Graph -->
        <section class="sectionBo3">
            <div class="log-chart"></div>
            <div class="table-container">
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Utilisateur</th>
                            <th>Action</th>
                            <th>Date et Heure</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php 
                        $logs = afficherLogs();
                        foreach ($logs as $log): ?>
                            <tr>
                                <td><?= $log['id'] ?></td>
                                <td><?= $log['nom'] . ' ' . $log['prenom'] ?></td>
                                <td class="<?= $log['action'] === 'connexion' ? 'connexion-color' : 'deconnexion-color' ?>">
                                    <?= htmlspecialchars($log['action']) ?>
                                </td>
                                <td><?= htmlspecialchars($log['timestamp']) ?></td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </section>

        <!-- Product Tab -->
        <section class="sectionBo4">
            <div class="table-container">
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Nom</th>
                            <th>Description</th>
                            <th>Prix</th>
                            <th>Stock</th>
                            <th>Category_id</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $product = getAllProducts();
                        $productId = [
                            '1' => 'fleur', 
                            '2' => 'table', 
                            '3' => 'velo'
                        ];
                        foreach ($product as $product): 
                            $productCategory = $productId[$product['category_id']] ?? null;
                        ?>
                                <tr>
                                    <td><?= $product['product_id'] ?></td>
                                    <td><?= $product['name'] ?></td>
                                    <td class="col-description"><?= $product['description'] ?></td>
                                    <td><?= $product['price'] ?></td>
                                    <td><?= $product['stock'] ?></td>
                                    <td><?= $productCategory ?></td>
                                    <td>
                                        <a href="<?= URL; ?>controllers/userCrud/updateUser.php?id=<?= $user['id'] ?>" class="btn-action btn-mod"><i class="fa fa-pencil" aria-hidden="true"></i></a>
                                        <a href="<?= URL; ?>controllers/userCrud/deleteUser.php?id=<?= $user['id'] ?>" class="btn-action btn-supp"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                                    </td>
                                </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </section>
        <!-- Form d'ajout -->
        <section class="sectionBo5">
            <!-- Ajout Produit -->
            <div class="form-container">
                <div class="form-wrapper">
                    <h3 class="center"> Ajout product en base de donnée </h3>
                    <form action="index.php?p=addProduct" class="" method="post">
                        <div class="user-box">
                            <input type="text" id="productName" name="productName" required="">
                            <label for="productName">Nom produit</label>
                        </div>
                        <div class="user-box">
                            <input type="text" id="productImage" name="productImage" required="">
                            <label for="productImage">Nom fichier image produit</label>
                        </div>
                        <div class="user-box">             
                            <input type="text" id="productDescription" name="productDescription" required="">
                            <label for="productDescription">description produit</label>  
                        </div>
                        <div class="user-box">               
                            <input type="text" id="productPrice" name="productPrice" required="">
                            <label for="productPrice">Prix produit</label> 
                        </div>

                        <div class="product-box">
                            <div class="radio-group">
                                <div class="radio-item">
                                    <label for="fleur">Fleur</label>
                                    <input type="radio" id="fleur" name="productCat" value="1" required>
                                </div>

                                <div class="radio-item">
                                    <label for="table">Table</label>
                                    <input type="radio" id="table" name="productCat" value="2">
                                </div>

                                <div class="radio-item">
                                    <label for="velo">Velo</label>
                                    <input type="radio" id="velo" name="productCat" value="3">
                                </div>
                            </div>
                        </div>

                        <div class="item-center">
                            <input type="submit" name="bouton" value="push" class="form-btn">
                        </div> 
                    </form>
                </div>    
            </div>
            <!-- Ajout User -->

        </section>
    </div>

</div>

<?php
    $content = ob_get_clean(); //copie l'enregistrement dans la variable content
    $title = "Back Office";
    require('./views/layout/template-fontpage.php');
?>