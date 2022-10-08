-- MySQL dump 10.13  Distrib 8.0.28, for macos11 (x86_64)
--
-- Host: 127.0.0.1    Database: recipes
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `food_category_id` int DEFAULT NULL,
  `food_category_name` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'meat'),(2,'vegan'),(3,'sweet');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cooking_time`
--

DROP TABLE IF EXISTS `cooking_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cooking_time` (
  `recipe_time_id` int DEFAULT NULL,
  `recipe_id` int DEFAULT NULL,
  `min_prep_time` int DEFAULT NULL,
  `max_prep_time` int DEFAULT NULL,
  `min_cook_time` int DEFAULT NULL,
  `max_cook_time` int DEFAULT NULL,
  `max_time_to_complete` int DEFAULT NULL,
  `time_measurement` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cooking_time`
--

LOCK TABLES `cooking_time` WRITE;
/*!40000 ALTER TABLE `cooking_time` DISABLE KEYS */;
INSERT INTO `cooking_time` VALUES (1,1,1,30,60,120,150,'minutes'),(2,2,1,30,10,30,60,'minutes'),(3,3,1440,1440,60,120,1560,'minutes'),(4,4,1,30,5,10,40,'minutes'),(5,5,30,60,30,60,120,'minutes');
/*!40000 ALTER TABLE `cooking_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `course_id` int DEFAULT NULL,
  `course_name` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'breakfast'),(2,'side'),(3,'salad'),(4,'main'),(5,'dessert');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favourite`
--

DROP TABLE IF EXISTS `favourite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favourite` (
  `favourite_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `recipe_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favourite`
--

LOCK TABLES `favourite` WRITE;
/*!40000 ALTER TABLE `favourite` DISABLE KEYS */;
INSERT INTO `favourite` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,1),(7,7,2),(8,8,3),(9,9,4),(10,10,5),(11,1,5),(12,2,4),(13,3,3),(14,4,2),(15,5,1),(16,6,5),(17,7,4),(18,8,3),(19,9,2),(20,10,1);
/*!40000 ALTER TABLE `favourite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredients`
--

DROP TABLE IF EXISTS `ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingredients` (
  `ingredient_id` int DEFAULT NULL,
  `ingredient_name` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredients`
--

LOCK TABLES `ingredients` WRITE;
/*!40000 ALTER TABLE `ingredients` DISABLE KEYS */;
INSERT INTO `ingredients` VALUES (1,'Olive oil'),(2,'Smoked streaky bacon'),(3,'Onions'),(4,'Garlic cloves'),(5,'Lean minced beef'),(6,'Red wine'),(7,'Cans chopped tomatoes'),(8,'Antipasti marinated mushroom'),(9,'Bay leaves'),(10,'Oregano'),(11,'Thyme'),(12,'Balsamic vinegar'),(13,'Sun dried tomatoes'),(14,'Pepper'),(15,'Salt'),(16,'Basil'),(17,'Spaghetti'),(18,'Parmesan'),(19,'Self raising flour'),(20,'Caster sugar'),(21,'Baking powder'),(22,'Almond milk'),(23,'Soya milk '),(24,'Vanilla extract'),(25,'Sunflower oil'),(26,'Vegetable oil'),(27,'Yoghurt'),(28,'Ginger'),(29,'Kashmiri red chilli powder'),(30,'Cumin'),(31,'Cardamom seeds'),(32,'Lime'),(33,'Coriander'),(34,'Mint leaves'),(35,'Green chillies'),(36,'Lamb tenderloin'),(37,'Double cream'),(38,'Full fat milk'),(39,'Saffron strands'),(40,'Basmati rice'),(41,'Pomegranate seeds'),(42,'Couscous'),(43,'Preserved lemons'),(44,'Dried cranberries'),(45,'Pine nuts'),(46,'Unsalted shelled pistachio nuts'),(47,'Flatleaf parsley'),(48,'Red wine vinegar'),(49,'Red onion'),(50,'Rocket leaves'),(51,'Digestive biscuits'),(52,'Granulated sugar'),(53,'Ground cardamom'),(54,'Unsalted butter'),(55,'Powdered gelatine'),(56,'Cream cheese'),(57,'Alfonso mango pulp');
/*!40000 ALTER TABLE `ingredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quantity`
--

DROP TABLE IF EXISTS `quantity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quantity` (
  `quantity_id` int DEFAULT NULL,
  `recipe_id` int DEFAULT NULL,
  `ingredient_id` int DEFAULT NULL,
  `ingredient_measurement` int DEFAULT NULL,
  `ingredient_quantity` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quantity`
--

LOCK TABLES `quantity` WRITE;
/*!40000 ALTER TABLE `quantity` DISABLE KEYS */;
INSERT INTO `quantity` VALUES (1,1,1,2,'tbsp'),(2,1,2,6,'rashers'),(3,1,3,2,'large'),(4,1,4,3,'cloves'),(5,1,5,1,'kilogram'),(6,1,6,2,' large glasses'),(7,1,7,800,'grams'),(8,1,8,290,'grams'),(9,1,9,2,'leaves'),(10,1,10,1,'tsp'),(11,1,11,1,'tsp'),(12,1,12,0,'drizzle'),(13,1,13,13,'halves'),(14,1,14,NULL,NULL),(15,1,15,NULL,NULL),(16,1,16,0,'Handful'),(17,1,17,1,'kilogram'),(18,1,18,0,'lots'),(19,2,19,125,'grams'),(20,2,20,2,' tbsp'),(21,2,21,1,'tsp'),(22,2,22,150,'mililitres '),(23,2,23,150,'mililitres '),(25,2,25,4,' tsp'),(26,2,14,0,'pinch'),(27,3,26,5,'tbsp'),(28,3,3,2,'large'),(29,3,27,200,'grams'),(30,3,28,4,'tbsp'),(31,3,4,3,'tbsp'),(32,3,29,2,'tsp'),(33,3,30,5,'tsp'),(34,3,31,1,'tsp'),(35,3,14,4,'tsp'),(36,3,32,1,'juice only'),(37,3,33,30,'grams'),(38,3,34,30,'grams'),(39,3,35,4,'chillies'),(40,3,36,800,'grams'),(41,3,37,4,'tbsp'),(43,3,39,1,'tsp'),(44,3,40,400,'grams'),(45,3,41,2,'tbsp'),(46,4,42,225,'grams'),(47,4,43,8,'lemons'),(48,4,44,180,'grams'),(49,4,45,120,'grams'),(50,4,46,160,'grams'),(51,4,1,125,'mililitres '),(52,4,47,60,'grams'),(53,4,4,4,'cloves'),(54,4,48,4,'tbsp'),(55,4,49,1,'large'),(56,4,14,1,'tsp'),(57,4,50,80,'grams'),(58,5,51,280,'grams'),(59,5,52,65,'grams'),(61,5,54,128,'grams'),(62,5,14,0,'pinch'),(63,5,52,100,'grams'),(64,5,55,2,'tbsp'),(65,5,37,120,'mililitres '),(66,5,56,115,'grams'),(67,5,57,850,'grams'),(68,5,14,NULL,'pinch');
/*!40000 ALTER TABLE `quantity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rating` (
  `rating_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `recipe_id` int DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `rating_measurement` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
INSERT INTO `rating` VALUES (1,1,1,5,'stars'),(2,2,2,4.5,'stars'),(3,3,3,4,'stars'),(4,4,4,4.5,'stars'),(5,5,5,4.5,'stars'),(6,6,1,3,'stars'),(7,7,2,2,'stars'),(8,8,3,4.5,'stars'),(9,9,4,4.5,'stars'),(10,10,5,3,'stars'),(11,1,5,4,'stars'),(12,2,4,5,'stars'),(13,3,3,5,'stars'),(14,4,2,1,'stars'),(15,5,1,3,'stars'),(16,6,5,2,'stars'),(17,7,4,2,'stars'),(18,8,3,4.5,'stars'),(19,9,2,3.5,'stars'),(20,10,1,2.5,'stars');
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe`
--

DROP TABLE IF EXISTS `recipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipe` (
  `recipe_id` int DEFAULT NULL,
  `course_id` int DEFAULT NULL,
  `food_category_id` int DEFAULT NULL,
  `rating_id` int DEFAULT NULL,
  `recipe _name` text,
  `recipe_description` text,
  `serving_size` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe`
--

LOCK TABLES `recipe` WRITE;
/*!40000 ALTER TABLE `recipe` DISABLE KEYS */;
INSERT INTO `recipe` VALUES (1,4,1,1,'Spaghetti Bolognese','Once you have got this grown up spag bol going the hob will do the rest Any leftovers will taste even better the next day',8),(2,1,2,2,'Vegan pancakes','Try this vegan fluffy American pancake recipe for a perfect start to the day Serve these pancakes with fresh berries maple syrup or chocolate sauce for a really luxurious start to the day',2),(3,4,1,3,'Easy lamb biryani','This lamb biryani is real centrepiece dish but it has actually easy as anything to make Serve garnished with pomegranate seeds to make it look really special',8),(4,3,2,4,'Couscous salad','A nutritious and satisfying vegan couscous salad packed with colour flavour and texture from dried cranberries pistachios and pine nuts',6),(5,5,3,5,'Mango pie','This mouthwatering mango dessert is an Indian take on a traditional Thanksgiving pie',16);
/*!40000 ALTER TABLE `recipe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `role_id` int DEFAULT NULL,
  `role_name` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'user'),(2,'admin');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `steps`
--

DROP TABLE IF EXISTS `steps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `steps` (
  `step_id` int DEFAULT NULL,
  `recipe_id` int DEFAULT NULL,
  `step_number` int DEFAULT NULL,
  `step_description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `steps`
--

LOCK TABLES `steps` WRITE;
/*!40000 ALTER TABLE `steps` DISABLE KEYS */;
INSERT INTO `steps` VALUES (1,1,1,'Heat the oil in a large heavy based saucepan and fry the bacon until golden over a medium heat Add the onions and garlic frying until softened Increase the heat and add the minced beef Fry it until it has browned breaking down any chunks of meat with a wooden spoon Pour in the wine and boil until it has reduced in volume by about a third Reduce the temperature and stir in the tomatoes drained mushrooms bay leaves oregano thyme and balsamic vinegar'),(2,1,2,'Either blitz the sun-dried tomatoes in a small blender with a little of the oil to loosen or just finely chop before adding to the pan Season well with salt and pepper Cover with a lid and simmer the Bolognese sauce over a gentle heat for 1-1 1 2 hours until it is rich and thickened stirring occasionally At the end of the cooking time stir in the basil and add any extra seasoning if necessary'),(3,1,3,'Remove from the heat to \'settle\' while you cook the spaghetti in plenty of boiling salted water for the time stated on the packet Drain and divide between warmed plates Scatter a little parmesan over the spaghetti before adding a good ladleful of the Bolognese sauce  finishing with a scattering of more cheese and a twist of black pepper'),(4,2,1,'Put the flour sugar baking powder and salt in a bowl and mix thoroughly Add the milk and vanilla extract and mix with a whisk until smooth '),(5,2,2,'Place a large nonstick frying pan over a medium heat Add 2 teaspoons of the oil and wipe around the pan with a heatproof brush or carefully using a thick wad of kitchen paper'),(6,2,3,'Once the pan is hot pour a small ladleful around two dessert spoons of the batter into one side of the pan and spread with the back of the spoon until around 10cm in diameter Make a second pancake in exactly the same way greasing the pan with the remaining oil before adding the batter'),(7,2,4,'Cook for about a minute  or until bubbles are popping on the surface and just the edges look dry and slightly shiny Quickly and carefully flip over and cook on the other side for a further minute  or until light  fluffy and pale golden brown If you turn the pancakes too late  they will be too set to rise evenly You can always flip again if you need the first side to go a little browner '),(8,2,5,'Transfer to a plate and keep warm in a single layer so they don not get squished on a baking tray in a low oven while the rest of the pancakes are cooked in exactly the same way Serve with your preferred toppings '),(9,3,1,'Heat the oil in a nonstick frying pan over a medium heat Add the onions and stir-fry for 15 to 18 minutes  or until lightly browned and crispy'),(10,3,2,'Put half the onions in a nonmetallic mixing bowl with the yoghurt ginger garlic chilli powder cumin cardamom half of the salt the lime juice half of the chopped coriander and mint and the green chillies Stir well to combine Set aside the remaining coriander and mint for layering the biryani'),(11,3,3,'Add the lamb to the mixture and stir to coat evenly Cover and marinade in the fridge for 6?8 hours  or overnight if possible'),(12,3,4,'Preheat the oven to 240C Fan 220C Gas 9'),(13,3,5,'Heat the cream and milk in a small saucepan add the saffron remove from the heat and leave to infuse for 30 minutes'),(14,3,6,'Cook the rice in a large saucepan in plenty of boiling water with the remaining salt for 6 to 8 minutes or until it is just cooked but still has a bite Drain the rice'),(15,3,7,'Spread half of the lamb mixture evenly in a wide heavy based casserole and cover with a layer of half the rice Sprinkle over half of the reserved onions and half of the reserved coriander and mint Sprinkle over half of the saffron mixture Repeat with the remaining lamb rice onions herbs and saffron mixture'),(16,3,8,'Cover with a tight fitting lid  turn down the oven to 200C Fan 180C Gas 6 and cook for 1 hour Remove and allow to stand for 15?20 minutes before serving Garnish with pomegranate seeds if desired'),(17,4,1,'In a large bowl mix all the ingredients together except the rocket then taste and adjust the seasoning adding more salt if necessary Toss in the rocket and serve immediately'),(18,5,1,'To make the biscuit base finely crush the biscuits by putting into a sealed plastic bag and bashing with a rolling pin alternatively  pulse to crumbs using a food processor Transfer to a mixing bowl and add the sugar cardamom and salt stirring well to combine'),(19,5,2,'Pour the melted butter over the biscuit crumbs and mix  until thoroughly combined Put half the crumb mixture in a 23cm 9in metal pie tin  and press evenly with your fingers Build up the sides of the tin  compressing the base as much as possible to prevent it crumbling Repeat with the rest of the mixture in the second tin'),(20,5,3,'Preheat the oven to 160C 325F Gas 3 Put the pie bases in the freezer for 15 minutes Remove and bake for 12 minutes or until golden brown Transfer to a wire rack to cool'),(21,5,4,'To make the filling  pour 177ml oz of cold water into a large bowl In a separate bowl mix the gelatine with half the sugar and sprinkle over the water Leave to stand for a couple of minutes'),(22,5,5,'Meanwhile whip the cream with the remaining sugar to form medium stiff peaks Set aside'),(23,5,6,'Heat about a quarter of the mango pulp in a saucepan over a medium-low heat until just warm Make sure you do not boil it Pour into the gelatine mixture and whisk until well combined The gelatine should dissolve completely Gradually whisk in the remaining mango pulp'),(24,5,7,'Beat the cream cheese in a bowl  until soft and smooth Add to the mango mixture with the salt Blend the mixture using a hand blender  until completely smooth Gently tap the bowl on the kitchen counter once or twice to pop any air bubbles'),(25,5,8,'Fold about a quarter of the mango mixture into the whipped cream using a spatula Repeat with the rest of the cream until no streaks remain'),(26,5,9,'Divide the filling between the cooled bases using a rubber spatula to smooth out the filling Refrigerate overnight or for at least 5 hours until firm and chilled');
/*!40000 ALTER TABLE `steps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int DEFAULT NULL,
  `first_name` text,
  `last_name` text,
  `role_id` int DEFAULT NULL,
  `email` text,
  `username` text,
  `password` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Maddie','Higgins',1,'m.higgins@randatmail.com','maddie.higgins','$2y$15$Ar34EXs6xjpr651ZA8nzPe/rKjn9LKTXN7K7KH3CCfoS1cyWRvf.C'),(2,'Adrianna','Allen',1,'a.allen@randatmail.com','adrianna.allen','$2y$15$T2yyP3ZIATZsuxCo5sywQufRNDhc3BJCEF/BKY35DyfWBpMsdN8Ce'),(3,'Marcus','Anderson',1,'m.anderson@randatmail.com','marcus.anderson','$2y$15$wl5e53ctdllHZwITI5NDHuZdl9AxeL2dCeoU5RWTnXXjSVpO4mf/a'),(4,'Carlos','Perkins',2,'c.perkins@randatmail.com','carlos.perkins','$2y$15$3sRY/8cH26IBSSE.3wSB6uvut/gU8HwN940tUQ9YIJW44.6XbkgXm'),(5,'Olivia','Brooks',2,'o.brooks@randatmail.com','olivia.brooks','$2y$15$ZBfViPlqermPm2tT36VTceCGAh/wQvMVnzfsAXvwWEzfHBdkrenYy'),(6,'Briony','Gibson',1,'b.gibson@randatmail.com','briony.gibson','$2y$15$Dx8gGN9/KNG4ZHcfaFZ1/O2v7SBE4wk0uAtwsgt9wHN3mvy5aYCUu'),(7,'Sabrina','Brooks',1,'s.brooks@randatmail.com','sabrina.brooks','$2y$15$mn6ybTxuQpVGqKvqOMwXP.0DsdY4rwmlt91V2Y888W0XuIwHYc5cC'),(8,'Martin','Walker',1,'m.walker@randatmail.com','martin.walker','$2y$15$JNKw1wSU3D/n2cMUNeJUfOMrSSq9VSTMjUCfXvh3CukJHSE29OFJ6'),(9,'Lilianna','Smith',2,'l.smith@randatmail.com','lilianna.smith','$2y$15$w38GWw8uq4VNC.zYPFc4juenHtoQCPOQBxT8z9.e1fQ9tWW2FWuxm'),(10,'Adison','Cole',1,'a.cole@randatmail.com','adison.cole','$2y$15$Fwz88Z/0TX3j14vyI2CJFekMglhZhM8/mAH7MddvqJtJ5HSRRPCNi');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-08 12:52:46
