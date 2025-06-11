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

### Creation de compte utilisateur

Le mot de passe doit contenir :
- au minimum 12 caracteres, donc au moins :
    - une majuscule
    - une minuscule
    - un chiffe
    - caractere special

### Connexion a un compte 

- Le compte est bloqué suite a 3 tentatives erronnées
- Nouvelle tentative apres 1 minutes d'attente

---

## 🚀 Procédure de tests fonctionnels

### 1. Création de compte
TF-01 – Mot de passe conforme
Données : MotDePasse@1234Ab (16 car., maj., min., chiffre, spécial)
Attendu : création réussie, message de confirmation.

TF-02 – Mot de passe trop court
Données : Ab1@5678X9 (10 car.)
Attendu : échec, “Le mot de passe doit contenir au moins 12 caractères.”

TF-03 – Sans majuscule
Données : abcd1234@#$%ef
Attendu : échec, “Au moins une majuscule requise.”

TF-04 – Sans minuscule
Données : ABCD1234@#$%EF
Attendu : échec, “Au moins une minuscule requise.”

TF-05 – Sans chiffre
Données : Abcdef@ghIJK!
Attendu : échec, “Au moins un chiffre requis.”

TF-06 – Sans caractère spécial
Données : Abcd1234abcdEFG
Attendu : échec, “Au moins un caractère spécial requis.”

### 2. Connexion
TF-07 – Verrouillage après 3 échecs
Étapes : 3 tentatives avec mot de passe incorrect
Attendu : compte bloqué, “Email ou mot de passe incorrect. Tentative 3/3”

TF-08 – Tentative avant 1 min
Étapes : essai immédiat après TF-07
Attendu : échec, “Votre compte est bloqué pour 1 minutes, réessayez dans 1 minute.”

TF-09 – Déblocage automatique
Étapes : attendre 1 minute pile, puis mot de passe correct
Attendu : connexion réussie.

TF-10 – Nouvelle tentative trop tôt
Étapes : attendre 30 s après TF-07, puis mot de passe correct
Attendu : échec, “Compte toujours bloqué, réessayez dans XX s.”

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

