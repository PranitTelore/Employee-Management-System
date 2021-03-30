CREATE DATABASE  IF NOT EXISTS `codebun.erp` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `codebun.erp`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: codebun.erp
-- ------------------------------------------------------
-- Server version	5.6.25-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `addsalary`
--

DROP TABLE IF EXISTS `addsalary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addsalary` (
  `email` varchar(255) DEFAULT NULL,
  `month` varchar(45) DEFAULT NULL,
  `year` varchar(45) DEFAULT NULL,
  `amount` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addsalary`
--

LOCK TABLES `addsalary` WRITE;
/*!40000 ALTER TABLE `addsalary` DISABLE KEYS */;
INSERT INTO `addsalary` VALUES ('zinidevaza@mailinator.net','November','2018','3432'),('winypasyvy@mailinator.net','February','2018','12334324'),('hulugi@mailinator.com','October','2018','132423'),('juxa@mailinator.net','December','2018','214234'),('gefineleh@mailinator.net','April','2018','132443535');
/*!40000 ALTER TABLE `addsalary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','password'),(2,'bhupi','123'),(3,'bhupi1','123456'),(4,'bhupi3','123456');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `dname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'Cs'),(2,'Medical');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eleave`
--

DROP TABLE IF EXISTS `eleave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eleave` (
  `lid` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) DEFAULT NULL,
  `des` varchar(45) DEFAULT NULL,
  `fdate` varchar(45) DEFAULT NULL,
  `tdate` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eleave`
--

LOCK TABLES `eleave` WRITE;
/*!40000 ALTER TABLE `eleave` DISABLE KEYS */;
INSERT INTO `eleave` VALUES (1,'zyqebab@mailinator.net','fgegege','04/22/2019','06/22/2019','Approved');
/*!40000 ALTER TABLE `eleave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `fatherName` varchar(255) DEFAULT NULL,
  `motherNmae` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `doj` varchar(255) DEFAULT NULL,
  `caddress` varchar(255) DEFAULT NULL,
  `paddress` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `cnumber` varchar(255) DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `pskill` varchar(255) DEFAULT NULL,
  `sskill` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`eid`),
  UNIQUE KEY `eid_UNIQUE` (`eid`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (8,'Dean Kirby','Dakota Franklin','Totam eaque quos aperiam totam adipisicing quia molestias eligendi doloremque quas illo dicta commodi','Aut cum aut id dolorem qui quo voluptate exercitationem quibusdam laboris quo praesentium ipsum odio eum deserunt rerum eum','Ross Osborne','Eos voluptates sint velit atque reiciendis delectus quam ad repudiandae','Manager','Cs','Officia ut nisi necessitatibus omnis sed rerum impedit','Debitis tempore in quaerat atque consequuntur distinctio Sit aute fugiat id pariatur Eligendi','Aut eiusmod ex quis cum','nidyzypek@mailinator.net','200','Assumenda optio sit et aut necessitatibus laboris quis provident et illo dolores voluptas repudiandae','Consequuntur qui debitis facilis in lorem adipisicing autem nihil excepteur odio voluptatem','Incididunt adipisicing consequatur Fugit sit sunt ab ex aut veritatis cum','Ipsa et et optio qui amet iste quis est saepe aspernatur dolorem vel ullam est sit officiis enim quia','123'),(9,'Larissa Merrill','Lydia Ballard','Deserunt eum facilis optio aut ullamco et qui sequi unde','Quam non aut et est quia facere in ex sapiente voluptate accusamus ad amet dolore ab','Illana Roth','Ipsum et qui illum ipsam Nam atque provident illum fugit id sit itaque duis sint ea deleniti','Manager','Eum quia velit sed cum optio possimus sed libero quos optio placeat repudiandae voluptas accusantium adipisicing ut reprehenderit impedit ea','Non quaerat ut dolore ad veritatis tempor dolorem eum nisi ullamco vero pariatur Architecto iste blanditiis et pariatur Mollitia eu','Nihil neque ut incididunt lorem consequatur Cupidatat ipsam fugiat ut','Blanditiis deserunt beatae delectus qui odio quibusdam quos alias dignissimos','mefupesyla@mailinator.com','456','Nisi quae illo exercitation corrupti officia ea sunt qui eum','Earum corrupti non consequatur deleniti at eligendi','Rerum laborum beatae alias harum ut amet veniam pariatur Ex laborum accusamus officia esse dolorem sint consequatur Qui','Exercitationem quia officia aut eos et exercitation','Ipsum a tempora fugiat alias molestiae iusto anim autem voluptatem ea dolore ipsa vero consequatur'),(10,'Aidan Hurst','Tamara Wolf','Et non id id eaque non unde similique accusantium laborum','Magna ea magni consequatur amet do esse sunt consequatur quia','Carson Peters','Consequat Cillum consequat Id dolores et impedit quibusdam consequat Aspernatur magna doloribus quia perferendis','Ut numquam sed dolores atque anim adipisicing aspernatur mollit','Sit alias laborum officiis est vitae magnam ex consequatur Aut','Quo ab labore laudantium eius saepe quo sit mollit enim et eu et do veritatis tempor sint reiciendis sunt','Veniam modi corporis quisquam voluptas eu','Ipsum possimus cumque facere ut deserunt nihil sit dolor quis vel laudantium','qukozimyxa@mailinator.com','488','Ullamco minim eum dolores quam deserunt est ab minima ut excepturi est aut cumque magnam qui in ex ut','Occaecat libero et lorem facilis amet quia quibusdam eum suscipit eius optio esse non id voluptate architecto','Recusandae Eum reprehenderit vitae officiis dicta est possimus consequatur','Laboriosam laboriosam officia laboriosam corporis non quia','Delectus ipsam quia lorem natus nihil'),(11,'Daniel Potts','Randall Walter','Culpa doloremque omnis aut esse praesentium','Dolor eu adipisci veritatis ut aliquid voluptatem sit qui in vel ad voluptatibus','Doris Workman','Necessitatibus voluptatem omnis error architecto est tempor fugit in accusamus sit consectetur aperiam laborum suscipit nisi sunt iusto','Aut lorem aut vitae aut adipisci nostrud ipsam sunt officia ea vero quae ut aut dolor quas','Incidunt voluptatem ab voluptate sit culpa labore asperiores atque','Occaecat ipsa enim cupiditate non minim magni in dolore vitae dolores adipisicing qui dolor','Dolore quis veniam ut eum quia nulla minima ipsam neque numquam neque et officia','Cupidatat perferendis veniam id sit rerum','kaped@mailinator.com','370','Impedit id culpa assumenda optio fugiat reprehenderit sed consequuntur quo sed maiores quae nisi dolore et','Necessitatibus cillum dolores optio voluptatem non aute facilis dignissimos maxime','Adipisicing cupiditate aperiam est adipisci minima numquam voluptas at','Nulla fugiat doloremque at iste modi ullamco rem sint maxime consequatur magni eaque iusto saepe ullamco','Eveniet eum molestiae inventore tempor aute mollitia autem laboris quo ea hic qui delectus eos molestias'),(12,'Sybill Jackson','Nathan Middleton','Inventore soluta in culpa qui nihil','Tempora dolorem proident maiores dolor rerum blanditiis voluptas tempore est tempor ea qui anim perspiciatis voluptas officia rerum ad','Magee Schultz','Est numquam ipsum dolorum delectus vitae consectetur maxime sint sit tempor ea','Qui molestiae minim aut ut et deleniti aute neque voluptatibus quis accusamus vel reprehenderit quas velit culpa quod nisi sunt','Qui minima enim corrupti aut dolorem quia fugit nobis reprehenderit ut commodo beatae eaque laudantium lorem et quas commodo nesciunt','Consectetur recusandae Accusamus fugit consequatur obcaecati quod mollit vero iste neque','Inventore delectus natus magna quia tempor minim aliquip irure sint et eum sunt incidunt non voluptate obcaecati quisquam','Iste esse et quia dolores in hic','nypuv@mailinator.net','811','Repellendus Provident animi qui excepteur molestias architecto sint id non assumenda nemo illum perspiciatis ab harum velit molestias','Cumque voluptate vero non iste quam aspernatur odit rerum amet exercitation eligendi autem qui pariatur Velit eos est et nisi','Et excepturi sit tenetur perferendis aperiam sed excepteur ipsum laboris vero rerum qui dolorem qui obcaecati modi qui distinctio Sed','Exercitation atque eius quae rerum enim reiciendis aut consequatur Sunt eiusmod itaque saepe vero expedita dolorum omnis','Sit fugiat architecto accusantium architecto repellendus Voluptate enim enim ut velit amet ducimus aut ad consequat'),(13,'Nita Charles','Ronan Acevedo','Sed minus at similique animi assumenda nisi commodo molestiae','Aut aliquam est nostrum voluptatibus illo iusto et consequuntur quia voluptates nisi culpa sed sit quos ullamco fuga','Malachi Coffey','Doloribus qui in illo sed ut pariatur Et qui quod sapiente voluptatibus nisi','Sequi consectetur aut dolore doloribus quia nihil suscipit sint','Cs','Illum occaecat exercitation est sunt velit culpa quia qui assumenda dolore velit velit commodo omnis lorem','Sunt animi eu esse sapiente sunt cupiditate in illum qui in','Voluptatibus illum ipsum commodo eius libero tenetur minus mollit proident aut qui amet molestiae aperiam nihil numquam sit repellendus','pyjuru@mailinator.net','668','Neque pariatur Doloremque illum consectetur ad perferendis voluptatem consequatur incidunt dolore adipisci','Ea autem esse corrupti maiores magni iusto vero culpa quidem','Ut at dolore et sunt aliquid laborum nostrud soluta in id facilis sapiente magna minus molestias blanditiis quaerat','Magni eos et delectus mollitia qui mollit voluptas','Distinctio Id distinctio Cum consequuntur eos esse tenetur'),(16,'Mariko Mason','Bert Lane','Delectus non sed nulla deserunt ducimus quia mollitia facere dolore ea qui','Suscipit pariatur Minus nulla eum mollit','Zia Rush','Enim et earum dolores elit illum sapiente aliquid quidem voluptas sint esse voluptatem ratione eos earum deserunt nulla','Corrupti ipsa occaecat consequuntur quaerat cumque','Cs','Aut quia eos autem aut asperiores perferendis elit laborum','Ipsum adipisci minima aut et eligendi reprehenderit ullam dolore ea in eius','Ea veniam sed amet necessitatibus','kovucypy@mailinator.net','973','Omnis aut et aliquam enim quibusdam cumque fuga Beatae qui rerum proident proident aut et sint perspiciatis','Dolore et earum et optio','Dolores odit in qui reprehenderit molestiae','Architecto necessitatibus qui voluptas laboriosam','Autem incididunt omnis id in in nostrum inventore rerum veniam amet quisquam vel ad'),(17,'Cassandra Hood','Alea Murray','Quos exercitationem voluptas odio rerum perferendis aliquid atque et voluptas perspiciatis omnis ducimus dolor eu ipsum placeat','Maxime molestiae reprehenderit rerum perferendis reprehenderit distinctio Eiusmod repellendus Consequuntur','Orli Weeks','Qui do saepe et et illum','Placeat Nam libero nostrum neque numquam et dolore consequatur','Medical','Laboris amet accusamus fugit nulla exercitationem esse in ut quasi soluta irure sed quae in vel sint debitis nobis molestiae','Maxime aut cupidatat illo in voluptas nostrud voluptate voluptate exercitationem','Quibusdam sit exercitationem labore sit consequatur nihil iure cumque voluptatem vel','kihes@mailinator.com','124','Ut sint ipsum incididunt quisquam enim veniam sit voluptates ut corporis sapiente nisi ipsum amet excepteur','Labore quidem laboriosam anim velit nobis voluptas quidem aut esse consectetur laborum illum iure odit proident incididunt','Dolores assumenda odio nostrud quo ullam adipisci nihil iure ea quis','Aut ut rerum natus temporibus velit et temporibus','Cupidatat eos enim earum temporibus pariatur Voluptatum pariatur Necessitatibus odio lorem ullam maxime rem nisi id'),(18,'Rama Blackburn','Linus Atkins','Velit sunt ex rerum deleniti lorem et aliqua Illum odit repellendus Fuga Minim libero odit et pariatur Et','Asperiores quia culpa nostrum cupidatat animi quia ducimus distinctio Et quaerat labore rerum qui molestiae exercitationem','Neville Battle','Rem voluptates dolorum libero rerum maxime temporibus incididunt qui libero deserunt in ut reprehenderit natus culpa ut officia laborum','Lorem dicta sapiente officia saepe','Medical','Amet pariatur Incididunt soluta anim sunt nesciunt dolorem tempore porro eos excepteur','Eius ea nulla ad consequatur Quibusdam voluptatibus eius sed aliquam odio nostrum nostrum eum aut','Ea deleniti unde incidunt mollitia qui','makuz@mailinator.com','936','Quos mollitia architecto doloremque nostrum consequatur eos','Adipisci voluptate voluptatem Dolores laborum eius accusantium laudantium labore et voluptatem velit consectetur quo','Aute dolorum dicta odit ad adipisci suscipit delectus et dolor ut consequatur nihil quod','Inventore culpa molestiae dolor consequatur id commodi Nam ipsa ea id','Labore in excepturi eiusmod nihil'),(19,'Bert Mills','Maia Odom','Eiusmod optio officia optio vitae quisquam voluptatem aut sed velit illo ab ut et tempor tempore ex amet molestias','A et id officia reiciendis laudantium omnis eius temporibus repellendus Qui corporis est corporis adipisci sit molestiae reprehenderit autem','Alma Thornton','Est non quia reiciendis in sint quo maiores ut','Sequi pariatur Illum aliqua Aliqua Sit','Medical','Lorem inventore eaque deserunt veniam amet sed maxime','Qui aliquip laudantium aut totam aliquip ad velit velit ea et incidunt sed veniam obcaecati recusandae Dignissimos consequatur voluptas inventore','Incidunt necessitatibus accusamus dolore elit in dolore et laboriosam neque error in neque deserunt soluta','lojibafuj@mailinator.com','133','Quidem dolores dicta fugiat officia velit culpa consectetur necessitatibus eaque','Voluptatem Porro odit aut nostrum impedit aliqua Aliquid non officiis veniam deleniti qui et quod ad sunt omnis','Quia rerum similique ut earum eos excepteur corporis ad eum et consequat Ipsa est quia molestias proident voluptatum sunt','Voluptatem Eos id voluptas iure','Adipisci est debitis dolorem amet dolor et non voluptates aspernatur reiciendis dolor autem obcaecati tempora veniam unde'),(20,'Kevin Taylor','Ariel Olsen','Quis sapiente quo id enim totam necessitatibus fugiat eum dolor nemo fugit perferendis inventore corrupti quos distinctio','A aliqua Non non aspernatur a quibusdam itaque doloribus deserunt modi ratione sit dolore dolore','Aretha Pollard','Qui quos repellendus A placeat in suscipit minus eos molestiae quidem nobis modi','Aliquam aute nemo lorem perspiciatis reiciendis','Eos enim ad tempora doloribus et dolorum molestiae dolore consequatur quia inventore voluptatem dolore','Ut ipsum rerum mollitia perferendis sit a eiusmod nesciunt','Ex cum eos nisi possimus dolor illum tempore quo qui laborum qui optio tempore consequuntur qui','Ut sunt soluta est eum esse quisquam','cyjoxawudy@mailinator.com','966','Repellendus Enim debitis eos rerum','Eius aperiam incididunt delectus culpa asperiores quia et laborum Ipsum aut velit','Illo est sit magni labore exercitationem vel voluptatem adipisci sapiente id autem','Alias aute ut lorem est fugiat illum do mollit adipisci voluptatum nobis voluptas minima quisquam nihil aliquam occaecat fugit facere','Ut facilis qui praesentium ex molestias iure dicta aliquip culpa rerum molestiae ea quis nisi'),(21,'Addison Ayers','Vaughan Cherry','Sit minim pariatur Saepe corrupti exercitationem sed voluptatem aperiam aliquip lorem aliqua','Eius non sapiente eos rerum velit','Francis Myers','Culpa optio minus sed officiis totam nulla tempora quo non ducimus','Illum est veritatis commodo hic enim ex veniam inventore omnis assumenda eos qui ex et totam et temporibus','Ut quia aut dolorem ullamco dolores','Non dolor id ea explicabo Ad labore lorem dolorem consequatur doloribus explicabo Dignissimos cum','Laudantium qui dolor voluptatem Sit delectus pariatur Proident molestiae veritatis nostrum excepteur corrupti enim quasi rem consequat','Eum exercitationem commodo obcaecati incididunt blanditiis commodo cumque excepturi aut sequi voluptate provident nemo','qehyt@mailinator.com','19','Est dolores nihil deleniti nulla officia fugiat dolor','In voluptatem eaque voluptates occaecat','Nisi aspernatur hic pariatur Eum iure et elit','Alias dolor mollitia similique suscipit rem minus et qui ut amet sequi vel sequi saepe eu sunt duis eos','Quis minim modi harum at nemo est quia harum qui quia debitis lorem'),(22,'Colin Hood','Veronica Frank','Porro autem sed blanditiis consequatur est ex voluptatem Aute commodo corrupti elit illum qui voluptatum sit dolore nesciunt culpa','Esse est laudantium voluptatibus ducimus earum ut officia praesentium aut aut sed','Scarlett Robles','Assumenda numquam velit nemo adipisci','Odio molestias sapiente reiciendis aut enim maxime corporis ut vel inventore ad laborum Qui et','Qui vero irure tempore est placeat expedita autem nostrud numquam et cillum asperiores esse molestiae exercitation ab explicabo Dignissimos','Saepe dolor delectus est reiciendis animi consequatur aut alias','Reprehenderit consequuntur ea aliqua Delectus ut illo autem fugiat veritatis iste est ex cillum aliqua Est tempora eum assumenda','Inventore ipsa inventore quia repudiandae incidunt et et esse quasi elit nesciunt sed commodi rerum deserunt','hixusyfah@mailinator.net','662','Quaerat iusto laudantium sint atque occaecat veritatis exercitation ut magna quia in sunt neque voluptatem voluptas quibusdam','Sint voluptatibus rem quis similique cillum cum ut laudantium sint et incidunt quis numquam qui consequatur ut ullam ut quia','Mollitia consequatur veniam in eveniet quisquam facere','Nostrum commodi reprehenderit dolorum ipsam elit','Incididunt dolor voluptatem velit voluptas dolor quam ipsum voluptatum lorem sint quidem'),(23,'Melvin Clements','Ainsley Jones','Rerum veniam aut eum voluptas tenetur velit molestias in animi dolorum veritatis ipsum eius','Dolore tempora repudiandae minus nisi dolores labore','Brynne Ramirez','Debitis quo id id veniam velit ad asperiores minim veniam cupiditate cupidatat Nam cupiditate','Atque aliquip molestiae ut modi illum possimus aliquip lorem veritatis voluptate ut quam obcaecati esse','Qui repudiandae fugiat iusto cillum atque ut doloremque corrupti odit','Voluptate quod nobis autem enim et mollitia commodo possimus est','Ea exercitationem obcaecati id velit iure non in proident necessitatibus voluptate maiores','Harum quidem quis quam numquam culpa pariatur Quidem sed dolores ut qui est in veniam dolore qui in tempora','wylo@mailinator.net','334','Optio molestiae iure quia sed temporibus nemo voluptatem accusantium eum sunt labore ullam doloribus','Corporis sunt porro quidem est id sed autem dolore in fuga Minus sunt veniam veniam nisi explicabo Maiores','Voluptatem autem eu qui ut perspiciatis magni debitis aute autem proident eos aliquam dolorem quis id consequuntur rerum','In qui quia rerum ex neque consequatur adipisci perferendis iusto quis quidem','Perspiciatis vel dolorem ut commodi error nisi non dolorem quis provident quod rerum deserunt aliquip nesciunt'),(24,'Cyrus Duffy','Kermit Vang','Omnis est et vitae similique aliquam laborum Ipsam sit labore mollitia ut est enim eum sed','Voluptate mollitia qui et et alias odio quas magna veniam commodo','Anthony Mendoza','Enim velit amet dolore sint','Dicta quia et possimus est nostrum quae','Voluptas lorem recusandae Quis dolor exercitation sint','In reprehenderit dolores et aperiam expedita fugit deserunt eos quidem voluptatem deserunt suscipit nihil','Quo tempora molestiae eos eaque ipsum deleniti voluptatem sed nisi molestias temporibus fugiat dolore quas deserunt fuga','Quidem quo pariatur Omnis maxime fuga Recusandae Nisi unde dolor reprehenderit','zohyjyma@mailinator.net','130','Lorem culpa ea aut ea aliqua Aperiam possimus qui consequatur ratione blanditiis consequatur consectetur praesentium nihil enim','Ipsum ipsam veritatis delectus aut error sit neque quisquam voluptate ullam sed duis quo tempor eu voluptatibus est nisi','Laborum Cillum vel dolorum quia ab ab consectetur ad aliquid','Suscipit in distinctio Aliqua Quia omnis at quibusdam corrupti incidunt pariatur Consequat Dolore','Id suscipit porro nostrum fugiat nisi velit'),(25,'Marcia Adkins','Wynne Leonard','Est omnis et iusto itaque voluptate ullamco in ipsa','Esse delectus distinctio Soluta voluptatem nulla et aliquam voluptas accusantium placeat deserunt mollitia aliquip modi nesciunt culpa itaque ullamco aliquid','Joshua Mckay','Distinctio Est unde similique labore corrupti quibusdam dolorem doloribus commodo','Commodi necessitatibus iure ratione aut in','Sunt nisi maxime enim soluta sed consequat Et in rerum eu facilis molestiae','Laboris expedita neque atque nulla qui eos veniam voluptatem Porro irure','Ullamco ab sint ipsum corporis porro quos aliqua Eu accusantium doloribus laborum In velit sit minima eiusmod similique','Qui provident nisi dolorum soluta','tirygub@mailinator.net','373','Eveniet vitae tempor dignissimos magnam repellendus Voluptas iure amet adipisicing quia eos libero adipisicing a omnis rerum quis','Esse cillum laboris in eveniet dolorem voluptate tempor in animi','Tempora laborum qui aut sunt et dolorem ab laboris sed','Nobis ea dolor ea nulla dolore incididunt quo quaerat molestiae aut tenetur autem reiciendis aute quis sint et','Pa$$w0rd!'),(26,'Rogan Waller','Drake Curry','Corrupti eiusmod obcaecati deserunt error','Ut dolorem id do perspiciatis id voluptate corrupti','Ivy Morris','Sit excepteur quis molestiae est temporibus excepteur ad eum ratione','Veniam lorem sit error pariatur Praesentium vel voluptas sint laudantium qui voluptatem recusandae Enim consectetur dolore pariatur','Cs','Et voluptate ut ut officia consequatur consequatur reprehenderit illum laborum ut eum rerum sint dolore id sunt','Nihil adipisicing suscipit reiciendis lorem mollit provident aut dolore velit sint rerum debitis natus pariatur Ut voluptatem Aut','Quia enim tempora sit nemo id quaerat qui deserunt adipisci ullam inventore quae sint maiores ea','zyqebab@mailinator.net','971','Quia anim iusto dolor in unde explicabo Voluptates velit quia maxime aut neque','Pariatur Suscipit et ut reprehenderit','Ut ullamco ipsum officia qui eu perspiciatis in assumenda minus nobis aperiam sunt maxime aut placeat','Est doloremque dolor saepe necessitatibus ut animi nisi occaecat est repellendus Quo','123456'),(27,'Abraham Robinson','Allistair Ware','Itaque voluptates ab est reiciendis aut quia temporibus quasi voluptate cupidatat est asperiores sint laudantium consectetur aut tempor dolor','Consectetur ipsam deleniti consequat Et corrupti','Adrienne Lynn','Fugit molestiae fugiat tempore beatae voluptate aute ab dolores voluptatem Quia','Iste quo et maxime voluptate hic proident','Sed soluta dolorem non reprehenderit cupidatat aute dolor cillum aperiam ratione aut consequatur ipsum qui fugiat qui','Amet sunt mollitia nostrud id in tempora officia officia veniam vero Nam dolores quia laboriosam quia porro qui aut laborum','Ut alias reprehenderit magni sed quaerat non ipsum numquam reprehenderit consequatur Vitae soluta voluptates voluptatum nulla nobis in','Quia iste aut ut sit irure et sequi assumenda consequatur At provident qui provident dolor facere deserunt dolore sed fugit','gaxydyvoqi@mailinator.com','398','Nisi molestiae earum sed non nostrum officiis excepteur eu eos autem et perspiciatis quam commodo sed','Cum debitis dolores et est adipisci nostrud dolor dignissimos','Et laudantium dolor labore anim Nam odit fuga Nemo est ea mollit','Nesciunt maiores nesciunt nemo repellendus Harum aliqua Voluptatibus consequuntur','Pa$$w0rd!'),(28,'Cody Irwin','Sloane Cotton','Proident consequatu','Debitis ut quibusdam','Nelle Quinn','Facere qui dolorem q','Provident reprehend','Et veniam et omnis ','Ea enim molestiae ip','Repudiandae nisi nih','Officia deleniti ut ','soje@mailinator.net','933','Quasi aliquam et eos','Aut duis qui ad a vo','Est qui consequatur','Quae officia repelle','1234'),(29,'Kay Wilkinson','Myles Solis','Sapiente ad dignissi','Amet ut similique r','Nora Abbott','Quam elit voluptate','manager','Sit esse cumque con','Nisi obcaecati do pa','Ipsam laudantium ev','Nihil dolores verita','xyvurer@mailinator.com','501','Minima et doloribus ','Ducimus rerum error','Velit aut obcaecati ','Sunt deserunt incid','Nihil dolores verita');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `des` varchar(255) DEFAULT NULL,
  `cost` varchar(255) DEFAULT NULL,
  `assignTo` varchar(45) DEFAULT NULL,
  `department` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (1,'Gage Ortiz','Approved','Laboriosam qui voluptatem iure atque maiores sunt doloribus possimus architecto earum harum','Ipsum mollit mollitia qui culpa proident molestias sed similique accusamus in aspernatur culpa animi incidunt enim consectetur rerum id sint',NULL,NULL),(2,'Kirby Puckett','Approved','Assumenda in consequatur Saepe magnam accusamus','Corporis necessitatibus culpa beatae aut elit enim quia sed quia nulla',NULL,NULL),(3,'Burke Diaz','Pending','Suscipit sequi ut ut alias id tempora sapiente ipsum facilis veniam quisquam sit tempor et beatae dolor deserunt laboriosam aut','Aut illum eum nostrum dolore molestiae molestiae aut exercitation consequatur nulla quasi aute omnis repellendus Fuga Culpa laboris corporis',NULL,NULL),(4,'Allen Burns','Pending','Et deserunt ducimus Nam delectus nemo','Ipsa magna est nostrud aut Nam similique ad error saepe fugiat aut ducimus deleniti','zyqebab@mailinator.net','Cs');
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timesheet`
--

DROP TABLE IF EXISTS `timesheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timesheet` (
  `email` varchar(255) DEFAULT NULL,
  `tittle` varchar(255) DEFAULT NULL,
  `des` varchar(255) DEFAULT NULL,
  `hours` varchar(45) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timesheet`
--

LOCK TABLES `timesheet` WRITE;
/*!40000 ALTER TABLE `timesheet` DISABLE KEYS */;
INSERT INTO `timesheet` VALUES ('wokabyma@mailinator.net','Commodo laborum ut voluptas adipisci sequi nisi quae distinctio Labore mollitia duis eos dicta hic nulla inventore','Assumenda quo maxime tenetur asperiores odit nulla facilis libero alias magni id ut et pariatur Suscipit','12','25-Jul-1982'),('zyqebab@mailinator.net','jjjjjjjjjjjj','jjjjjhj','78','Thu Jan 17 16:48:38 IST 2019'),('qukozimyxa@mailinator.com','dgfhd','ghfghfgh','78','Thu Jan 17 18:03:13 IST 2019');
/*!40000 ALTER TABLE `timesheet` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-02 19:28:36
