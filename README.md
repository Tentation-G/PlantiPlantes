# 🌿 PlantiPlantes – Site E-commerce Écologique

PlantiPlantes est un site e-commerce fictif développé pour l'entreprise artisanale **Nature & Involture**, spécialisée dans la vente de produits durables :  
- 🌸 Fleurs  
- 🪵 Tables en bois recyclé  
- 🚲 Vélos écologiques  

---

## 🧾 Cahier des Charges

- 💼 **Client** : Nature & Involture  
- 🎯 **Objectif** : Vente en ligne avec espace client et back-office  
- ⏱️ **Délai** : Livraison entre 4 à 8 semaines  
- 💻 **Technos** : PHP / HTML / CSS / MySQL  
- 🧱 **Architecture** : MVC (Modèle Vue Contrôleur)  
- 🔒 **Sécurité** : Mots de passe hashés  
- 🛠️ **Dév. local** : WAMP + Visual Studio Code  
- 🧪 **Tests navigateurs** : Chrome, Firefox, Edge  
- 🖼️ **Graphisme** : Réalisé avec Canva

---

## 🖼️ Fonctionnalités principales

### 🏠 Accueil
- Interface claire et ergonomique
- Accès rapide aux catégories de produits

### 👤 Espace Client
- Inscription et connexion
- Accès au profil utilisateur

### 🛒 Panier
- Ajouter / retirer des produits

### 🔐 Espace Admin (Back-Office)
- Gérer les produits
- Gérer les utilisateurs

---

## 🔐 Identifiants de test

| Rôle         | Email               | Mot de passe |
|--------------|---------------------|--------------|
| Administrateur | `F/adm@email.com` | `123`        |
| Utilisateur    | `juju@email.com`  | `123`        |

---

## 🔐 Regles de securité

# Creation de compte utilisateur

Le mot de passe doit contenir :
- au minimum 12 caracteres, donc au moins :
    - une majuscule
    - une minuscule
    - un chiffe
    - caractere special

---

## 🛠️ Technologies utilisées

- **Frontend** : HTML5 / CSS3  
- **Backend** : PHP (PDO pour la base de données)  
- **Base de données** : MySQL  
- **Architecture** : MVC  
- **Éditeur** : VS Code  
- **Serveur local** : WAMP  
- **Base de données** : `plantiplantes`  

---

## 🛠️ Documentation technique

### 🔌 Connexion BDD
- Effectuée avec **PDO**
- Paramètres dans `models/dbModels.php`

### 🔐 Sécurité
- Mots de passe des utilisateurs **hashés** avec un algorithme sécurisé

---

## 📦 Installation du projet

### 1. Prérequis
- Installer **WAMP**
- Télécharger ce projet depuis GitHub

### 2. Base de données
- Lancer **phpMyAdmin**
- Créer une base de données nommée `plantiplantes`
- Importer le fichier `.sql` fourni dans le dossier du projet

### 3. Fichiers du projet
- Déplacer le dossier `PlantiPlantes` dans le répertoire de votre serveur local  
  Exemple : `C:\wamp64\www\PlantiPlantes`

### 4. Configuration

#### a. Connexion à la BDD  
Modifier les identifiants si nécessaire dans :  
`/PlantiPlantes/models/dbModels.php`

#### b. Chemins (si le projet est dans un sous-dossier)  
Dans :  
`/PlantiPlantes/core/config.php`, adapter :

```

define('URL_ASSETS','http://localhost/PlantiPlantes/assets/');
// devient
define('URL_ASSETS','http://localhost/votre-chemin/PlantiPlantes/assets/');

define('URL','http://localhost/PlantiPlantes/');
// devient
define('URL','http://localhost/votre-chemin/PlantiPlantes/');

```

### 5. Lancer le projet
- Accéder via le navigateur à :

```
http://localhost/PlantiPlantes/
```

---

## 📁 Arborescence simplifiée

```
PlantiPlantes/
├── core/
├── models/
├── views/
├── assets/
├── controllers/
└── plantiplantes.sql
```

