#  Projet MySQL – Tifosi

##  Contexte

Ce projet a été réalisé dans le cadre d’un exercice de conception de base de données avec **MySQL**.

Le restaurant **Tifosi**, spécialisé dans la street-food italienne, souhaite disposer d’une base de données permettant de gérer :

* les focaccias
* les ingrédients
* les boissons et leurs marques
* les menus
* les clients et leurs achats

L’objectif est de concevoir le schéma de la base, de l’alimenter avec des données fournies, puis de vérifier son bon fonctionnement à l’aide de requêtes SQL.

---

## 🗂️ Contenu du dépôt

```
📁 tifosi
├── schema.sql          # Création de la base et des tables
├── data.sql            # Insertion des données de test
├── requetes_test.sql   # Requêtes de vérification
└── README.md           # Documentation du projet
```

---

##  Technologies utilisées

* MySQL Server 8.x
* MySQL Workbench
* SQL

---

##  Structure de la base de données

La base de données `tifosi` contient les tables suivantes :

### Tables principales

* `ingredient`
* `focaccia`
* `marque`
* `boisson`
* `menu`
* `client`

### Tables de liaison

* `comprend` : liaison focaccia ↔ ingrédient (avec quantité)
* `est_constitue` : liaison menu ↔ focaccia
* `contient` : liaison menu ↔ boisson
* `achete` : liaison client ↔ menu (avec date d’achat)

Les relations sont gérées à l’aide de **clés étrangères** afin de garantir l’intégrité des données.

---

## ▶️ Installation et utilisation

### 1️⃣ Création du schéma

Exécuter le fichier :

```sql
schema.sql
```

Ce script :

* crée la base de données `tifosi`
* crée l’ensemble des tables avec leurs contraintes

---

### 2️⃣ Insertion des données

Exécuter le fichier :

```sql
data.sql
```

Ce script insère les données de test issues des fichiers fournis (ingrédients, focaccias, boissons, marques).

---

### 3️⃣ Vérification

Exécuter le fichier :

```sql
requetes_test.sql
```

Il contient **10 requêtes de test** permettant de vérifier que la base de données répond bien aux besoins exprimés.

---

##  Requêtes de vérification (liste)

1. Liste des focaccias par ordre alphabétique
2. Nombre total d’ingrédients
3. Prix moyen des focaccias
4. Liste des boissons avec leur marque
5. Ingrédients de la focaccia *Raclaccia*
6. Nombre d’ingrédients par focaccia
7. Focaccia avec le plus d’ingrédients
8. Focaccias contenant de l’ail
9. Ingrédients non utilisés
10. Focaccias sans champignons

---

## ✅ Conclusion

Ce projet permet de mettre en pratique :

* la modélisation de données
* la création d’un schéma relationnel en SQL
* l’utilisation des clés primaires et étrangères
* l’écriture de requêtes SQL de sélection et d’agrégation

La base de données obtenue est fonctionnelle, cohérente et conforme au cahier des charges fourni.

---
