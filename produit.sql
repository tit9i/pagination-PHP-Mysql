-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 06 nov. 2020 à 10:05
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `afcom`
--

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

DROP TABLE IF EXISTS `produit`;
CREATE TABLE IF NOT EXISTS `produit` (
  `prd_id` int(11) NOT NULL AUTO_INCREMENT,
  `prd_code` varchar(50) NOT NULL,
  `prd_libelle` varchar(300) NOT NULL,
  `prd_seuil_normal` double NOT NULL DEFAULT 0,
  `prd_seuil_critique` double NOT NULL DEFAULT 0,
  `prd_type` int(11) NOT NULL DEFAULT 0 COMMENT '0=normal;  1=à allouer',
  `prd_allocation` int(11) NOT NULL,
  `qte_allocation` int(11) NOT NULL,
  PRIMARY KEY (`prd_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2517 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`prd_id`, `prd_code`, `prd_libelle`, `prd_seuil_normal`, `prd_seuil_critique`, `prd_type`, `prd_allocation`, `qte_allocation`) VALUES
(2490, '', 'Vin Saint Seurin', 0, 0, 0, 0, 0),
(2489, '', 'Vin JP Chenet', 0, 0, 0, 0, 0),
(2488, '', 'Vin Journée Spéciale Rouge', 0, 0, 0, 0, 0),
(2487, '', 'Vin Journée Spéciale Rosé', 0, 0, 0, 0, 0),
(2485, '', 'Vin Hugo', 0, 0, 0, 0, 0),
(2486, '', 'Vin Journée Spéciale Blanc', 0, 0, 0, 0, 0),
(2484, '', 'Vin Gionas', 0, 0, 0, 0, 0),
(2483, '', 'Vin Calvet', 0, 0, 0, 0, 0),
(2482, '', 'Vin Biraud Garin', 0, 0, 0, 0, 0),
(2481, '', 'Verre Jetable', 0, 0, 0, 0, 0),
(2480, '', 'Verna Eau Minérale Unité', 0, 0, 0, 0, 0),
(2479, '', 'Verna Eau Minérale Paquet', 0, 0, 0, 0, 0),
(2478, '', 'VEGA Vin', 0, 0, 0, 0, 0),
(2477, '', 'Tropical Jus Unité', 0, 0, 0, 0, 0),
(2476, '', 'Tropical Jus Paquet', 0, 0, 0, 0, 0),
(2475, '', 'Tosso Rouge Liqueur', 0, 0, 0, 0, 0),
(2474, '', 'Tosso Blanc Liqueur', 0, 0, 0, 0, 0),
(2473, '', 'Top SAO Café', 0, 0, 0, 0, 0),
(2472, '', 'Tonic Grand unité', 0, 0, 0, 0, 0),
(2471, '', 'Tonic Grand Paquet', 0, 0, 0, 0, 0),
(2470, '', 'Tomate Samba210g', 0, 0, 0, 0, 0),
(2469, '', 'Tomate Roco70g', 0, 0, 0, 0, 0),
(2468, '', 'Tomate Roco400g', 0, 0, 0, 0, 0),
(2467, '', 'Tomate Roco210g', 0, 0, 0, 0, 0),
(2466, '', 'Suze Liqueur', 0, 0, 0, 0, 0),
(2465, '', 'Sunset Boisson Energisante', 0, 0, 0, 0, 0),
(2464, '', 'Sucre Saint Louis Petit', 0, 0, 0, 0, 0),
(2463, '', 'Sucre Saint Louis Grand', 0, 0, 0, 0, 0),
(2462, '', 'Strorm Petit', 0, 0, 0, 0, 0),
(2461, '', 'Storm Grand', 0, 0, 0, 0, 0),
(2460, '', 'Soklin Omo', 0, 0, 0, 0, 0),
(2459, '', 'Sirop Menthe', 0, 0, 0, 0, 0),
(2458, '', 'Sirop Grenadine', 0, 0, 0, 0, 0),
(2457, '', 'Schnapp\'s', 0, 0, 0, 0, 0),
(2456, '', 'Savon SANTEX Unité', 0, 0, 0, 0, 0),
(2455, '', 'Savon SANTEX Paquet', 0, 0, 0, 0, 0),
(2454, '', 'Savon Rexona Unité', 0, 0, 0, 0, 0),
(2453, '', 'Savon OMO GENIE 350 g', 0, 0, 0, 0, 0),
(2452, '', 'Savon OMO GENIE 260 g', 0, 0, 0, 0, 0),
(2450, '', 'Savon KADO Unité', 0, 0, 0, 0, 0),
(2451, '', 'Savon OMO GENIE 125 g', 0, 0, 0, 0, 0),
(2449, '', 'Savon ISANA', 0, 0, 0, 0, 0),
(2448, '', 'Savon Chat', 0, 0, 0, 0, 0),
(2447, '', 'Savon CD', 0, 0, 0, 0, 0),
(2446, '', 'Savon Balea', 0, 0, 0, 0, 0),
(2445, '', 'Sardine Mafa', 0, 0, 0, 0, 0),
(2444, '', 'Sardine Joly', 0, 0, 0, 0, 0),
(2442, '', 'Sangria Vin', 0, 0, 0, 0, 0),
(2443, '', 'Santex Blanc unité', 0, 0, 0, 0, 0),
(2441, '', 'Saint James Rhum Rouge', 0, 0, 0, 0, 0),
(2440, '', 'Saint James Rhum Blanc', 0, 0, 0, 0, 0),
(2439, '', 'Sachet Thank you', 0, 0, 0, 0, 0),
(2438, '', 'Sachet 50f', 0, 0, 0, 0, 0),
(2437, '', 'Sachet noir 25f', 0, 0, 0, 0, 0),
(2436, '', 'Sachet noir 5f', 0, 0, 0, 0, 0),
(2435, '', 'Sachet noir 10f', 0, 0, 0, 0, 0),
(2434, '', 'Sachet Couleur 5f', 0, 0, 0, 0, 0),
(2433, '', 'Sachet Couleur 10f', 0, 0, 0, 0, 0),
(2432, '', 'Sachet BAFANA', 0, 0, 0, 0, 0),
(2431, '', 'Sac d\'ecolier maternelle', 0, 0, 0, 0, 0),
(2430, '', 'Sac d\'ecolier moyen', 0, 0, 0, 0, 0),
(2429, '', 'Sac de Voyage', 0, 0, 0, 0, 0),
(2428, '', 'Rush unité', 0, 0, 0, 0, 0),
(2427, '', 'Rush Paquet', 0, 0, 0, 0, 0),
(2426, '', 'Royal Majesty Whisky', 0, 0, 0, 0, 0),
(2425, '', 'Royal Gin', 0, 0, 0, 0, 0),
(2424, '', 'Riz Sister Grace5Kg', 0, 0, 0, 0, 0),
(2423, '', 'Red Label', 0, 0, 0, 0, 0),
(2422, '', 'Red Bull Unité', 0, 0, 0, 0, 0),
(2421, '', 'Red Bull Paquet', 0, 0, 0, 0, 0),
(2420, '', 'Rasta Choco Malt Unité', 0, 0, 0, 0, 0),
(2419, '', 'Rasta Choco Malt Paquet', 0, 0, 0, 0, 0),
(2418, '', 'Rasoir Jaune', 0, 0, 0, 0, 0),
(2417, '', 'Rasoir Bleu', 0, 0, 0, 0, 0),
(2415, '', 'RAD Spirale Grand', 0, 0, 0, 0, 0),
(2416, '', 'RAD Spirale Petit', 0, 0, 0, 0, 0),
(2414, '', 'RAD Insecticide', 0, 0, 0, 0, 0),
(2413, '', 'Pure Water unité', 0, 0, 0, 0, 0),
(2412, '', 'Pure Water Sachet', 0, 0, 0, 2413, 30),
(2411, '', 'Prafum La Rive Queen', 0, 0, 0, 0, 0),
(2409, '', 'Plat jetable petit paquet', 0, 0, 0, 0, 0),
(2410, '', 'Plat Jetable Petit unité', 0, 0, 0, 0, 0),
(2408, '', 'Plat Jetable Grand unité', 0, 0, 0, 0, 0),
(2406, '', 'Pique-Dent', 0, 0, 0, 0, 0),
(2407, '', 'Plat Jetable Grand paquet', 0, 0, 0, 0, 0),
(2405, '', 'Pipette', 0, 0, 0, 0, 0),
(2404, '', 'Pile Petite', 0, 0, 0, 0, 0),
(2403, '', 'Pile Moyene', 0, 0, 0, 0, 0),
(2402, '', 'Pile Grande', 0, 0, 0, 0, 0),
(2400, '', 'Parfum Sexy Rose', 0, 0, 0, 0, 0),
(2401, '', 'Pâte dentifrice', 0, 0, 0, 0, 0),
(2399, '', 'Parfum Mini Sexy Violet', 0, 0, 0, 0, 0),
(2398, '', 'Parfum La Rive Taste', 0, 0, 0, 0, 0),
(2397, '', 'Parfum La Rive In', 0, 0, 0, 0, 0),
(2396, '', 'Parfum La Rive Cute', 0, 0, 0, 0, 0),
(2395, '', 'Parfum La Rive', 0, 0, 0, 0, 0),
(2394, '', 'Parasel cube bio', 0, 0, 0, 0, 0),
(2393, '', 'Papier Serviette PAPYRUS', 0, 0, 0, 0, 0),
(2392, '', 'Papier Serviette KOKKETT Unité', 0, 0, 0, 0, 0),
(2391, '', 'Papier Serviette KOKETT', 0, 0, 0, 0, 0),
(2390, '', 'Papier Serviette JUMBO', 0, 0, 0, 0, 0),
(2389, '', 'Papier Mouchoir unité', 0, 0, 0, 0, 0),
(2388, '', 'Papier Mouchoir Paquet', 0, 0, 0, 0, 0),
(2387, '', 'Papier Hygénique TULIPP Sachet', 0, 0, 0, 0, 0),
(2386, '', 'Papier Hygiénique TULIPPE Unité', 0, 0, 0, 0, 0),
(2385, '', 'Papier Hygénique Clean & Soft Unité', 0, 0, 0, 0, 0),
(2384, '', 'Papier Hygénique Clean & Soft Paquet', 0, 0, 0, 0, 0),
(2383, '', 'Papa 888 Whisky', 0, 0, 0, 0, 0),
(2381, '', 'Panaché paquet', 0, 0, 0, 0, 0),
(2382, '', 'Panaché unité', 0, 0, 0, 0, 0),
(2378, '', 'Pagne HOLANTEX 1/2 Pièce', 0, 0, 0, 0, 0),
(2379, '', 'Pagne Petit Holandais 1/2 Pièce', 0, 0, 0, 0, 0),
(2380, '', 'Pagne AVODAO 1/2 Pièce', 0, 0, 0, 0, 0),
(2377, '', 'Pagne CHIGANVI 1/2 Pièce', 0, 0, 0, 0, 0),
(2376, '', 'Pagne ABC 1/2 Pièce', 0, 0, 0, 0, 0),
(2375, '', 'Oris Gin', 0, 0, 0, 0, 0),
(2374, '', 'ufs 100f Unité', 0, 0, 0, 0, 0),
(2373, '', 'ufs 3/25f', 0, 0, 0, 0, 0),
(2372, '', 'ufs plateau', 0, 0, 0, 0, 0),
(2371, '', 'Nescafé Sachet', 0, 0, 0, 0, 0),
(2370, '', 'Muscador Vin mousseux', 0, 0, 0, 0, 0),
(2369, '', 'Milo Sachet', 0, 0, 0, 0, 0),
(2368, '', 'Milo Boîte', 0, 0, 0, 0, 0),
(2367, '', 'Milo ALL TIME', 0, 0, 0, 0, 0),
(2366, '', 'Mc GREGOIR Whisky', 0, 0, 0, 0, 0),
(2364, '', 'Martinti Blanc', 0, 0, 0, 0, 0),
(2365, '', 'Mayonaise Jago', 0, 0, 0, 0, 0),
(2363, '', 'Martini Rouge', 0, 0, 0, 0, 0),
(2362, '', 'Mangustan\'s', 0, 0, 0, 0, 0),
(2361, '', 'Magie Poulet Cube', 0, 0, 0, 0, 0),
(2360, '', 'Lipton', 0, 0, 0, 0, 0),
(2358, '', 'Lame Rouge 1 paquet de 10', 0, 0, 0, 0, 0),
(2359, '', 'Lame Rouge unité', 0, 0, 0, 0, 0),
(2357, '', 'Lame Bleu unité', 0, 0, 0, 0, 0),
(2356, '', 'Lame Bleu paquet', 0, 0, 0, 0, 0),
(2355, '', 'Lait Peak Sachet', 0, 0, 0, 0, 0),
(2354, '', 'Lait Peak Liquide', 0, 0, 0, 0, 0),
(2353, '', 'Lait Peak Boîte Poudre', 0, 0, 0, 0, 0),
(2352, '', 'Lait Jago', 0, 0, 0, 0, 0),
(2350, '', 'Label5  Whisky', 0, 0, 0, 0, 0),
(2351, '', 'Lait Bridel', 0, 0, 0, 0, 0),
(2349, '', 'Jus Toto Cocktail Fruit', 0, 0, 0, 0, 0),
(2348, '', 'J&B Whisky', 0, 0, 0, 0, 0),
(2347, '', 'Jamaican Whisky', 0, 0, 0, 0, 0),
(2346, '', 'Insectiside Kilit', 0, 0, 0, 0, 0),
(2345, '', 'Imperial Blue Whisky', 0, 0, 0, 0, 0),
(2344, '', 'Huile Lesieur', 0, 0, 0, 0, 0),
(2343, '', 'Happy Delight Jus de fruits', 0, 0, 0, 0, 0),
(2342, '', 'Green Pass Pass  Whisky', 0, 0, 0, 0, 0),
(2341, '', 'Grant\'s  Whisky', 0, 0, 0, 0, 0),
(2340, '', 'Grand Master Whisky', 0, 0, 0, 0, 0),
(2339, '', 'Gingembre Petite Bouteille', 0, 0, 0, 0, 0),
(2338, '', 'Gingembre Grande Bouteille', 0, 0, 0, 0, 0),
(2336, '', 'Gin Ballon', 0, 0, 0, 0, 0),
(2337, '', 'Gordon\'s Gin', 0, 0, 0, 0, 0),
(2335, '', 'Fromage', 0, 0, 0, 0, 0),
(2334, '', 'Famous Grouse 750ml Whisky', 0, 0, 0, 0, 0),
(2333, '', 'Famous Grouse 350ml Whisky', 0, 0, 0, 0, 0),
(2332, '', 'Enveloppe A6 Kaki petite', 0, 0, 0, 0, 0),
(2331, '', 'Enveloppe A4 Kaki', 0, 0, 0, 0, 0),
(2330, '', 'Envellope Blanche 114x162mm', 0, 0, 0, 0, 0),
(2329, '', 'Envellope Blanche 110x220mm', 0, 0, 0, 0, 0),
(2327, '', 'Dubonnet', 0, 0, 0, 0, 0),
(2328, '', 'Envellope A5', 0, 0, 0, 0, 0),
(2326, '', 'Domaine du Moulin Vin', 0, 0, 0, 0, 0),
(2325, '', 'Dinasty Sparkling Vert Vin mousseux', 0, 0, 0, 0, 0),
(2324, '', 'Dinasty Sparkling Rouge Vin mousseux', 0, 0, 0, 0, 0),
(2323, '', 'Eau Cristal 1,5l', 0, 0, 0, 0, 0),
(2322, '', 'Eau Cristal 0,5l', 0, 0, 0, 0, 0),
(2321, '', 'Crayon', 0, 0, 0, 0, 0),
(2320, '', 'Couscous', 0, 0, 0, 0, 0),
(2318, '', 'Cortezano Liqueur', 0, 0, 0, 0, 0),
(2319, '', 'Coupel Eau Voltic', 0, 0, 0, 0, 0),
(2317, '', 'Chemise paquet', 0, 0, 0, 0, 0),
(2316, '', 'Cheewing Gum HOLLYWOOD', 0, 0, 0, 0, 0),
(2315, '', 'Château de France Rouge 250 ml', 0, 0, 0, 0, 0),
(2314, '', 'Chateaux de France Bleu 250 ml', 0, 0, 0, 0, 0),
(2313, '', 'Château de France Rouge 500 ml', 0, 0, 0, 0, 0),
(2312, '', 'Château de France Bleu 500 ml', 0, 0, 0, 0, 0),
(2311, '', 'Château de France Bleu Grand 1000 ml', 0, 0, 0, 0, 0),
(2310, '', 'château de France Rouge Grand 1000 ml', 0, 0, 0, 0, 0),
(2309, '', 'Cannette Chill unité', 0, 0, 0, 0, 0),
(2308, '', 'Cannette Chill Palette', 0, 0, 0, 0, 0),
(2307, '', 'Cannette Sprite Unité', 0, 0, 0, 0, 0),
(2306, '', 'Cannette Sprite Palette', 0, 0, 0, 0, 0),
(2305, '', 'Cannette sport actif unité', 0, 0, 0, 0, 0),
(2304, '', 'Cannette sport actif Palette', 0, 0, 0, 0, 0),
(2303, '', 'Cannette Pom-Pom Unité', 0, 0, 0, 0, 0),
(2302, '', 'Cannette Pom-Pom Palette', 0, 0, 0, 0, 0),
(2301, '', 'Cannette Pils Unité', 0, 0, 0, 0, 0),
(2300, '', 'Cannette Pils Palette', 0, 0, 0, 0, 0),
(2299, '', 'Cannette Malta Unité', 0, 0, 0, 0, 0),
(2298, '', 'Cannette Malta Palette', 0, 0, 0, 0, 0),
(2297, '', 'Cannette Guiness Unité', 0, 0, 0, 0, 0),
(2296, '', 'Cannette Guiness Palette', 0, 0, 0, 0, 0),
(2295, '', 'Cannette Flag Unité', 0, 0, 0, 0, 0),
(2294, '', 'Cannette Flag Palette', 0, 0, 0, 0, 0),
(2293, '', 'Cannette Fanta Orange unité', 0, 0, 0, 0, 0),
(2292, '', 'Cannette Fanta Orange Palette', 0, 0, 0, 0, 0),
(2291, '', 'Cannette Cocktail unité', 0, 0, 0, 0, 0),
(2290, '', 'Cannette Cocktail Palette', 0, 0, 0, 0, 0),
(2289, '', 'Cannette Coca Cola unité', 0, 0, 0, 0, 0),
(2288, '', 'Cannette Coca Cola Palette', 0, 0, 0, 0, 0),
(2287, '', 'Cannette Castel unité', 0, 0, 0, 0, 0),
(2286, '', 'Cannette Castel Palette', 0, 0, 0, 0, 0),
(2285, '', 'Cannette Beaufort unité', 0, 0, 0, 0, 0),
(2284, '', 'Cannette Beaufort Palette', 0, 0, 0, 0, 0),
(2283, '', 'Cannette Orijin unité', 0, 0, 0, 0, 0),
(2282, '', 'Cannette Orijin Palette', 0, 0, 0, 0, 0),
(2281, '', 'Cannette Becker\'s unité', 0, 0, 0, 0, 0),
(2280, '', 'Cannette Becker\'s Palette', 0, 0, 0, 0, 0),
(2279, '', 'Campari', 0, 0, 0, 0, 0),
(2278, '', 'Cahier 200 Pages GF', 0, 0, 0, 0, 0),
(2277, '', 'Cahier 200 Pages', 0, 0, 0, 0, 0),
(2276, '', 'Cahier 100 Pages', 0, 0, 0, 0, 0),
(2275, '', 'Ananas Gin', 0, 0, 0, 0, 0),
(2274, '', 'Café Rhum Spirit', 0, 0, 0, 0, 0),
(2273, '', 'Café Rhum Sachet', 0, 0, 0, 0, 0),
(2272, '', 'Beurre Blue Band', 0, 0, 0, 0, 0),
(2271, '', 'Brosse à dent', 0, 0, 0, 0, 0),
(2270, '', 'Brosse à dent', 0, 0, 0, 0, 0),
(2269, '', 'Bouteille Djama', 0, 0, 0, 0, 0),
(2268, '', 'Bouteille Agrume', 0, 0, 0, 0, 0),
(2267, '', 'Bouteille Tonic', 0, 0, 0, 0, 0),
(2266, '', 'Bouteille Sprite', 0, 0, 0, 0, 0),
(2265, '', 'Bouteille Sport Actif', 0, 0, 0, 0, 0),
(2264, '', 'Bouteille SodaWater', 0, 0, 0, 0, 0),
(2263, '', 'Bouteille Pom-Pom', 0, 0, 0, 0, 0),
(2261, '', 'Bouteille Malta', 0, 0, 0, 0, 0),
(2262, '', 'Bouteille Pils', 0, 0, 0, 0, 0),
(2260, '', 'Bouteille Limonade', 0, 0, 0, 0, 0),
(2259, '', 'Bouteille Lager', 0, 0, 0, 0, 0),
(2258, '', 'Bouteille Flag', 0, 0, 0, 0, 0),
(2257, '', 'Bouteille Fanta Passion', 0, 0, 0, 0, 0),
(2256, '', 'Bouteille Eku', 0, 0, 0, 0, 0),
(2255, '', 'Bouteille Dopel', 0, 0, 0, 0, 0),
(2254, '', 'Bouteille Cocktail', 0, 0, 0, 0, 0),
(2253, '', 'Bouteille Coca Cola', 0, 0, 0, 0, 0),
(2252, '', 'Bouteille Chill', 0, 0, 0, 0, 0),
(2251, '', 'Bouteille Castel', 0, 0, 0, 0, 0),
(2250, '', 'Bouteille Beaufort', 0, 0, 0, 0, 0),
(2249, '', 'Bouteille Awooyo', 0, 0, 0, 0, 0),
(2248, '', 'Bougie Petit unité', 0, 0, 0, 0, 0),
(2247, '', 'Bougie Petit Paquet', 0, 0, 0, 0, 0),
(2246, '', 'Bougie Grand unité', 0, 0, 0, 0, 0),
(2245, '', 'Bougie Grand Paquet', 0, 0, 0, 0, 0),
(2244, '', 'Bonbon Pectol', 0, 0, 0, 0, 0),
(2243, '', 'Black Label 75cl Whisky', 0, 0, 0, 0, 0),
(2242, '', 'Black Label 1l Whisky', 0, 0, 0, 0, 0),
(2241, '', 'Biscuit Alvien', 0, 0, 0, 0, 0),
(2240, '', 'Biscuit Bourbon', 0, 0, 0, 0, 0),
(2239, '', 'Biscuit Milk', 0, 0, 0, 0, 0),
(2238, '', 'Biscuit Perk', 0, 0, 0, 0, 0),
(2237, '', 'Biscuit Bless', 0, 0, 0, 0, 0),
(2236, '', 'Biscuit Digestive', 0, 0, 0, 0, 0),
(2235, '', 'Biscuit Salé SODA', 0, 0, 0, 0, 0),
(2234, '', 'Biscuit Parle - G', 0, 0, 0, 0, 0),
(2233, '', 'Biscuit Good Day', 0, 0, 0, 0, 0),
(2232, '', 'Biscuit Fourré', 0, 0, 0, 0, 0),
(2231, '', 'Atchonmon biscuit', 0, 0, 0, 0, 0),
(2230, '', 'Biscolait Amuse gueule biscuit', 0, 0, 0, 0, 0),
(2229, '', 'Bic Shneider', 0, 0, 0, 0, 0),
(2228, '', 'Bic Offix', 0, 0, 0, 0, 0),
(2227, '', 'Bigo Tamarin unité', 0, 0, 0, 0, 0),
(2226, '', 'Bigo Tamarin Paquet', 0, 0, 0, 0, 0),
(2225, '', 'Bigo Apple unité', 0, 0, 0, 0, 0),
(2224, '', 'Bigo Apple Paquet', 0, 0, 0, 0, 0),
(2223, '', 'Bigo Lemon Sprite Unité', 0, 0, 0, 0, 0),
(2222, '', 'Bigo Lemon Sprite Paquet', 0, 0, 0, 0, 0),
(2221, '', 'Bigo Cola unité', 0, 0, 0, 0, 0),
(2220, '', 'Bigo Cola Paquet', 0, 0, 0, 0, 0),
(2219, '', 'Bigo Cocktail unité', 0, 0, 0, 0, 0),
(2218, '', 'Bigo cocktail Paquet', 0, 0, 0, 0, 0),
(2217, '', 'Bigo Ananas unité', 0, 0, 0, 0, 0),
(2216, '', 'Bigo ananas Paquet', 0, 0, 0, 0, 0),
(2215, '', 'Bel Cola unité', 0, 0, 0, 0, 0),
(2214, '', 'Bel Cola Paquet', 0, 0, 0, 0, 0),
(2213, '', 'Beautiful Whisky crème', 0, 0, 0, 0, 0),
(2212, '', 'Baron de Ricot Vin', 0, 0, 0, 0, 0),
(2211, '', 'Baron De Giniac Vin', 0, 0, 0, 0, 0),
(2210, '', 'Baley\'s Whisky crème', 0, 0, 0, 0, 0),
(2209, '', 'B7 Whisky', 0, 0, 0, 0, 0),
(2208, '', 'B10 Whisky', 0, 0, 0, 0, 0),
(2207, '', 'Arrachide Sucré', 0, 0, 0, 0, 0),
(2206, '', 'Arrachide bouteille scellé', 0, 0, 0, 0, 0),
(2205, '', 'Arrachide  Bouteille', 0, 0, 0, 0, 0),
(2204, '', 'Amarula Whisky crème', 0, 0, 0, 0, 0),
(2203, '', 'Allumete 2/25francs détails', 0, 0, 0, 0, 0),
(2202, '', 'Allumette Boîte paquet de 10', 0, 0, 0, 0, 0),
(2201, '', 'Adonko Bitters petit', 0, 0, 0, 0, 0),
(2200, '', 'Adonko Bitters Grand', 0, 0, 0, 2201, 6),
(2199, '', '8PM Whisky', 0, 0, 0, 0, 0),
(2198, '', 'Sucre 25francs', 0, 0, 0, 0, 0),
(2197, '', 'Arachide 25francs', 0, 0, 0, 0, 0),
(2196, '', 'Tappioca Emballe 50francs', 0, 0, 0, 0, 0),
(2491, '', 'Vin Giarola ROSSO', 0, 0, 0, 0, 0),
(2492, '', 'Eau Vitale Park 0,5l Paquet', 0, 0, 0, 0, 0),
(2493, '', 'Eau Vitale Park 0,5l Unité', 0, 0, 0, 0, 0),
(2494, '', 'Eau Vitale Park 1,5l Paquet', 0, 0, 0, 0, 0),
(2495, '', 'Eau Vitale Park1,5l Unité', 0, 0, 0, 0, 0),
(2496, '', 'Eau Vitale0,5l Paquet', 0, 0, 0, 0, 0),
(2497, '', 'Eau Vitale0,5l Unité', 0, 0, 0, 0, 0),
(2498, '', 'Eau Vitale1,5l Paquet', 0, 0, 0, 0, 0),
(2499, '', 'Eau Vitale 1,5l Unité', 0, 0, 0, 0, 0),
(2500, '', 'Eau Vitale 5l', 0, 0, 0, 0, 0),
(2501, '', 'VitaMilk Paquet', 0, 0, 0, 0, 0),
(2502, '', 'VitalMilk unité', 0, 0, 0, 0, 0),
(2503, '', 'Vody Paquet', 0, 0, 0, 0, 0),
(2504, '', 'Vody Unité', 0, 0, 0, 0, 0),
(2505, '', 'Eau Voltic Bombone', 0, 0, 0, 0, 0),
(2506, '', 'Eau Voltic 0,5l Paquet', 0, 0, 0, 0, 0),
(2507, '', 'Eau Voltic 0,5l Unité', 0, 0, 0, 0, 0),
(2508, '', 'Eau Voltic 1,5l Paquet', 0, 0, 0, 0, 0),
(2509, '', 'Eau Voltic 1,5l Unité', 0, 0, 0, 0, 0),
(2510, '', 'Whytehall Whisky', 0, 0, 0, 0, 0),
(2511, '', 'Youki Coca 1l Paquet', 0, 0, 0, 0, 0),
(2512, '', 'Youki Coca 1l Unité', 0, 0, 0, 0, 0),
(2513, '', 'Youki Cocktail 1l Paquet', 0, 0, 0, 0, 0),
(2514, '', 'Youki Cocktail 1l Unité', 0, 0, 0, 0, 0),
(2515, '', 'Youki Cocktail 35cl Paquet', 0, 0, 0, 0, 0),
(2516, '', 'Youki Cocktail 35cl Unité', 0, 0, 0, 0, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
