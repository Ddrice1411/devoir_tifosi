USE tifosi;

-- =========================================================
-- Requête 1
-- But : Afficher la liste des noms des focaccias par ordre alphabétique croissant
-- =========================================================
SELECT nom
FROM focaccia
ORDER BY nom ASC;


-- =========================================================
-- Requête 2
-- But : Afficher le nombre total d'ingrédients
-- =========================================================
SELECT COUNT(*) AS total_ingredients
FROM ingredient;


-- =========================================================
-- Requête 3
-- But : Afficher le prix moyen des focaccias
-- =========================================================
SELECT AVG(prix) AS prix_moyen
FROM focaccia;


-- =========================================================
-- Requête 4
-- But : Afficher la liste des boissons avec leur marque, triée par nom de boisson
-- =========================================================
SELECT b.nom AS boisson, m.nom AS marque
FROM boisson b
JOIN marque m ON b.id_marque = m.id_marque
ORDER BY b.nom ASC;


-- =========================================================
-- Requête 5
-- But : Afficher la liste des ingrédients pour la focaccia "Raclaccia"
-- =========================================================
SELECT i.nom
FROM ingredient i
JOIN comprend c ON i.id_ingredient = c.id_ingredient
JOIN focaccia f ON f.id_focaccia = c.id_focaccia
WHERE f.nom = 'Raclaccia';


-- =========================================================
-- Requête 6
-- But : Afficher le nom et le nombre d'ingrédients pour chaque focaccia
-- =========================================================
SELECT f.nom, COUNT(c.id_ingredient) AS nombre_ingredients
FROM focaccia f
LEFT JOIN comprend c ON f.id_focaccia = c.id_focaccia
GROUP BY f.nom;


-- =========================================================
-- Requête 7
-- But : Afficher le nom de la focaccia qui a le plus d'ingrédients
-- =========================================================
SELECT f.nom
FROM focaccia f
JOIN comprend c ON f.id_focaccia = c.id_focaccia
GROUP BY f.nom
ORDER BY COUNT(c.id_ingredient) DESC
LIMIT 1;


-- =========================================================
-- Requête 8
-- But : Afficher la liste des focaccias qui contiennent de l'ail
-- =========================================================
SELECT DISTINCT f.nom
FROM focaccia f
JOIN comprend c ON f.id_focaccia = c.id_focaccia
JOIN ingredient i ON i.id_ingredient = c.id_ingredient
WHERE i.nom = 'ail';


-- =========================================================
-- Requête 9
-- But : Afficher la liste des ingrédients inutilisés
-- =========================================================
SELECT i.nom
FROM ingredient i
LEFT JOIN comprend c ON i.id_ingredient = c.id_ingredient
WHERE c.id_ingredient IS NULL;


-- =========================================================
-- Requête 10
-- But : Afficher la liste des focaccias qui n'ont pas de champignons
-- =========================================================
SELECT f.nom
FROM focaccia f
WHERE f.id_focaccia NOT IN (
    SELECT c.id_focaccia
    FROM comprend c
    JOIN ingredient i ON c.id_ingredient = i.id_ingredient
    WHERE i.nom = 'champignons'
);