-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: ucs-val-tesis
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `data`
--

DROP TABLE IF EXISTS `data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `workers_id` int NOT NULL,
  `fecha_ingreso_val` date NOT NULL,
  `fecha_recepcion_ccs` date DEFAULT NULL,
  `tipo_personal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dedicacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categoria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pnf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unidad_curricular` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nro_participantes` int DEFAULT NULL,
  `anno_trayecto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nro_trimestre_tramo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unidad_adscripcion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `municipio` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parroquia_asic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eje_asic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estatus` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `data_workers_id_foreign` (`workers_id`),
  CONSTRAINT `data_workers_id_foreign` FOREIGN KEY (`workers_id`) REFERENCES `workers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data`
--

LOCK TABLES `data` WRITE;
/*!40000 ALTER TABLE `data` DISABLE KEYS */;
INSERT INTO `data` VALUES (3,12345678,'2024-05-08','2024-04-08','Contratado','Por Horas','Analista','Ninguno','Ninguno',0,'ninguno','Ninguno','Administracion','CARABOBO','VALENCIA','La Trigaleña','San José','Valencia Centro','A','2024-07-11 04:51:03','2024-07-11 04:51:03'),(4,12345678,'2024-05-09','2024-05-09','Contratado','Por Horas','Instructor','Enfermeria','Morfologia',50,'2024','1','Dirección Académica','CARABOBO','VALENCIA','La Trigaleña','San José','Valencia Centro','A','2024-07-11 04:52:01','2024-07-11 04:52:01');
/*!40000 ALTER TABLE `data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2014_10_12_100000_create_password_resets_table',1),(4,'2019_08_19_000000_create_failed_jobs_table',1),(5,'2019_12_14_000001_create_personal_access_tokens_table',1),(6,'2024_07_07_063627_workers',1),(7,'2024_07_07_063810_data',1),(8,'2024_07_09_171659_create_permission_tables',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'admin.home','web','2024-07-10 08:40:15','2024-07-10 08:40:15'),(2,'admin.workers.index','web','2024-07-10 08:40:15','2024-07-10 08:40:15'),(3,'admin.workers.create','web','2024-07-10 08:40:15','2024-07-10 08:40:15'),(4,'admin.workers.edit','web','2024-07-10 08:40:15','2024-07-10 08:40:15'),(5,'admin.workers.show','web','2024-07-10 08:40:15','2024-07-10 08:40:15'),(6,'admin.workers.destroy','web','2024-07-10 08:40:15','2024-07-10 08:40:15'),(7,'admin.data.index','web','2024-07-10 08:40:15','2024-07-10 08:40:15'),(8,'admin.data.create','web','2024-07-10 08:40:15','2024-07-10 08:40:15'),(9,'admin.data.edit','web','2024-07-10 08:40:16','2024-07-10 08:40:16'),(10,'admin.data.show','web','2024-07-10 08:40:16','2024-07-10 08:40:16'),(11,'admin.data.destroy','web','2024-07-10 08:40:16','2024-07-10 08:40:16');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(1,2),(2,2),(5,2),(7,2),(10,2),(1,3),(2,3),(3,3),(4,3),(5,3),(7,3),(8,3),(9,3),(10,3),(1,4),(2,4),(3,4),(4,4),(5,4),(6,4),(7,4),(8,4),(9,4),(10,4),(11,4);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Admin','web','2024-07-10 08:40:14','2024-07-10 08:40:14'),(2,'Guest','web','2024-07-10 08:40:14','2024-07-10 08:40:14'),(3,'User','web','2024-07-10 08:40:14','2024-07-10 08:40:14'),(4,'Support','web','2024-07-10 08:40:14','2024-07-10 08:40:14');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Ramsés Heliobas Flores Miranda','rhfm1963.uneti@gmail.com',NULL,'$2y$12$zuo/lV1MCuRcB3b1Qjp6I.Eg01mPDDw9fiCw1OFnU2VTFmOlr/qmy',NULL,'2024-07-10 08:47:08','2024-07-10 08:47:08');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workers`
--

DROP TABLE IF EXISTS `workers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workers` (
  `id` int NOT NULL,
  `apellidos` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombres` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_nac` date NOT NULL,
  `edad` double(8,2) NOT NULL,
  `sexo` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado_civil` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nacionalidad` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rif` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion_habitacion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `municipio` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono_local` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono_movil` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo_electronico` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nro_cuenta_bco` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banco` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_cuenta_bco` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `talla_camisa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `talla_pantalon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `talla_calzado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `carnet_patria_codigo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `carnet_patria_serial` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `carnet_psuv_codigo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `carnet_psuv_serial` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `observaciones` text COLLATE utf8mb4_unicode_ci,
  `centro_votacion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `municipio_votacion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `jubilado` text COLLATE utf8mb4_unicode_ci,
  `nivel_academico` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nivel_area_salud` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titulo_obtenido_salud` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otras_areas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titulo_obtenido_otras` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `especialista` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maestria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doctorado` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `denominacion_cargo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nro_providencia` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_vigencia_providencia` date DEFAULT NULL,
  `comision_servicio` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apoyo_institucional` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institucion_origen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_inicio_comision` date DEFAULT NULL,
  `unidad_adscripcion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nro_oficio_aprobacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supervisor_inmediato` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supervisor_mediato` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estatus` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clasificacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cargo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workers`
--

LOCK TABLES `workers` WRITE;
/*!40000 ALTER TABLE `workers` DISABLE KEYS */;
INSERT INTO `workers` VALUES (12345678,'MARTINEZ GUERRA','LUIS APARICIO','1995-05-05',29.00,'Masculino','Soltero','Venezolano','V134567890','URBANIZACIÓN LA CAMPIÑA, SECTOR 9, VEREDA 3, CASA Nro 100-2, NAGUANAGUA, CP 2005','CARABOBO','Naguanagua','0241-6632580','0414-4342461','martinesr.luis.a@gmail.com','01020046533462398','VENEZUELA','AHORRO','M','38','45','0123456789','0123456789',NULL,NULL,'Esto es una Prueba','Eleazar Beracierto','Valencia','no','Tecnico Medio','No','Ninguno','Analista-Programador','Ninguno','ninguno','Ninguno','Ninguno','Ninguno','Ninguno',NULL,'Ninguno','Ninguno','Ninguno',NULL,'Administracion','Ninguno','Ninguno','ninguno','A','Administracion','Analista Tecnico de Soporte','2024-07-11 04:35:50','2024-07-11 04:36:39');
/*!40000 ALTER TABLE `workers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'ucs-val-tesis'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-11  5:35:50
