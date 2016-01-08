-- MySQL dump 10.13  Distrib 5.5.46, for debian-linux-gnu (x86_64)
--
-- Host: bddev.cfs.dev    Database: cfs_admin_2_0
-- ------------------------------------------------------
-- Server version	5.6.14-log

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
-- Table structure for table `abonados_mrw`
--

DROP TABLE IF EXISTS `abonados_mrw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `abonados_mrw` (
  `abonado_cod` int(6) NOT NULL,
  `abonado_nombre` varchar(35) DEFAULT NULL,
  `abonado_nif` varchar(15) DEFAULT NULL,
  `abonado_contacto` varchar(30) DEFAULT NULL,
  `abonado_part` binary(1) DEFAULT NULL,
  `abfecha_alta` datetime DEFAULT NULL,
  `abfecha_baja` datetime DEFAULT NULL,
  `abonado_tlf` varchar(10) DEFAULT NULL,
  `abonado_fax` varchar(10) DEFAULT NULL,
  `abonado_mail` varchar(40) DEFAULT NULL,
  `abonado_sms` varchar(10) DEFAULT NULL,
  `abonado_tipo` varchar(1) DEFAULT NULL,
  `abonado_ccgg` varchar(1) DEFAULT NULL,
  `abonado_iva` tinyint(2) DEFAULT NULL,
  `abonado_numdepart` smallint(10) DEFAULT NULL,
  `abonado_susp` varchar(1) DEFAULT NULL,
  `abonado_tcliente` smallint(2) DEFAULT NULL,
  `abonado_idcorp` smallint(6) DEFAULT NULL,
  `abonado_tvia` varchar(3) DEFAULT NULL,
  `abonado_descripvia` varchar(25) DEFAULT NULL,
  `abonado_direccion` varchar(35) DEFAULT NULL,
  `abonado_numdirec` smallint(10) DEFAULT NULL,
  `abonado_poblacion` varchar(35) DEFAULT NULL,
  `abonado_provincia` smallint(4) DEFAULT NULL,
  `abonado_cp` smallint(5) DEFAULT NULL,
  `abonado_escpuerta` varchar(15) DEFAULT NULL,
  `abonado_facnombre` varchar(30) DEFAULT NULL,
  `abonado_facnif` varchar(15) DEFAULT NULL,
  `abonado_facdireccion` varchar(35) DEFAULT NULL,
  `abonado_faccp` smallint(5) DEFAULT NULL,
  `abonado_facidprov` smallint(4) DEFAULT NULL,
  `abonado_facpoblacion` varchar(35) DEFAULT NULL,
  `abonado_sn` varchar(1) DEFAULT NULL,
  `abonado_ref` varchar(1) DEFAULT NULL,
  `abonado_fp` tinyint(3) DEFAULT NULL,
  `abonado_fpdescripcion` varchar(35) DEFAULT NULL,
  `abonado_1vto` smallint(10) DEFAULT NULL,
  `abonado_dia1` smallint(10) DEFAULT NULL,
  `abonado_dia2` smallint(10) DEFAULT NULL,
  `abonado_dia3` smallint(10) DEFAULT NULL,
  `abfac_codcli` smallint(6) DEFAULT NULL,
  `abonado_clicorp` smallint(6) DEFAULT NULL,
  `abonado_clicorpnombre` varchar(50) DEFAULT NULL,
  `abdep_codigo` varchar(10) DEFAULT NULL,
  `abdep_nombre` varchar(30) DEFAULT NULL,
  `abdep_dirviacod` varchar(3) DEFAULT NULL,
  `abdep_viadescrip` varchar(25) DEFAULT NULL,
  `abdep_dirdirecion` varchar(35) DEFAULT NULL,
  `abdep_dirnumero` smallint(10) DEFAULT NULL,
  `abdep_dirpoblacion` varchar(35) DEFAULT NULL,
  `abdep_diridprov` smallint(4) DEFAULT NULL,
  `abdep_dircp` smallint(5) DEFAULT NULL,
  `abdep_direscpuerta` smallint(15) DEFAULT NULL,
  `abdep_telefono` smallint(10) DEFAULT NULL,
  `abdep_fax` smallint(10) DEFAULT NULL,
  `abdep_email` varchar(40) DEFAULT NULL,
  `abdep_ivacodigo` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`abonado_cod`),
  KEY `indice` (`abonado_cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `activaciones`
--

DROP TABLE IF EXISTS `activaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activaciones` (
  `actcod` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `actmd5` varchar(45) NOT NULL DEFAULT '',
  `usuarioemail` varchar(45) NOT NULL DEFAULT '',
  `operadorcod` int(10) NOT NULL DEFAULT '1',
  `contratocod` int(10) NOT NULL DEFAULT '0',
  `actfalta` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `actfactivacion` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `actproducto` varchar(45) NOT NULL DEFAULT '',
  `actparamsemail` text NOT NULL,
  `actfenvio` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `actfentrega` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`actcod`)
) ENGINE=InnoDB AUTO_INCREMENT=10075 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `activaciones_carteros`
--

DROP TABLE IF EXISTS `activaciones_carteros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activaciones_carteros` (
  `activacioncarterocod` int(10) NOT NULL AUTO_INCREMENT,
  `clientecod` int(10) NOT NULL,
  `usuariocod` int(10) NOT NULL,
  `numenvios` int(10) NOT NULL,
  `colabbddcod` int(10) NOT NULL,
  `colaenviocod` int(10) NOT NULL,
  `fechaalta` datetime NOT NULL,
  `procesocod` tinyint(4) NOT NULL,
  `estadocod` tinyint(4) NOT NULL,
  PRIMARY KEY (`activacioncarterocod`),
  KEY `activaciones_carteros_alt` (`procesocod`,`estadocod`,`colabbddcod`),
  KEY `activaciones_carteros_alt2` (`clientecod`,`colaenviocod`,`procesocod`,`fechaalta`,`numenvios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `activaciones_carteros_prog`
--

DROP TABLE IF EXISTS `activaciones_carteros_prog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activaciones_carteros_prog` (
  `activacioncarteroprogcod` int(10) NOT NULL AUTO_INCREMENT,
  `activacioncarterocod` int(10) NOT NULL,
  `colabbddcod` int(10) NOT NULL,
  `colaenviocod` int(10) NOT NULL,
  `msgcod` int(10) NOT NULL,
  `clientecod` int(10) NOT NULL,
  `usuariocod` int(10) NOT NULL,
  `fecha` datetime NOT NULL,
  `estadocod` tinyint(4) NOT NULL,
  PRIMARY KEY (`activacioncarteroprogcod`),
  KEY `activaciones_carteros_prog_alt` (`estadocod`)
) ENGINE=InnoDB AUTO_INCREMENT=3094 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `adm_accesos`
--

DROP TABLE IF EXISTS `adm_accesos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adm_accesos` (
  `accesocod` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `operadorcod` int(10) NOT NULL,
  `clientenombre` varchar(45) NOT NULL,
  `usuarioemail` varchar(95) NOT NULL,
  `fecha` datetime NOT NULL,
  `dominio` varchar(45) NOT NULL,
  `tipoacceso` varchar(20) NOT NULL,
  `idioma` varchar(2) NOT NULL,
  `observaciones` varchar(500) NOT NULL,
  `fecharesolucion` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`accesocod`)
) ENGINE=InnoDB AUTO_INCREMENT=248999 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `adm_accesos_acumulado`
--

DROP TABLE IF EXISTS `adm_accesos_acumulado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adm_accesos_acumulado` (
  `accesocod` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `tipo` varchar(45) NOT NULL,
  `operadorcod` int(10) NOT NULL,
  `clientenombre` varchar(45) NOT NULL,
  `usuarioemail` varchar(95) NOT NULL,
  `totalaccesos` float(10,2) NOT NULL,
  PRIMARY KEY (`accesocod`),
  KEY `idxUsuarioEmail` (`usuarioemail`)
) ENGINE=InnoDB AUTO_INCREMENT=1119837 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `adm_altas_lotes`
--

DROP TABLE IF EXISTS `adm_altas_lotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adm_altas_lotes` (
  `altaslotescod` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(90) NOT NULL,
  `ruta` varchar(90) NOT NULL,
  `filas` int(5) NOT NULL,
  `ultimafila` int(5) NOT NULL,
  `log` varchar(45) NOT NULL,
  `estado` int(2) NOT NULL,
  PRIMARY KEY (`altaslotescod`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `adm_envios_totales`
--

DROP TABLE IF EXISTS `adm_envios_totales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adm_envios_totales` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `tipo` varchar(45) NOT NULL,
  `operadorcod` int(10) NOT NULL,
  `clientecod` int(10) NOT NULL,
  `usuariocod` int(10) NOT NULL,
  `totalenvios` float(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7483 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `adm_envios_totales_acumulado`
--

DROP TABLE IF EXISTS `adm_envios_totales_acumulado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adm_envios_totales_acumulado` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `tipo` varchar(45) NOT NULL,
  `operadorcod` int(10) NOT NULL,
  `clientecod` int(10) NOT NULL,
  `usuariocod` int(10) NOT NULL,
  `totalenvios` float(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=162014 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `adm_mensajes_estados_new`
--

DROP TABLE IF EXISTS `adm_mensajes_estados_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adm_mensajes_estados_new` (
  `clientecod` int(10) NOT NULL,
  `msgcod` int(10) NOT NULL,
  `perfilproductocod` int(10) NOT NULL,
  `msgestado` int(10) NOT NULL DEFAULT '0',
  `msgfechaenviado` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `msgfechaenviadogmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ipenvio` varchar(20) DEFAULT NULL,
  `soenvio` varchar(300) DEFAULT NULL,
  `navegador` varchar(300) DEFAULT NULL,
  `agenteweb` varchar(500) DEFAULT NULL,
  `errorestadoenvio` int(10) unsigned NOT NULL,
  `vistoestado` int(10) unsigned NOT NULL,
  PRIMARY KEY (`msgcod`,`perfilproductocod`,`msgestado`,`msgfechaenviado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `adm_monitorizar_clientes`
--

DROP TABLE IF EXISTS `adm_monitorizar_clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adm_monitorizar_clientes` (
  `monitorizarclientecod` int(10) NOT NULL AUTO_INCREMENT,
  `clientecod` int(10) NOT NULL,
  `usuariocod` int(10) NOT NULL,
  `fechaalta` datetime NOT NULL,
  `fechabaja` datetime NOT NULL,
  `tracking` varchar(8) NOT NULL DEFAULT '',
  `estado` tinyint(4) NOT NULL,
  `monitorizacion` longtext NOT NULL,
  PRIMARY KEY (`monitorizarclientecod`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `adm_rehusados_backup`
--

DROP TABLE IF EXISTS `adm_rehusados_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adm_rehusados_backup` (
  `clientecod` int(10) NOT NULL,
  `msgcod` int(10) NOT NULL,
  `perfilproductocod` int(10) NOT NULL,
  `msgestado` int(10) NOT NULL DEFAULT '0',
  `msgfechaenviado` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `msgfechaenviadogmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ipenvio` varchar(20) DEFAULT NULL,
  `soenvio` varchar(300) DEFAULT NULL,
  `navegador` varchar(300) DEFAULT NULL,
  `agenteweb` varchar(500) DEFAULT NULL,
  `errorestadoenvio` int(10) unsigned NOT NULL,
  `vistoestado` int(10) unsigned NOT NULL,
  PRIMARY KEY (`msgcod`,`perfilproductocod`,`msgestado`,`msgfechaenviado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `adm_rehusados_backup_notificar`
--

DROP TABLE IF EXISTS `adm_rehusados_backup_notificar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adm_rehusados_backup_notificar` (
  `clientecod` int(10) NOT NULL,
  `msgcod` int(10) NOT NULL,
  `perfilproductocod` int(10) NOT NULL,
  `hilocod` int(10) NOT NULL,
  `hilocfscode` varchar(50) DEFAULT NULL,
  `afectado` varchar(25) DEFAULT NULL,
  `cfsdatafechadescarga` datetime DEFAULT NULL,
  `emailafectado` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `adm_reiterar_entrega`
--

DROP TABLE IF EXISTS `adm_reiterar_entrega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adm_reiterar_entrega` (
  `admreiterarentregacod` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `operadorcod` int(10) NOT NULL,
  `clientecod` int(10) NOT NULL,
  `usuariocod` int(10) NOT NULL,
  `fechareiterar` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `avisoscroncod` int(10) NOT NULL,
  `tipoenvio` varchar(45) NOT NULL DEFAULT '' COMMENT 'Registrado/Certificado',
  `numeroaviso` varchar(30) NOT NULL,
  `clientenombre` varchar(45) NOT NULL DEFAULT '',
  `usuarioemail` varchar(150) NOT NULL,
  `emailremitente` varchar(100) NOT NULL,
  `emaildestinatario` varchar(100) NOT NULL,
  `asunto` varchar(500) NOT NULL,
  `fechaenvio` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `error` varchar(500) NOT NULL DEFAULT '',
  `fecharesolucion` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `id_proceso` varchar(25) NOT NULL DEFAULT '',
  `porintegracion` varchar(25) NOT NULL,
  PRIMARY KEY (`admreiterarentregacod`),
  KEY `reiterar_entrega_alt2` (`emailremitente`,`asunto`(255),`numeroaviso`,`porintegracion`),
  KEY `reiterar_entrega_alt` (`fechareiterar`,`fecharesolucion`,`emailremitente`,`asunto`(255),`numeroaviso`,`porintegracion`),
  KEY `avisoscroncod` (`avisoscroncod`,`fechareiterar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `admt_accion`
--

DROP TABLE IF EXISTS `admt_accion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admt_accion` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ruta` varchar(255) NOT NULL COMMENT 'Es la ruta a la que se intenta acceder o crear las acciones',
  `descripcion` varchar(255) DEFAULT NULL,
  `fecha_created_gmt0` datetime DEFAULT NULL,
  `accion_categoria_id` int(11) DEFAULT '0',
  `visible` tinyint(2) DEFAULT '10',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ruta_UNIQUE` (`ruta`),
  KEY `fk_admt_accion_categoria_1_idx` (`accion_categoria_id`),
  CONSTRAINT `fk_admt_accion_categoria_1` FOREIGN KEY (`accion_categoria_id`) REFERENCES `admt_accion_categoria` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `admt_accion_categoria`
--

DROP TABLE IF EXISTS `admt_accion_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admt_accion_categoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) DEFAULT NULL,
  `codigo_tipo` int(11) DEFAULT NULL COMMENT 'Código de Tipo. Un tipo es una clasificación superior a categoría (p.ej. "Gestion Usuarios", "Gestión de Sistemas"...)',
  `orden` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `admt_configuracion_operador`
--

DROP TABLE IF EXISTS `admt_configuracion_operador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admt_configuracion_operador` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `operador_id` int(11) NOT NULL,
  `usuario_facturacion_id` int(11) DEFAULT NULL,
  `email_facturacion` varchar(250) DEFAULT NULL,
  `aviso_legal` text,
  `inscripcion_registro_mercantil` text,
  `web` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fk_configuracion_operador_operador_idx` (`operador_id`),
  KEY `fk_configuracion_operador_usuario_idx` (`usuario_facturacion_id`),
  CONSTRAINT `fk_configuracion_operador_operador` FOREIGN KEY (`operador_id`) REFERENCES `operadores` (`operadorcod`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_configuracion_operador_usuario` FOREIGN KEY (`usuario_facturacion_id`) REFERENCES `clnt_usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `admt_descripcion_codigo`
--

DROP TABLE IF EXISTS `admt_descripcion_codigo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admt_descripcion_codigo` (
  `nombre_codigo` varchar(100) NOT NULL,
  `valor_codigo` varchar(45) NOT NULL,
  `descripcion_codigo` varchar(255) NOT NULL,
  `codigo_idioma` varchar(6) NOT NULL DEFAULT 'es',
  PRIMARY KEY (`nombre_codigo`,`valor_codigo`,`codigo_idioma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `admt_filtro_hilos`
--

DROP TABLE IF EXISTS `admt_filtro_hilos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admt_filtro_hilos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `texto_titulo` varchar(255) NOT NULL DEFAULT 'Filtro' COMMENT 'Título identificativo de un filtro. Para mostrar en pantalla, informes, etc ...',
  `texto_identificador_publico` varchar(255) DEFAULT NULL COMMENT 'Texto reducido utilizado para identificar un filtro de un usuario, en webservices, otros ...',
  `codigotipohilo` smallint(6) DEFAULT NULL,
  `codigo_estados_flujo_actuales` varchar(255) DEFAULT NULL COMMENT 'lista de estados de flujo por los que filtrar, separados por comas, para utilizar en un IN ()',
  `codigo_periodo_datos_consultados` smallint(6) NOT NULL,
  `fecha_imposicion_desde_gmt0` datetime DEFAULT NULL COMMENT 'Fecha mínima de imposición del hilo en hora gmt0, que debe tener el hilo para se incluido en la consulta',
  `fecha_imposicion_hasta_gmt0` datetime DEFAULT NULL COMMENT 'Fecha máxima de imposición del hilo en formato gmt0, que debe tener para ser incluida en el filt',
  `texto_enviado` varchar(255) DEFAULT NULL COMMENT 'Texto que debe contener el Hilo para ser incluido en el filtro. En "codigo_campo_busqueda_texto_enviado" se indica en que campos se debe buscar dicho texto.',
  `codigo_campo_busqueda_texto_enviado` smallint(6) DEFAULT NULL COMMENT 'Indica los campos en los que se debe buscar el "texto_enviado". Pueden ser: asunto, contenido enviado, contenido respuesta, cfsCode.',
  `texto_email_remitente` varchar(255) DEFAULT NULL COMMENT 'Filtrar Hilos enviados desde el email remitente aquí indicad',
  `texto_identificacion_destinatario` varchar(255) DEFAULT NULL COMMENT 'Este texto debe estar contenido en alguno de los campos que figuran como destino del hilo, es decir:',
  `texto_tags_originales` varchar(255) DEFAULT NULL COMMENT 'Colección de tags por los que filtrar, separados por comas, en formato "orignal", es decir, con tildes y demás caracteres no normalizados',
  `codigo_filtro_adjuntos` smallint(6) DEFAULT NULL COMMENT 'Indica si se debe filtrar por el estado de descarga de los adjuntos.',
  `codigo_filtro_pago` smallint(6) DEFAULT NULL COMMENT 'Indica si se debe filtrar por Hilos con widget de pago, en estado pagado o no.',
  `permitirrespuesta` smallint(6) DEFAULT NULL,
  `permitiraceptacionvsrechazo` smallint(6) DEFAULT NULL,
  `permitirpaypal` smallint(6) DEFAULT NULL,
  `fecha_registro_gmt0` varchar(255) NOT NULL COMMENT 'Tipo de Hilo: certificado, registrado, publicación, etc ...',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `admt_grupo`
--

DROP TABLE IF EXISTS `admt_grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admt_grupo` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `grupo_id_parent` int(10) DEFAULT NULL COMMENT 'Relaciona un grupo con su grupo padre',
  `url_imagen` varchar(255) DEFAULT NULL COMMENT 'Imagen que se presenta para el grupo',
  `fecha_creacion_gmt0` datetime DEFAULT NULL,
  `activo` tinyint(2) DEFAULT '10',
  PRIMARY KEY (`id`),
  KEY `ix_grupo_parent` (`id`,`grupo_id_parent`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `admt_grupo_accion`
--

DROP TABLE IF EXISTS `admt_grupo_accion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admt_grupo_accion` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `grupo_id` int(10) DEFAULT NULL,
  `accion_id` int(10) DEFAULT NULL,
  `codigo_permiso` tinyint(2) NOT NULL DEFAULT '10' COMMENT 'Código de permiso. Posibles valores son: 10 => Deny, 20 => Allow, 30 => Sin asignar',
  `fecha_creacion_gmt0` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `grupo_id_accion_id_UNIQUE` (`grupo_id`,`accion_id`),
  KEY `fk_admt_grupo_accion_2_idx` (`accion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=376 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `admt_grupo_operador`
--

DROP TABLE IF EXISTS `admt_grupo_operador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admt_grupo_operador` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `grupo_id` int(10) NOT NULL,
  `operador_id` int(10) NOT NULL COMMENT 'Se corresponde con el operadorcod',
  PRIMARY KEY (`id`),
  UNIQUE KEY `grupo_id__operador_id_UNIQUE` (`grupo_id`,`operador_id`),
  KEY `fk_admt_grupo_operador_2_idx` (`operador_id`),
  CONSTRAINT `fk_admt_grupo_operador_1` FOREIGN KEY (`grupo_id`) REFERENCES `admt_grupo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_admt_grupo_operador_2` FOREIGN KEY (`operador_id`) REFERENCES `operadores` (`operadorcod`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `admt_grupo_operador_usuario_rh1no`
--

DROP TABLE IF EXISTS `admt_grupo_operador_usuario_rh1no`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admt_grupo_operador_usuario_rh1no` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `grupo_id` int(10) NOT NULL,
  `operador_id` int(10) NOT NULL COMMENT 'corresponde con el operadorcod',
  `usuario_rh1no_id` int(10) NOT NULL COMMENT 'corresponde con el usuario rh1no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `grupo_id_operador_id_usuario_rh1no_id_UNIQUE` (`grupo_id`,`operador_id`,`usuario_rh1no_id`),
  KEY `fk_admt_grupo_operador_usuario_rh1no_2_idx` (`usuario_rh1no_id`),
  CONSTRAINT `fk_admt_grupo_operador_usuario_rh1no_1` FOREIGN KEY (`grupo_id`, `operador_id`) REFERENCES `admt_grupo_operador` (`grupo_id`, `operador_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_admt_grupo_operador_usuario_rh1no_2` FOREIGN KEY (`usuario_rh1no_id`) REFERENCES `usuarios_rh1no` (`usuariocod`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2279 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`myconfirms`@`192.168.0.%`*/ /*!50003 TRIGGER operador_usuario_rh1no_after_update
AFTER UPDATE
   ON admt_grupo_operador_usuario_rh1no FOR EACH ROW
   
BEGIN
   
   -- Guardamos en la tabla de copia el valor del campo modificado
INSERT INTO admt_grupo_operador_usuario_rh1no_copia
( grupo_id, operador_id, usuario_rh1no_id)
VALUES
	( NEW.grupo_id, NEW.operador_id, NEW.usuario_rh1no_id);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `admt_grupo_operador_usuario_rh1no_copia`
--

DROP TABLE IF EXISTS `admt_grupo_operador_usuario_rh1no_copia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admt_grupo_operador_usuario_rh1no_copia` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `grupo_id` int(10) NOT NULL,
  `operador_id` int(10) NOT NULL COMMENT 'corresponde con el operadorcod',
  `usuario_rh1no_id` int(10) NOT NULL COMMENT 'corresponde con el usuario rh1no',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1146 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `admt_informe_definicion`
--

DROP TABLE IF EXISTS `admt_informe_definicion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admt_informe_definicion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `codigo_categoria_informe` smallint(6) NOT NULL,
  `codigo_nivel_relevancia` smallint(6) NOT NULL DEFAULT '5',
  `codigo_prioridad` smallint(6) NOT NULL DEFAULT '5',
  `codigo_canal_proceso` smallint(6) NOT NULL DEFAULT '1',
  `codigo_disponible_usuario` smallint(6) NOT NULL DEFAULT '0',
  `codigo_disponible_cliente` smallint(6) NOT NULL DEFAULT '0',
  `codigo_disponible_supercliente` smallint(6) NOT NULL DEFAULT '0',
  `codigo_disponible_gestor` smallint(6) NOT NULL DEFAULT '0',
  `codigo_disponible_operador` smallint(6) NOT NULL DEFAULT '0',
  `codigo_disponible_administrador` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `admt_informe_generado`
--

DROP TABLE IF EXISTS `admt_informe_generado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admt_informe_generado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `informe_definicion_id` int(11) NOT NULL,
  `informe_tarea_id` int(11) DEFAULT NULL,
  `operadorcod` int(10) DEFAULT NULL,
  `gestorcod` int(11) DEFAULT NULL,
  `clientecod` int(10) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `titulo` varchar(255) NOT NULL,
  `contenido` mediumtext NOT NULL,
  `fecha_datos_desde_gmt0` datetime NOT NULL,
  `fecha_datos_hasta_gmt0` datetime NOT NULL,
  `fecha_registro_gmt0` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `codigo_estado_lectura` smallint(6) NOT NULL DEFAULT '0',
  `codigo_formato_contenido` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_informe_definicion1_idx` (`informe_definicion_id`),
  KEY `idx_operador` (`operadorcod`),
  KEY `idx_gestor` (`gestorcod`),
  KEY `idx_cliente` (`clientecod`),
  KEY `fk_informe_tarea_1_idx` (`informe_tarea_id`),
  KEY `fk_admt_informe_generado_1_idx` (`usuario_id`),
  CONSTRAINT `fk_admt_informe_generado_admt_informe_definicion1` FOREIGN KEY (`informe_definicion_id`) REFERENCES `admt_informe_definicion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_admt_informe_generado_admt_informe_tarea1` FOREIGN KEY (`informe_tarea_id`) REFERENCES `admt_informe_tarea` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_admt_informe_generado_clientes1` FOREIGN KEY (`clientecod`) REFERENCES `clientes` (`clientecod`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_admt_informe_generado_clnt_usuario1` FOREIGN KEY (`usuario_id`) REFERENCES `clnt_usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_admt_informe_generado_franquicias1` FOREIGN KEY (`gestorcod`) REFERENCES `franquicias` (`gestorcod`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_admt_informe_generado_operadores1` FOREIGN KEY (`operadorcod`) REFERENCES `operadores` (`operadorcod`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `admt_informe_planificacion`
--

DROP TABLE IF EXISTS `admt_informe_planificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admt_informe_planificacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `informe_definicion_id` int(11) NOT NULL,
  `filtro_hilos_id` int(11) DEFAULT NULL,
  `operadorcod` int(10) DEFAULT NULL,
  `gestorcod` int(11) DEFAULT NULL,
  `clientecod` int(10) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `codigo_periodicidad_repeticion` smallint(6) NOT NULL,
  `codigo_dia_periodo_repeticion` smallint(6) NOT NULL DEFAULT '20',
  `numero_dia_repeticion` smallint(6) DEFAULT NULL,
  `hora_proceso_prevista_gmt0` time NOT NULL,
  `codigo_periodo_datos_consultados` smallint(6) NOT NULL,
  `codigo_almacenar_informe_generado` smallint(6) NOT NULL,
  `codigo_envio_email` smallint(6) NOT NULL,
  `codigo_idioma` varchar(6) NOT NULL,
  `fecha_inicio_vigencia_gmt0` datetime NOT NULL,
  `fecha_fin_vigencia_gmt0` datetime DEFAULT NULL,
  `texto_parametro_adicional` varchar(1000) DEFAULT NULL,
  `codigo_estado_planificacion_informe` smallint(6) NOT NULL,
  `fecha_estado_planificacion_informe_gmt0` datetime NOT NULL,
  `numero_proceso_batch` int(11) DEFAULT NULL,
  `codigo_prioridad` smallint(6) NOT NULL DEFAULT '5',
  `codigo_canal_proceso` smallint(6) NOT NULL DEFAULT '1',
  `fecha_registro_gmt0` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_admt_usuario_informe_admt_informe_definicion1_idx` (`informe_definicion_id`),
  KEY `fk_patt_informe_planificacion_admt_filtro_hilos1_idx` (`filtro_hilos_id`),
  KEY `fk_admt_informe_planificacion_1_idx` (`usuario_id`),
  KEY `fk_admt_informe_planificacion_2_idx` (`clientecod`),
  KEY `fk_admt_informe_planificacion_3_idx` (`operadorcod`),
  KEY `fk_admt_informe_planificacion_4_idx` (`gestorcod`),
  CONSTRAINT `fk_admt_informe_planificacion_admt_filtro_hilos1` FOREIGN KEY (`filtro_hilos_id`) REFERENCES `admt_filtro_hilos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_admt_informe_planificacion_admt_informe_definicion1` FOREIGN KEY (`informe_definicion_id`) REFERENCES `admt_informe_definicion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_admt_informe_planificacion_clientes1` FOREIGN KEY (`clientecod`) REFERENCES `clientes` (`clientecod`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_admt_informe_planificacion_clnt_usuario1` FOREIGN KEY (`usuario_id`) REFERENCES `clnt_usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_admt_informe_planificacion_franquicias1` FOREIGN KEY (`gestorcod`) REFERENCES `franquicias` (`gestorcod`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_admt_informe_planificacion_operadores1` FOREIGN KEY (`operadorcod`) REFERENCES `operadores` (`operadorcod`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `admt_informe_tarea`
--

DROP TABLE IF EXISTS `admt_informe_tarea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admt_informe_tarea` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `informe_definicion_id` int(11) NOT NULL,
  `informe_planificacion_id` int(11) DEFAULT NULL,
  `filtro_hilos_id` int(11) DEFAULT NULL,
  `operadorcod` int(10) DEFAULT NULL,
  `gestorcod` int(11) DEFAULT NULL,
  `clientecod` int(10) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `fecha_datos_desde_gmt0` datetime DEFAULT NULL,
  `fecha_datos_hasta_gmt0` datetime DEFAULT NULL,
  `fecha_proceso_prevista_gmt0` datetime NOT NULL,
  `fecha_proceso_real_gmt0` datetime DEFAULT NULL,
  `codigo_estado_tarea` smallint(6) NOT NULL,
  `numero_proceso_batch` int(11) DEFAULT NULL,
  `codigo_prioridad` smallint(6) NOT NULL DEFAULT '5',
  `codigo_canal_proceso` smallint(6) NOT NULL DEFAULT '1',
  `codigo_almacenar_informe_generado` smallint(6) NOT NULL,
  `codigo_envio_email` smallint(6) NOT NULL,
  `codigo_idioma` varchar(6) NOT NULL,
  `fecha_registro_gmt0` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_admt_informe_tarea_patt_usuario_informe1_idx` (`informe_planificacion_id`),
  KEY `admt_informe_tarea_patt_usuario_informe1_idx` (`fecha_proceso_prevista_gmt0`),
  KEY `fk_admt_informe_tarea_admt_informe_definicion1_idx` (`informe_definicion_id`),
  KEY `fk_admt_informe_tarea_admt_filtro_hilos1_idx` (`filtro_hilos_id`),
  KEY `fk_admt_informe_tarea_1_idx` (`usuario_id`),
  KEY `fk_admt_informe_tarea_2_idx` (`clientecod`),
  KEY `fk_admt_informe_tarea_3_idx` (`operadorcod`),
  KEY `fk_admt_informe_tarea_4_idx` (`gestorcod`),
  CONSTRAINT `fk_admt_informe_tarea_admt_filtro_hilos1` FOREIGN KEY (`filtro_hilos_id`) REFERENCES `admt_filtro_hilos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_admt_informe_tarea_admt_informe_definicion1` FOREIGN KEY (`informe_definicion_id`) REFERENCES `admt_informe_definicion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_admt_informe_tarea_admt_informe_planificacion1` FOREIGN KEY (`informe_planificacion_id`) REFERENCES `admt_informe_planificacion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_admt_informe_tarea_clientes1` FOREIGN KEY (`clientecod`) REFERENCES `clientes` (`clientecod`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_admt_informe_tarea_clnt_usuario1` FOREIGN KEY (`usuario_id`) REFERENCES `clnt_usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_admt_informe_tarea_franquicias1` FOREIGN KEY (`gestorcod`) REFERENCES `franquicias` (`gestorcod`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_admt_informe_tarea_operadores1` FOREIGN KEY (`operadorcod`) REFERENCES `operadores` (`operadorcod`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `admt_landings`
--

DROP TABLE IF EXISTS `admt_landings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admt_landings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `operadorcod` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `tarifacod` int(11) DEFAULT NULL,
  `descuento` decimal(9,2) DEFAULT NULL,
  `credito_asignado` int(11) DEFAULT NULL,
  `modalidad_pago` int(11) DEFAULT NULL,
  `superclientecod` int(11) DEFAULT NULL,
  `view_block` varchar(45) DEFAULT NULL,
  `preferencias` varchar(500) DEFAULT NULL COMMENT 'Preferencias que se aplicarán a cliente y usuario en la alta. Su estructura será: preferenciacod=valor##preferenciacod=valor##...##preferenciacod=valor',
  `usuario_rhino_id` int(10) DEFAULT NULL COMMENT 'Usuario rhino que se asocia a los clientes que se den de alta',
  `html_signin` text COMMENT 'Texto libre que se muestra en la pantalla de registro',
  `tipo_credito` smallint(2) DEFAULT NULL,
  `periodicidad_facturacion_id` int(11) DEFAULT NULL,
  `rappel_id` int(11) DEFAULT NULL,
  `fecha_registro_gmt0` timestamp NULL DEFAULT NULL,
  `activo` smallint(2) DEFAULT '10',
  PRIMARY KEY (`id`),
  KEY `fk_admt_landings_tarifacod_idx` (`tarifacod`),
  KEY `fk_admt_landings_usuariorhinocod_idx` (`usuario_rhino_id`),
  KEY `fk_admt_landings_periodofacturacionid_idx` (`periodicidad_facturacion_id`),
  KEY `fk_admt_landings_rappelid_idx` (`rappel_id`),
  KEY `fk_admt_landings_superclientecod` (`superclientecod`),
  CONSTRAINT `fk_admt_landings_periodofacturacionid` FOREIGN KEY (`periodicidad_facturacion_id`) REFERENCES `fact_periodicidades_facturacion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_admt_landings_rappelid` FOREIGN KEY (`rappel_id`) REFERENCES `fact_rappel` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_admt_landings_superclientecod` FOREIGN KEY (`superclientecod`) REFERENCES `superclientes` (`superclientecod`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_admt_landings_tarifacod` FOREIGN KEY (`tarifacod`) REFERENCES `tarifas` (`tarifacod`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_admt_landings_usuariorhinocod` FOREIGN KEY (`usuario_rhino_id`) REFERENCES `usuarios_rh1no` (`usuariocod`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `admt_log_actividad`
--

DROP TABLE IF EXISTS `admt_log_actividad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admt_log_actividad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_evento_gmt0` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `codigo_tipo_evento` smallint(6) NOT NULL,
  `codigo_categoria_evento` smallint(6) NOT NULL,
  `codigo_estado_resolucion` smallint(6) DEFAULT NULL,
  `fecha_estado_resolucion_gmt0` datetime DEFAULT NULL,
  `codigo_nivel_prioridad` smallint(6) NOT NULL DEFAULT '5',
  `codigo_tipo_entidad_externa` smallint(6) DEFAULT NULL,
  `clave_entidad_externa` varchar(45) DEFAULT NULL,
  `clave_agrupacion` varchar(45) DEFAULT NULL,
  `descripcion` varchar(2000) DEFAULT NULL,
  `nombre_servidor` varchar(45) DEFAULT NULL,
  `nombre_instancia_proceso` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_admt_log_actividad_1` (`fecha_evento_gmt0`,`codigo_tipo_evento`),
  KEY `idx_admt_log_actividad_2` (`codigo_tipo_entidad_externa`,`clave_entidad_externa`,`fecha_evento_gmt0`)
) ENGINE=InnoDB AUTO_INCREMENT=16542200 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `admt_macro_definicion`
--

DROP TABLE IF EXISTS `admt_macro_definicion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admt_macro_definicion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `fecha_registro_gmt0` datetime NOT NULL,
  `tag` varchar(50) NOT NULL,
  `precio` float(5,2) NOT NULL,
  `limite_adjuntos_mb` float(5,2) NOT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT '10',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `admt_macro_definicion_paso`
--

DROP TABLE IF EXISTS `admt_macro_definicion_paso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admt_macro_definicion_paso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `macro_definicion_id` int(11) NOT NULL,
  `numero_paso` smallint(6) NOT NULL DEFAULT '1',
  `nombre` varchar(100) NOT NULL,
  `codigotipohilo` smallint(6) NOT NULL,
  `codigo_permite_adjuntos_contenido_hilo` smallint(6) NOT NULL,
  `codigo_permite_respuesta` smallint(6) NOT NULL,
  `codigo_permite_adjuntos_respuesta` smallint(6) NOT NULL,
  `codigo_permite_acepto_rechazo` smallint(6) NOT NULL,
  `codigo_permite_pasarela_pagos` smallint(6) NOT NULL,
  `codigo_permite_canal_email` smallint(6) NOT NULL,
  `codigo_permite_canal_sms` smallint(6) NOT NULL,
  `fecha_registro_gmt0` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_admt_macro_definicion_paso1_idx` (`macro_definicion_id`),
  CONSTRAINT `fk_admt_macro_definicion_paso_admt_macro_definicion1` FOREIGN KEY (`macro_definicion_id`) REFERENCES `admt_macro_definicion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `admt_macro_definicion_paso_evento_accion`
--

DROP TABLE IF EXISTS `admt_macro_definicion_paso_evento_accion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admt_macro_definicion_paso_evento_accion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `macro_definicion_paso_id` int(11) NOT NULL,
  `codigo_tipo_evento_paso_encadenamiento` smallint(6) NOT NULL,
  `codigo_accion_paso_encadenamiento` smallint(6) NOT NULL,
  `numero_paso_siguiente` smallint(6) DEFAULT NULL,
  `fecha_registro_gmt0` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_admt_macro_definicion_paso_evento_accion1_idx` (`macro_definicion_paso_id`),
  CONSTRAINT `fk_definicion_paso_evento_accion_macro_definicion_paso` FOREIGN KEY (`macro_definicion_paso_id`) REFERENCES `admt_macro_definicion_paso` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `admt_operador_macro_definicion`
--

DROP TABLE IF EXISTS `admt_operador_macro_definicion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admt_operador_macro_definicion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `operadorcod` int(10) NOT NULL,
  `macro_definicion_id` int(11) NOT NULL,
  `numero_orden_presentacion` smallint(6) NOT NULL,
  `codigo_estado_vigencia` smallint(6) NOT NULL,
  `fecha_estado_vigencia_gmt0` datetime NOT NULL,
  `fecha_registro_gmt0` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_admt_operador_macro_definicion2_idx` (`macro_definicion_id`),
  KEY `fk_admt_operador_macro_definicion1_idx` (`operadorcod`),
  CONSTRAINT `fk_admt_operador_macro_definicion_admt_macro_definicion1` FOREIGN KEY (`macro_definicion_id`) REFERENCES `admt_macro_definicion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_admt_operador_macro_definicion_operador1` FOREIGN KEY (`operadorcod`) REFERENCES `operadores` (`operadorcod`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `admt_provincias`
--

DROP TABLE IF EXISTS `admt_provincias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admt_provincias` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `nombre_corto` varchar(50) DEFAULT NULL,
  `codigo` smallint(5) unsigned NOT NULL,
  `codigo_pais` smallint(4) NOT NULL,
  `impuesto` int(11) DEFAULT '21',
  PRIMARY KEY (`id`),
  KEY `fk_pro_cod_pais` (`codigo_pais`),
  KEY `prov_nombre_idx` (`nombre`),
  CONSTRAINT `fk_pro_cod_pais` FOREIGN KEY (`codigo_pais`) REFERENCES `paises` (`paiscod`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `admt_solicitud_key_compulsa`
--

DROP TABLE IF EXISTS `admt_solicitud_key_compulsa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admt_solicitud_key_compulsa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cfscode` varchar(50) NOT NULL,
  `codigo_tipo_solicitante` smallint(6) NOT NULL,
  `fecha_registro` datetime NOT NULL,
  `codigo_estado` smallint(6) NOT NULL,
  `fecha_estado` datetime NOT NULL,
  `ip` varchar(20) NOT NULL,
  `sistema_operativo` varchar(300) NOT NULL,
  `navegador_web` varchar(300) NOT NULL,
  `user_agent` varchar(300) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index2` (`cfscode`),
  KEY `index3` (`ip`)
) ENGINE=InnoDB AUTO_INCREMENT=443 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `alertas`
--

DROP TABLE IF EXISTS `alertas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alertas` (
  `alertacod` int(10) NOT NULL AUTO_INCREMENT,
  `aledescripcion` varchar(255) NOT NULL,
  `perfilproductocod` int(10) NOT NULL,
  `clientecod` int(10) NOT NULL,
  `usuariocod` int(10) NOT NULL,
  `usuarioemail` varchar(125) NOT NULL,
  `alefalta` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `alefbaja` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `aleestado` tinyint(4) NOT NULL DEFAULT '10',
  `aletipoalerta` varchar(50) NOT NULL,
  PRIMARY KEY (`alertacod`),
  KEY `alertas_alt` (`perfilproductocod`,`clientecod`,`usuariocod`,`aletipoalerta`,`alefbaja`)
) ENGINE=InnoDB AUTO_INCREMENT=336 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `altas_encurso`
--

DROP TABLE IF EXISTS `altas_encurso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `altas_encurso` (
  `altaencursocod` int(10) NOT NULL AUTO_INCREMENT,
  `clientecod` int(10) NOT NULL,
  `usuarioemail` varchar(125) NOT NULL,
  `perfproductocontratadocod` int(10) NOT NULL,
  `contadorenviocod` int(10) NOT NULL,
  `nombrebd` varchar(125) NOT NULL,
  `aecfalta` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `aecestado` tinyint(4) NOT NULL DEFAULT '10',
  PRIMARY KEY (`altaencursocod`)
) ENGINE=InnoDB AUTO_INCREMENT=4571 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `autentificacion`
--

DROP TABLE IF EXISTS `autentificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autentificacion` (
  `usuarioemail` varchar(150) NOT NULL,
  `usuariopass` varchar(45) NOT NULL,
  `operadorcod` int(10) NOT NULL DEFAULT '1',
  `clientecod` int(10) NOT NULL,
  `usuariocod` int(10) NOT NULL,
  `usuarioestado` tinyint(2) NOT NULL,
  `rolcod` int(10) NOT NULL,
  `administrador` tinyint(4) NOT NULL DEFAULT '0',
  `superadministrador` int(10) NOT NULL DEFAULT '0',
  `fechaalta` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`usuarioemail`,`operadorcod`),
  KEY `autentificacion_alt` (`operadorcod`,`superadministrador`,`clientecod`),
  KEY `idx_autentificacion_clientecod_1` (`clientecod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`127.0.0.1`*/ /*!50003 TRIGGER insert_autentificacion AFTER INSERT ON autentificacion
	FOR EACH ROW
		BEGIN
			SET @supercliente = (
									SELECT s.superclientecod
											FROM superclientes s
											WHERE s.clientecod = NEW.superadministrador
								);
			IF @supercliente IS NOT NULL THEN
				UPDATE clientes c
					SET c.superclientecod = @supercliente
						WHERE c.clientecod = NEW.clientecod;
			END IF;
		END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`127.0.0.1`*/ /*!50003 TRIGGER update_autentificacion AFTER UPDATE ON autentificacion
	FOR EACH ROW
		BEGIN
			SET @supercl = (
									SELECT s.superclientecod
											FROM superclientes s
											WHERE s.clientecod = NEW.superadministrador
								);
			IF @supercl IS NOT NULL THEN
				UPDATE clientes c
					SET c.superclientecod = @supercl
					WHERE c.clientecod = NEW.clientecod;
			END IF;
		END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `autentificacion_mrw`
--

DROP TABLE IF EXISTS `autentificacion_mrw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autentificacion_mrw` (
  `usuarioemail` varchar(150) NOT NULL,
  `usuariopass` varchar(45) NOT NULL,
  `usuarioestado` tinyint(2) NOT NULL,
  `rolcod` int(10) NOT NULL,
  PRIMARY KEY (`usuarioemail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `autentificacion_rh1no`
--

DROP TABLE IF EXISTS `autentificacion_rh1no`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autentificacion_rh1no` (
  `usuarioemail` varchar(150) NOT NULL,
  `usuariopass` varchar(45) NOT NULL,
  `usuarioestado` tinyint(2) NOT NULL,
  `rolcod` int(10) NOT NULL,
  `superadministrador` int(10) NOT NULL,
  `codigopoint` varchar(10) NOT NULL,
  `gestorcod` int(11) DEFAULT '0',
  PRIMARY KEY (`usuarioemail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `autentificacion_roles`
--

DROP TABLE IF EXISTS `autentificacion_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autentificacion_roles` (
  `usuarioemail` varchar(150) NOT NULL,
  `operadorcod` int(10) NOT NULL,
  `dominiocod` int(10) NOT NULL,
  `rolcod` int(10) NOT NULL,
  PRIMARY KEY (`usuarioemail`,`operadorcod`,`dominiocod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `autorizados_api`
--

DROP TABLE IF EXISTS `autorizados_api`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autorizados_api` (
  `autorizadosapicod` int(10) NOT NULL AUTO_INCREMENT,
  `operadorcod` int(10) NOT NULL,
  `clientecod` int(10) NOT NULL,
  `usuariocod` int(10) NOT NULL,
  `id` varchar(250) NOT NULL,
  `privatekey` varchar(250) NOT NULL,
  `estadocod` int(10) NOT NULL,
  `falta` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`autorizadosapicod`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `autorizados_integracion`
--

DROP TABLE IF EXISTS `autorizados_integracion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autorizados_integracion` (
  `autintegracioncod` int(10) NOT NULL AUTO_INCREMENT,
  `tipointegracioncod` int(10) NOT NULL,
  `clientecod` int(10) NOT NULL,
  `usuariocod` int(10) NOT NULL,
  `autintprefijocfscode` varchar(20) NOT NULL,
  `autintentorno` varchar(100) NOT NULL DEFAULT 'Producción',
  `autintidentificador` varchar(255) NOT NULL DEFAULT '',
  `autintfinicio` date NOT NULL,
  `autinttotalenvios` int(10) NOT NULL DEFAULT '0',
  `autintestado` int(4) NOT NULL DEFAULT '10',
  `usuario_login` varchar(255) DEFAULT NULL,
  `password_login` varchar(255) DEFAULT NULL,
  `apikey` varchar(255) DEFAULT NULL,
  `secret` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`autintegracioncod`),
  UNIQUE KEY `IX_apikey` (`apikey`),
  UNIQUE KEY `IX_secret` (`secret`)
) ENGINE=InnoDB AUTO_INCREMENT=408 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `avisos_cron_new`
--

DROP TABLE IF EXISTS `avisos_cron_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `avisos_cron_new` (
  `avisoscroncod` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `clientecod` int(10) unsigned NOT NULL DEFAULT '0',
  `usuariocod` int(10) unsigned NOT NULL DEFAULT '0',
  `msgcod` int(10) unsigned NOT NULL DEFAULT '0',
  `perfilproductocod` int(10) unsigned NOT NULL DEFAULT '0',
  `lotecod` int(10) unsigned NOT NULL DEFAULT '0',
  `esregistrado` tinyint(10) NOT NULL DEFAULT '0',
  `avisonum` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `fecha0` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `enviado0` tinyint(4) NOT NULL,
  `fecha1` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `enviado1` tinyint(4) NOT NULL,
  `fecha2` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `enviado2` tinyint(4) NOT NULL,
  `fecha3` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `enviado3` tinyint(4) NOT NULL,
  `fecha4` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `enviado4` tinyint(4) NOT NULL,
  `frehusado` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `enviadorh` tinyint(4) NOT NULL,
  `estado` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `estadoenvio` tinyint(2) NOT NULL DEFAULT '0',
  `fechaultenviado` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `opanexocondiciones` tinyint(3) NOT NULL DEFAULT '0',
  `ordencascada` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `colabbddcod` int(10) NOT NULL DEFAULT '0',
  `id_proceso` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`avisoscroncod`),
  KEY `msg_perfil_cliente_usuario` (`msgcod`,`perfilproductocod`,`clientecod`,`usuariocod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='tabla para reenviar los avisos';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `banco`
--

DROP TABLE IF EXISTS `banco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banco` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `swift` varchar(100) NOT NULL,
  `name` varchar(250) NOT NULL,
  `ccc` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `borrar__`
--

DROP TABLE IF EXISTS `borrar__`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `borrar__` (
  `notificacioncorreocod` int(10) NOT NULL DEFAULT '0',
  `nombre` varchar(225) CHARACTER SET utf8 NOT NULL,
  `idiomacod` varchar(3) CHARACTER SET utf8 NOT NULL,
  `asunto` varchar(255) CHARACTER SET utf8 NOT NULL,
  `cuerpoclientehtml` longtext CHARACTER SET utf8 NOT NULL,
  `cuerpoclientetxt` longtext CHARACTER SET utf8 NOT NULL,
  `cuerpoadminhtml` longtext CHARACTER SET utf8 NOT NULL,
  `cuerpoadmintxt` longtext CHARACTER SET utf8 NOT NULL,
  `estado` tinyint(4) NOT NULL,
  `operadorcod` int(10) NOT NULL,
  `tiponotificacion` varchar(20) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `borrar_archivofirma_idexpedicion`
--

DROP TABLE IF EXISTS `borrar_archivofirma_idexpedicion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `borrar_archivofirma_idexpedicion` (
  `idexpedicion` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `hilo_id` int(11) NOT NULL,
  `archivofirma` varchar(500) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `campos_new`
--

DROP TABLE IF EXISTS `campos_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campos_new` (
  `campocod` int(10) NOT NULL AUTO_INCREMENT,
  `camponombre` varchar(100) NOT NULL,
  `campotipo` char(1) NOT NULL COMMENT 'i: integer / t:text',
  `campodescripcion` varchar(255) NOT NULL,
  PRIMARY KEY (`campocod`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `caramelos`
--

DROP TABLE IF EXISTS `caramelos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caramelos` (
  `caramelocod` int(10) NOT NULL AUTO_INCREMENT,
  `usuarioemail` varchar(45) NOT NULL,
  `carammd5` varchar(45) NOT NULL,
  `caramcredito` int(10) NOT NULL,
  `caramcreditousado` int(10) NOT NULL,
  `caramestado` tinyint(2) NOT NULL,
  PRIMARY KEY (`caramelocod`),
  UNIQUE KEY `usuarioemail` (`usuarioemail`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `caramelos_regalados`
--

DROP TABLE IF EXISTS `caramelos_regalados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caramelos_regalados` (
  `carameloregaladocod` int(10) NOT NULL AUTO_INCREMENT,
  `caregmd5` varchar(45) NOT NULL,
  `caregemail` varchar(45) NOT NULL,
  `caregactivado` tinyint(2) NOT NULL,
  `caregusos` int(10) NOT NULL,
  `caregcontratado` tinyint(2) NOT NULL,
  `caregdescuento` float NOT NULL,
  PRIMARY KEY (`carameloregaladocod`)
) ENGINE=InnoDB AUTO_INCREMENT=248 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `carteros`
--

DROP TABLE IF EXISTS `carteros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carteros` (
  `carterocod` int(11) NOT NULL AUTO_INCREMENT,
  `paiscod` int(11) NOT NULL,
  `carteronombre` varchar(250) COLLATE latin1_spanish_ci NOT NULL,
  `carteroidioma` tinytext COLLATE latin1_spanish_ci NOT NULL,
  `carterofalta` datetime NOT NULL,
  `carterofoto` varchar(250) COLLATE latin1_spanish_ci NOT NULL,
  `carterocron` varchar(250) COLLATE latin1_spanish_ci NOT NULL,
  `carteroestado` int(11) NOT NULL,
  PRIMARY KEY (`carterocod`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `certificaciones`
--

DROP TABLE IF EXISTS `certificaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `certificaciones` (
  `codcertificacion` int(10) NOT NULL AUTO_INCREMENT,
  `notario` int(10) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `protocolo` varchar(50) DEFAULT NULL,
  `descripcion` varchar(250) DEFAULT NULL,
  `ruta` varchar(250) DEFAULT 'http://www.confirmsign.com/fedatario/actas/_certif_pdf/',
  `archivo` varchar(250) DEFAULT NULL,
  `idioma` varchar(40) DEFAULT NULL,
  `publica` int(11) DEFAULT NULL,
  `pais_notario_id` int(11) DEFAULT NULL COMMENT 'Este es el país del notario y que se mostrará en la lista de certificaciones.',
  PRIMARY KEY (`codcertificacion`)
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8 COMMENT='datos de las certificaciones de notario.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cfshilocode`
--

DROP TABLE IF EXISTS `cfshilocode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cfshilocode` (
  `contadorcfshilocod` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`contadorcfshilocod`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=626475 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cfshilosglobales`
--

DROP TABLE IF EXISTS `cfshilosglobales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cfshilosglobales` (
  `cfshilocod` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cfshilocode` varchar(45) NOT NULL,
  `fecha` datetime NOT NULL,
  `operadorcod` int(10) NOT NULL DEFAULT '0',
  `clientecod` int(10) unsigned NOT NULL,
  `usuariocod` int(10) unsigned NOT NULL,
  `mail` varchar(45) NOT NULL,
  PRIMARY KEY (`cfshilocod`)
) ENGINE=InnoDB AUTO_INCREMENT=597094 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cfshilosglobales_monica`
--

DROP TABLE IF EXISTS `cfshilosglobales_monica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cfshilosglobales_monica` (
  `cfshilocod` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cfshilocode` varchar(45) NOT NULL,
  `fecha` datetime NOT NULL,
  `clientecod` int(10) unsigned NOT NULL,
  `usuariocod` int(10) unsigned NOT NULL,
  `mail` varchar(45) NOT NULL,
  PRIMARY KEY (`cfshilocod`)
) ENGINE=InnoDB AUTO_INCREMENT=79407 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cfshilosglobales_sinordenar`
--

DROP TABLE IF EXISTS `cfshilosglobales_sinordenar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cfshilosglobales_sinordenar` (
  `cfshilocod` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cfshilocode` varchar(45) NOT NULL,
  `fecha` datetime NOT NULL,
  `clientecod` int(10) unsigned NOT NULL,
  `usuariocod` int(10) unsigned NOT NULL,
  `mail` varchar(45) NOT NULL,
  PRIMARY KEY (`cfshilocod`)
) ENGINE=InnoDB AUTO_INCREMENT=1263920 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `clientecod` int(10) NOT NULL AUTO_INCREMENT,
  `servidorbd` varchar(50) NOT NULL,
  `usuariobd` varchar(50) NOT NULL,
  `clavebd` varchar(50) NOT NULL,
  `nombrebd` varchar(50) NOT NULL,
  `clienteftpe` varchar(50) NOT NULL,
  `clienteftpepass` varchar(50) NOT NULL,
  `clienteftps` varchar(50) NOT NULL,
  `clienteftpspass` varchar(50) NOT NULL,
  `hostftp` varchar(50) NOT NULL,
  `puertoftp` int(4) NOT NULL DEFAULT '0',
  `clienteftperuta` varchar(150) NOT NULL,
  `clienteftpsruta` varchar(150) NOT NULL,
  `clienteemail` varchar(150) NOT NULL,
  `clientecontacto` varchar(150) NOT NULL,
  `clientecontactonombre` varchar(150) NOT NULL DEFAULT '',
  `operadorcod` int(10) unsigned NOT NULL DEFAULT '0',
  `carteroasignado` int(11) NOT NULL DEFAULT '0',
  `clientetipo` int(11) NOT NULL DEFAULT '0',
  `clientenombre` varchar(45) NOT NULL DEFAULT '',
  `clienteapellidos` varchar(45) NOT NULL DEFAULT '',
  `clienteempresa` varchar(45) NOT NULL DEFAULT '',
  `clientecifnif` varchar(12) NOT NULL DEFAULT '',
  `clientedireccion` varchar(225) NOT NULL DEFAULT '',
  `clientelocalidad` varchar(45) NOT NULL DEFAULT '',
  `clienteprovincia` varchar(45) NOT NULL DEFAULT '',
  `paiscod` int(10) NOT NULL DEFAULT '0',
  `clientecodpostal` varchar(15) NOT NULL DEFAULT '',
  `clientetel` varchar(20) NOT NULL DEFAULT '',
  `idclientemrw` varchar(100) NOT NULL,
  `clientenivelcod` int(10) NOT NULL DEFAULT '0',
  `clientedescuento` tinyint(4) NOT NULL DEFAULT '0',
  `modalidadpago` varchar(100) NOT NULL,
  `clienteestado` tinyint(4) NOT NULL DEFAULT '10',
  `gestorcod` int(11) NOT NULL DEFAULT '0',
  `estado_cliente` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `superclientecod` int(11) NOT NULL DEFAULT '0',
  `fechaalta` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nivel_animo` int(2) NOT NULL DEFAULT '0',
  `coverbrandfile` varchar(255) DEFAULT NULL,
  `usuario_rh1no_id` int(10) unsigned DEFAULT NULL,
  `grupo_id` int(11) DEFAULT NULL,
  `regularizado` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `landing_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`clientecod`),
  KEY `clientes_operador` (`operadorcod`),
  KEY `idx_clientes_grupoid` (`grupo_id`),
  KEY `idx_clientes_usuariorhinoid` (`usuario_rh1no_id`),
  KEY `idx_clientes_superclientes` (`superclientecod`),
  KEY `idx_clientes_gestorcod` (`gestorcod`),
  KEY `fk_landing_idx` (`landing_id`),
  CONSTRAINT `fk_landing` FOREIGN KEY (`landing_id`) REFERENCES `admt_landings` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=500444 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `clnt_cliente_historico_xml`
--

DROP TABLE IF EXISTS `clnt_cliente_historico_xml`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clnt_cliente_historico_xml` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clientecod` int(10) NOT NULL,
  `hisxmlfecha` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hisxmlarchivo` varchar(255) NOT NULL DEFAULT '',
  `hisxmltotalenvios` int(11) NOT NULL DEFAULT '0',
  `hisxmlenviosok` int(11) NOT NULL DEFAULT '0',
  `hisxmlenviosfail` int(11) NOT NULL DEFAULT '0',
  `hisxmlinformetxt` varchar(255) NOT NULL DEFAULT '',
  `hisxmlinformexml` varchar(255) NOT NULL,
  `hisxmlestado` varchar(45) NOT NULL DEFAULT '10',
  `fecha_registro_gmt0` datetime NOT NULL,
  `fecha_ultima_modificacion_gmt0` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index2` (`clientecod`),
  CONSTRAINT `fk_clnt_cliente_historico_xml_clientes1` FOREIGN KEY (`clientecod`) REFERENCES `clientes` (`clientecod`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2181 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `clnt_cliente_preferencia`
--

DROP TABLE IF EXISTS `clnt_cliente_preferencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clnt_cliente_preferencia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clientecod` int(10) NOT NULL,
  `preferenciacod` int(10) NOT NULL,
  `prefvalor` varchar(255) DEFAULT NULL,
  `fecha_inicio_vigencia` datetime NOT NULL,
  `fecha_fin_vigencia` datetime DEFAULT NULL,
  `fecha_registro_gmt0` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_ultima_modificacion_gmt0` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index2` (`clientecod`),
  CONSTRAINT `fk_clnt_cliente_preferencia_clientes1` FOREIGN KEY (`clientecod`) REFERENCES `clientes` (`clientecod`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=470890 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `clnt_usuario`
--

DROP TABLE IF EXISTS `clnt_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clnt_usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clientecod` int(11) NOT NULL,
  `usuariocod` int(11) NOT NULL,
  `rolcod` int(11) DEFAULT NULL,
  `usuarioemail` varchar(150) NOT NULL,
  `usuariopass` varchar(45) DEFAULT NULL,
  `usuarionombre` varchar(60) DEFAULT NULL,
  `usuarioapellido` varchar(60) DEFAULT NULL,
  `usuarioempresa` varchar(150) DEFAULT NULL,
  `usuariodireccion` varchar(250) DEFAULT NULL,
  `usuariocifnif` varchar(12) NOT NULL,
  `usuariolocalidad` varchar(30) DEFAULT NULL,
  `usuarioprovincia` varchar(30) DEFAULT NULL,
  `usuariocodpos` varchar(15) DEFAULT NULL,
  `paiscod` int(10) DEFAULT NULL,
  `usuariotel` varchar(20) DEFAULT NULL,
  `usuariogmt` varchar(125) DEFAULT '0',
  `tipopersona` smallint(6) DEFAULT NULL,
  `usuarioestado` smallint(6) NOT NULL,
  `usuarioultfecha` datetime DEFAULT NULL,
  `usuarioultip` varchar(15) DEFAULT NULL,
  `fecha_registro_gmt0` datetime NOT NULL,
  `fecha_ultima_modificacion_gmt0` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index2` (`clientecod`,`usuariocod`),
  KEY `IX_usuarioemail` (`usuarioemail`),
  KEY `FK_clientecod` (`clientecod`),
  CONSTRAINT `fk_clnt_usuario_clientes1` FOREIGN KEY (`clientecod`) REFERENCES `clientes` (`clientecod`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11274 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `clnt_usuario_contacto`
--

DROP TABLE IF EXISTS `clnt_usuario_contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clnt_usuario_contacto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_id` int(11) NOT NULL,
  `contactonombre` varchar(45) DEFAULT NULL,
  `contactoapellidos` varchar(45) DEFAULT NULL,
  `contactomail` varchar(45) DEFAULT NULL,
  `contactotelefonofijo` varchar(20) DEFAULT NULL,
  `contactotelefonomovil` varchar(20) DEFAULT NULL,
  `contactodireccion` varchar(255) DEFAULT NULL,
  `contactolocalidad` varchar(45) DEFAULT NULL,
  `contactocodigopostal` varchar(10) DEFAULT NULL,
  `contactoprovincia` varchar(45) DEFAULT NULL,
  `contactopais` varchar(45) DEFAULT NULL,
  `contactoempresa` varchar(100) DEFAULT NULL,
  `contactoenvioestado` varchar(45) DEFAULT NULL,
  `contactonota` varchar(255) DEFAULT NULL,
  `fecha_registro_gmt0` datetime NOT NULL,
  `fecha_ultima_modificacion_gmt0` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_patt_usuario_contacto_1_idx` (`usuario_id`),
  CONSTRAINT `fk_clnt_usuario_contacto_clnt_usuario1` FOREIGN KEY (`usuario_id`) REFERENCES `clnt_usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=33428 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `clnt_usuario_filtro`
--

DROP TABLE IF EXISTS `clnt_usuario_filtro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clnt_usuario_filtro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_id` int(11) NOT NULL,
  `filtro_hilos_id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `numero_orden_presentacion` smallint(6) NOT NULL,
  `codigo_color_hexadecimal` char(6) DEFAULT NULL,
  `codigo_estado_vigencia` smallint(6) NOT NULL DEFAULT '10',
  `fecha_registro_gmt0` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_patt_usuario_filtro_admt_filtro1_idx` (`filtro_hilos_id`),
  KEY `index3` (`usuario_id`),
  CONSTRAINT `fk_clnt_usuario_filtro_1` FOREIGN KEY (`usuario_id`) REFERENCES `clnt_usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_patt_usuario_filtro_admt_filtro1` FOREIGN KEY (`filtro_hilos_id`) REFERENCES `admt_filtro_hilos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `clnt_usuario_firma`
--

DROP TABLE IF EXISTS `clnt_usuario_firma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clnt_usuario_firma` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_id` int(11) NOT NULL,
  `firmanombre` varchar(100) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `falta` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `estado` tinyint(4) NOT NULL,
  `firmatag` varchar(100) DEFAULT NULL,
  `fecha_registro_gmt0` datetime NOT NULL,
  `fecha_ultima_modificacion_gmt0` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_patt_usuario_firma_patt_usuario1_idx` (`usuario_id`),
  CONSTRAINT `fk_clnt_usuario_firma_clnt_usuario1` FOREIGN KEY (`usuario_id`) REFERENCES `clnt_usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=517 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `clnt_usuario_macro_definicion`
--

DROP TABLE IF EXISTS `clnt_usuario_macro_definicion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clnt_usuario_macro_definicion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_id` int(11) NOT NULL,
  `macro_definicion_id` int(11) NOT NULL,
  `numero_orden_presentacion` smallint(6) NOT NULL,
  `codigo_estado_vigencia` smallint(6) NOT NULL,
  `fecha_registro_gmt0` datetime NOT NULL,
  `fecha_estado_vigencia_gmt0` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_clnt_usuario_macro_definicion1_idx` (`usuario_id`),
  KEY `fk_clnt_usuario_macro_definicion2_idx` (`macro_definicion_id`),
  CONSTRAINT `fk_clnt_usuario_macro_definicion_admt_macro_definicion1` FOREIGN KEY (`macro_definicion_id`) REFERENCES `admt_macro_definicion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_clnt_usuario_macro_definicion_clnt_usuario1` FOREIGN KEY (`usuario_id`) REFERENCES `clnt_usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `clnt_usuario_plantilla_agree_boton`
--

DROP TABLE IF EXISTS `clnt_usuario_plantilla_agree_boton`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clnt_usuario_plantilla_agree_boton` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_id` int(11) NOT NULL,
  `borradorcod` int(11) DEFAULT NULL,
  `nombre` varchar(512) DEFAULT NULL,
  `msgbotonon` varchar(256) DEFAULT NULL,
  `msgbotonoff` varchar(256) DEFAULT NULL,
  `codigoestilobotones` smallint(6) NOT NULL,
  `sololectura` tinyint(4) NOT NULL DEFAULT '0',
  `fecha_registro_gmt0` datetime NOT NULL,
  `fecha_ultima_modificacion_gmt0` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_patt_usuario_borrador_boton_agree_patt_usuario1_idx` (`usuario_id`),
  CONSTRAINT `fk_clnt_usuario_plantilla_agree_boton_clnt_usuario1` FOREIGN KEY (`usuario_id`) REFERENCES `clnt_usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11937 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `clnt_usuario_plantilla_agree_condicionado`
--

DROP TABLE IF EXISTS `clnt_usuario_plantilla_agree_condicionado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clnt_usuario_plantilla_agree_condicionado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_id` int(11) NOT NULL,
  `borradorcod` int(11) DEFAULT NULL,
  `borradornombre` varchar(512) DEFAULT NULL,
  `borradortexto` longtext,
  `borradorcheckbox` varchar(500) DEFAULT NULL,
  `usuario_plantilla_agree_boton_id` int(11) NOT NULL,
  `sololectura` tinyint(4) NOT NULL DEFAULT '0',
  `fecha_registro_gmt0` datetime NOT NULL,
  `fecha_ultima_modificacion_gmt0` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_patt_usuario_borradro_agree_1_idx` (`usuario_id`),
  KEY `fk_patt_usuario_plantilla_agree_condicionado_patt_usuario_p_idx` (`usuario_plantilla_agree_boton_id`),
  CONSTRAINT `fk_clnt_usuario_plantilla_agree_condicionado_clnt_usuario1` FOREIGN KEY (`usuario_id`) REFERENCES `clnt_usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_plantilla_agree_condicionado_plantilla_agree_boton1` FOREIGN KEY (`usuario_plantilla_agree_boton_id`) REFERENCES `clnt_usuario_plantilla_agree_boton` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11864 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `clnt_usuario_plantilla_aviso_entrega`
--

DROP TABLE IF EXISTS `clnt_usuario_plantilla_aviso_entrega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clnt_usuario_plantilla_aviso_entrega` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_id` int(11) NOT NULL,
  `avisoentregacod` int(10) DEFAULT NULL,
  `avisoentreganombre` varchar(50) DEFAULT NULL,
  `avisoentregamsg` text,
  `idiomacod` varchar(6) DEFAULT NULL,
  `sololectura` tinyint(4) NOT NULL DEFAULT '0',
  `fecha_registro_gmt0` datetime NOT NULL,
  `fecha_ultima_modificacion_gmt0` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_patt_usuario_aviso_entrega_1_idx` (`usuario_id`),
  CONSTRAINT `fk_clnt_usuario_plantilla_aviso_entrega_clnt_usuario1` FOREIGN KEY (`usuario_id`) REFERENCES `clnt_usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11476 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `clnt_usuario_plantilla_aviso_vigencia`
--

DROP TABLE IF EXISTS `clnt_usuario_plantilla_aviso_vigencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clnt_usuario_plantilla_aviso_vigencia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_id` int(11) NOT NULL,
  `avisovigenciacod` int(10) DEFAULT NULL COMMENT 'Heredado del esquema de usuarios propio. A extinguir.',
  `avisonum` smallint(6) DEFAULT NULL,
  `avisoprimerdia` smallint(6) NOT NULL DEFAULT '0',
  `avisosegundodia` smallint(6) NOT NULL DEFAULT '0',
  `avisotercerdia` smallint(6) NOT NULL DEFAULT '0',
  `avisocuartodia` smallint(6) NOT NULL DEFAULT '0',
  `avisoquintodia` smallint(6) NOT NULL DEFAULT '0',
  `avisorehusado` smallint(6) NOT NULL DEFAULT '0',
  `avisonombre` varchar(50) DEFAULT NULL,
  `sololectura` varchar(45) DEFAULT '0',
  `fecha_registro_gmt0` datetime NOT NULL,
  `fecha_ultima_modificacion_gmt0` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_patt_usuario_aviso_vigencia_1_idx` (`usuario_id`),
  CONSTRAINT `fk_clnt_usuario_plantilla_aviso_vigencia_clnt_usuario1` FOREIGN KEY (`usuario_id`) REFERENCES `clnt_usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=32424 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `clnt_usuario_plantilla_cuerpo_hilo`
--

DROP TABLE IF EXISTS `clnt_usuario_plantilla_cuerpo_hilo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clnt_usuario_plantilla_cuerpo_hilo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_id` int(11) NOT NULL,
  `borradorcod` int(10) DEFAULT NULL,
  `perfilproductocod` int(11) NOT NULL,
  `borradornombre` varchar(512) DEFAULT NULL,
  `borradortexto` longtext,
  `sololectura` tinyint(4) NOT NULL DEFAULT '0',
  `fecha_registro_gmt0` datetime NOT NULL,
  `fecha_ultima_modificacion_gmt0` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_patt_usuario_borrador_1_idx` (`usuario_id`),
  CONSTRAINT `fk_clnt_usuario_plantilla_cuerpo_hilo_clnt_usuario1` FOREIGN KEY (`usuario_id`) REFERENCES `clnt_usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=67411 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `clnt_usuario_plantillas_formularios`
--

DROP TABLE IF EXISTS `clnt_usuario_plantillas_formularios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clnt_usuario_plantillas_formularios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_id` int(11) NOT NULL,
  `formulario_id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `fecha_registro_gmt0` datetime DEFAULT NULL,
  `fecha_ultima_modificacion_gmt0` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_usuario_id` (`usuario_id`),
  KEY `fk_formulario_id` (`formulario_id`),
  CONSTRAINT `fk_clnt_usuario_plantillas_formularios_clnt_usuario1` FOREIGN KEY (`usuario_id`) REFERENCES `clnt_usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_clnt_usuario_plantillas_formularios_fort_formularios1` FOREIGN KEY (`formulario_id`) REFERENCES `fort_formularios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `clnt_usuario_preferencia`
--

DROP TABLE IF EXISTS `clnt_usuario_preferencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clnt_usuario_preferencia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_id` int(11) NOT NULL,
  `preferenciacod` int(10) NOT NULL,
  `prefvalor` varchar(255) DEFAULT NULL,
  `fecha_inicio_vigencia` datetime NOT NULL,
  `fecha_fin_vigencia` datetime DEFAULT NULL,
  `fecha_registro_gmt0` datetime NOT NULL,
  `fecha_ultima_modificacion_gmt0` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_patt_usuario_preferencia_1_idx` (`usuario_id`),
  CONSTRAINT `fk_clnt_usuario_preferencia_clnt_usuario1` FOREIGN KEY (`usuario_id`) REFERENCES `clnt_usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2979254 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `clnt_usuario_tag`
--

DROP TABLE IF EXISTS `clnt_usuario_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clnt_usuario_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_id` int(11) NOT NULL,
  `numero_orden_presentacion` smallint(6) NOT NULL DEFAULT '1',
  `codigo_color_hexadecimal` char(6) DEFAULT NULL,
  `codigo_estado_vigencia` smallint(6) NOT NULL DEFAULT '10',
  `texto_tag_original` varchar(50) NOT NULL,
  `texto_tag_normalizado` varchar(50) NOT NULL,
  `fecha_registro_gmt0` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index2` (`usuario_id`,`numero_orden_presentacion`),
  CONSTRAINT `fk_clnt_usuario_tag_1` FOREIGN KEY (`usuario_id`) REFERENCES `clnt_usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `clnt_usuario_tag_hilo`
--

DROP TABLE IF EXISTS `clnt_usuario_tag_hilo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clnt_usuario_tag_hilo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_tag_id` int(11) NOT NULL,
  `hilo_id` int(11) NOT NULL,
  `fecha_registro_gmt0` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_patt_hilos_usuarios_tags_patt_usuarios_tags1_idx` (`usuario_tag_id`),
  KEY `fk_patt_hilos_usuarios_tags_patt_hilos1_idx` (`hilo_id`),
  CONSTRAINT `fk_patt_hilos_usuarios_tags_patt_hilos1` FOREIGN KEY (`hilo_id`) REFERENCES `patt_hilos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_patt_hilos_usuarios_tags_patt_usuarios_tags1` FOREIGN KEY (`usuario_tag_id`) REFERENCES `clnt_usuario_tag` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `codigo_cliente`
--

DROP TABLE IF EXISTS `codigo_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `codigo_cliente` (
  `clientecod` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`clientecod`)
) ENGINE=InnoDB AUTO_INCREMENT=11421 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `colas_bbdds`
--

DROP TABLE IF EXISTS `colas_bbdds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colas_bbdds` (
  `colabbddcod` int(10) NOT NULL AUTO_INCREMENT,
  `cbdnombrearchivo` longtext NOT NULL,
  `cbdtipoarchivo` varchar(30) NOT NULL,
  `cbdfechaalta` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cbdfechacierre` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cbdtotalfilas` int(10) unsigned NOT NULL DEFAULT '0',
  `cbdultimafila` int(10) NOT NULL DEFAULT '0',
  `cbdestado` tinyint(4) NOT NULL DEFAULT '10',
  `clientecod` int(10) NOT NULL DEFAULT '0',
  `msgcod` int(10) NOT NULL,
  `perfilproductocod` int(10) NOT NULL,
  `usuariocod` int(10) NOT NULL DEFAULT '0',
  `archcodeident` varchar(100) NOT NULL,
  `cbdordencascada` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `cbdinforme` longtext NOT NULL,
  PRIMARY KEY (`colabbddcod`),
  KEY `colas_bbdds_alt` (`colabbddcod`,`clientecod`,`usuariocod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `colas_envios`
--

DROP TABLE IF EXISTS `colas_envios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colas_envios` (
  `colaenviocod` int(10) NOT NULL AUTO_INCREMENT,
  `colabbddcod` int(10) NOT NULL,
  `clientecod` int(10) NOT NULL DEFAULT '0',
  `msgcod` int(10) unsigned NOT NULL,
  `perfilproductocod` int(10) unsigned NOT NULL DEFAULT '0',
  `usuariocod` int(10) unsigned NOT NULL DEFAULT '0',
  `archcodeident` varchar(100) DEFAULT NULL,
  `colaordencascada` tinyint(4) unsigned NOT NULL,
  `colaestado` tinyint(4) unsigned NOT NULL,
  PRIMARY KEY (`colaenviocod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `condicionados_backup`
--

DROP TABLE IF EXISTS `condicionados_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `condicionados_backup` (
  `clientecod` int(10) NOT NULL,
  `msgcod` int(10) unsigned NOT NULL,
  `hilocod` int(10) unsigned NOT NULL,
  `msgpadre` int(10) unsigned NOT NULL DEFAULT '0',
  `perfilproductocod` int(10) unsigned NOT NULL DEFAULT '0',
  `usuariocod` int(10) unsigned NOT NULL DEFAULT '0',
  `campocod` int(10) unsigned NOT NULL DEFAULT '0',
  `intvalor` bigint(14) unsigned DEFAULT '0',
  `txtvalor` longtext,
  `cfsdatafechadescarga` varchar(500) NOT NULL,
  PRIMARY KEY (`msgcod`,`hilocod`,`msgpadre`,`perfilproductocod`,`usuariocod`,`campocod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `condiciones_descargadas`
--

DROP TABLE IF EXISTS `condiciones_descargadas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `condiciones_descargadas` (
  `operadorcod` int(10) unsigned NOT NULL,
  `clientecod` int(10) unsigned NOT NULL,
  `usuariocod` int(10) NOT NULL,
  `condgversion` float NOT NULL,
  `fechadescarga` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `fechadescargagmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `msgcod` int(10) NOT NULL,
  `perfilproductocod` int(10) unsigned NOT NULL,
  `ipdescarga` varchar(20) DEFAULT NULL,
  `sodescarga` varchar(300) DEFAULT NULL,
  `navdescarga` varchar(300) DEFAULT NULL,
  `agenteweb` varchar(500) DEFAULT NULL,
  `gestorcod` int(10) DEFAULT NULL,
  PRIMARY KEY (`operadorcod`,`clientecod`,`condgversion`,`fechadescarga`,`usuariocod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `condiciones_grales`
--

DROP TABLE IF EXISTS `condiciones_grales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `condiciones_grales` (
  `condgcod` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `operadorcod` int(10) NOT NULL,
  `condgfalta` date DEFAULT '0000-00-00',
  `condgversion` float NOT NULL DEFAULT '0',
  `condgnombre` varchar(100) DEFAULT '',
  `condgcontenidohtm` longtext NOT NULL,
  `condgcontenidotxt` longtext NOT NULL,
  `condgcontenidopdf` longtext,
  `condgidioma` varchar(5) NOT NULL DEFAULT 'es',
  `condgurl` varchar(255) NOT NULL,
  PRIMARY KEY (`condgcod`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='Condiciones Generales CFS';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `constantes_grales`
--

DROP TABLE IF EXISTS `constantes_grales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `constantes_grales` (
  `sistemanom` varchar(20) NOT NULL DEFAULT 'ConfirmSign',
  `constantetipo` varchar(50) DEFAULT NULL,
  `constantecod` varchar(250) NOT NULL DEFAULT '',
  `constantenom` varchar(100) NOT NULL DEFAULT '',
  `constantedesc` varchar(150) DEFAULT '',
  PRIMARY KEY (`constantecod`,`constantenom`),
  KEY `constantes_grales_alt` (`sistemanom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='constantes generales del sistema';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `contador_envios`
--

DROP TABLE IF EXISTS `contador_envios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contador_envios` (
  `contadorcod` int(10) NOT NULL AUTO_INCREMENT,
  `perfproductocontratadocod` int(10) NOT NULL DEFAULT '0',
  `clientecod` int(10) NOT NULL DEFAULT '0',
  `fechacad` date NOT NULL,
  `contratadopeso` float unsigned NOT NULL DEFAULT '0',
  `enviadopeso` float NOT NULL DEFAULT '0',
  `swsoft` int(2) NOT NULL DEFAULT '0',
  `volumenadj` int(12) NOT NULL DEFAULT '0',
  `volumenadjreal` float(12,4) NOT NULL DEFAULT '0.0000',
  `ultenvioexcedido` int(10) NOT NULL DEFAULT '0',
  `ultadjexcedido` float NOT NULL DEFAULT '0',
  `contadorestado` smallint(4) NOT NULL DEFAULT '10',
  PRIMARY KEY (`contadorcod`)
) ENGINE=InnoDB AUTO_INCREMENT=799 DEFAULT CHARSET=utf8 COMMENT='recuento de los envíos realizados por cliente';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `contador_envios_new`
--

DROP TABLE IF EXISTS `contador_envios_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contador_envios_new` (
  `contadorenvioscod` int(10) NOT NULL AUTO_INCREMENT,
  `operadorcod` int(10) NOT NULL,
  `perfilproductocod` int(10) NOT NULL,
  `clientecod` int(10) NOT NULL,
  `perfproductocontratadocod` int(10) NOT NULL,
  `enviadopeso` decimal(10,2) DEFAULT NULL,
  `enviadoenvios` int(10) unsigned NOT NULL DEFAULT '0',
  `contratadopeso` decimal(10,2) DEFAULT NULL,
  `contratadoenvios` int(10) unsigned NOT NULL DEFAULT '0',
  `fecha_registro_gmt0` datetime DEFAULT NULL,
  `fechaalta` datetime NOT NULL,
  `fechacaducidad` date NOT NULL DEFAULT '0000-00-00',
  `fecharenovacion` date NOT NULL DEFAULT '0000-00-00',
  `contadorestado` tinyint(4) NOT NULL DEFAULT '10',
  `estado_cobro` int(11) NOT NULL DEFAULT '20',
  `tipo_credito` int(11) NOT NULL DEFAULT '0',
  `num_cuotas` tinyint(4) DEFAULT '1',
  `regularizado` tinyint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`contadorenvioscod`,`operadorcod`,`perfilproductocod`,`clientecod`),
  KEY `contador_envios_new_cliente_contadorestado` (`clientecod`,`contadorestado`),
  KEY `index3` (`clientecod`,`perfproductocontratadocod`),
  KEY `idx_enviado_contratado_cliente` (`clientecod`,`enviadopeso`,`contratadopeso`),
  KEY `idx_regularizado_clientecod` (`regularizado`,`clientecod`)
) ENGINE=InnoDB AUTO_INCREMENT=31817 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `contador_estadisticas`
--

DROP TABLE IF EXISTS `contador_estadisticas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contador_estadisticas` (
  `clientecod` int(10) NOT NULL,
  `usuariocod` int(10) NOT NULL,
  `fecha` date NOT NULL,
  `contadorcod` int(10) NOT NULL,
  `cantidad` float NOT NULL,
  `fechaultmod` datetime NOT NULL,
  PRIMARY KEY (`clientecod`,`usuariocod`,`fecha`,`contadorcod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `contador_excedidos`
--

DROP TABLE IF EXISTS `contador_excedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contador_excedidos` (
  `contadorpendientecod` int(10) NOT NULL AUTO_INCREMENT,
  `operadorcod` int(10) NOT NULL,
  `perfilproductocod` int(10) NOT NULL,
  `clientecod` int(10) NOT NULL,
  `usuariocod` int(10) NOT NULL,
  `msgcod` int(10) NOT NULL,
  `pesosincontabilizar` float NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `estadocod` tinyint(4) NOT NULL COMMENT '10=pendiente; 0=contabilizado',
  PRIMARY KEY (`contadorpendientecod`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `contador_funcionalidades_campo`
--

DROP TABLE IF EXISTS `contador_funcionalidades_campo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contador_funcionalidades_campo` (
  `funcionalidadcod` int(10) NOT NULL,
  `campocod` int(10) NOT NULL,
  PRIMARY KEY (`funcionalidadcod`,`campocod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `contador_nombres`
--

DROP TABLE IF EXISTS `contador_nombres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contador_nombres` (
  `contadorcod` int(10) NOT NULL AUTO_INCREMENT,
  `contadornombre` varchar(100) NOT NULL,
  `contadordescripcion` varchar(255) NOT NULL,
  PRIMARY KEY (`contadorcod`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `contador_peso_funcionalidades`
--

DROP TABLE IF EXISTS `contador_peso_funcionalidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contador_peso_funcionalidades` (
  `operadorcod` int(10) NOT NULL,
  `perfilproductocod` int(10) NOT NULL,
  `funcionalidadcod` int(10) NOT NULL,
  `peso` float NOT NULL,
  PRIMARY KEY (`operadorcod`,`perfilproductocod`,`funcionalidadcod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `contador_peso_mensajes`
--

DROP TABLE IF EXISTS `contador_peso_mensajes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contador_peso_mensajes` (
  `operadorcod` int(10) NOT NULL,
  `perfilproductocod` int(10) NOT NULL,
  `clientecod` int(10) NOT NULL,
  `usuariocod` int(10) NOT NULL,
  `msgcod` int(10) NOT NULL,
  `pesoadj` float NOT NULL,
  `pesofunc` float NOT NULL,
  `pesototal` float NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`operadorcod`,`perfilproductocod`,`clientecod`,`usuariocod`,`msgcod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `contador_peso_mensajes_pendien`
--

DROP TABLE IF EXISTS `contador_peso_mensajes_pendien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contador_peso_mensajes_pendien` (
  `contadorpendientecod` int(10) NOT NULL AUTO_INCREMENT,
  `operadorcod` int(10) NOT NULL,
  `perfilproductocod` int(10) NOT NULL,
  `clientecod` int(10) NOT NULL,
  `usuariocod` int(10) NOT NULL,
  `msgcod` int(10) NOT NULL,
  `pesosincontabilizar` float NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `estadocod` tinyint(4) NOT NULL COMMENT '10=pendiente; 0=contabilizado',
  PRIMARY KEY (`contadorpendientecod`)
) ENGINE=InnoDB AUTO_INCREMENT=204858 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `contador_secuencia`
--

DROP TABLE IF EXISTS `contador_secuencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contador_secuencia` (
  `nombre` varchar(30) NOT NULL,
  `valor` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`nombre`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `costes_servicios`
--

DROP TABLE IF EXISTS `costes_servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `costes_servicios` (
  `serviciocod` int(11) NOT NULL AUTO_INCREMENT,
  `serviciotag` varchar(100) DEFAULT NULL,
  `servicionombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`serviciocod`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `crons_paypal_ipn`
--

DROP TABLE IF EXISTS `crons_paypal_ipn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crons_paypal_ipn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `operator` int(11) NOT NULL,
  `process_paypal_cod` varchar(64) NOT NULL,
  `transaction_id` varchar(64) NOT NULL,
  `url_send` varchar(2000) NOT NULL,
  `attempt` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=127 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `desarrollos`
--

DROP TABLE IF EXISTS `desarrollos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `desarrollos` (
  `desarrollocod` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `clientecod` int(10) NOT NULL,
  `desafilename` varchar(45) NOT NULL,
  `desafalta` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `desaestado` tinyint(2) unsigned NOT NULL DEFAULT '10',
  PRIMARY KEY (`desarrollocod`,`clientecod`)
) ENGINE=InnoDB AUTO_INCREMENT=1315 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `descargas_new`
--

DROP TABLE IF EXISTS `descargas_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `descargas_new` (
  `descarganewcod` int(10) NOT NULL AUTO_INCREMENT,
  `descautorizacion` varchar(100) NOT NULL,
  `clientecod` int(10) NOT NULL,
  `perfilproductocod` int(10) NOT NULL,
  `archcod` int(10) NOT NULL,
  `descruta` varchar(255) NOT NULL,
  `fechaalta` datetime NOT NULL,
  `usuariogmt` varchar(125) NOT NULL DEFAULT '',
  PRIMARY KEY (`descarganewcod`),
  KEY `clientecod_perfil_archcod` (`clientecod`,`perfilproductocod`,`archcod`)
) ENGINE=InnoDB AUTO_INCREMENT=764264 DEFAULT CHARSET=utf8 COMMENT='datos de las descargas';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dominios`
--

DROP TABLE IF EXISTS `dominios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dominios` (
  `dominiocod` int(10) NOT NULL,
  `domnombre` varchar(254) NOT NULL,
  `domabreviatura` varchar(255) NOT NULL DEFAULT '',
  `operadorcod` int(10) NOT NULL,
  `domurlgateway` varchar(511) NOT NULL,
  `domurl` varchar(511) NOT NULL,
  `domkey` varchar(100) NOT NULL,
  `domimagen` varchar(511) NOT NULL,
  `domipsautorizadas` varchar(255) NOT NULL,
  `domorden` float NOT NULL DEFAULT '9999',
  `domestado` tinyint(4) NOT NULL DEFAULT '10',
  `visible` tinyint(4) NOT NULL DEFAULT '0',
  `dominiolargocod` int(10) DEFAULT NULL,
  PRIMARY KEY (`dominiocod`),
  KEY `dominios_alt` (`domorden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `emails_envios`
--

DROP TABLE IF EXISTS `emails_envios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails_envios` (
  `emailenviocod` int(10) NOT NULL AUTO_INCREMENT,
  `usuarioemail` varchar(255) NOT NULL DEFAULT '',
  `usuarionombre` varchar(45) NOT NULL DEFAULT '',
  `eefechaalta` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `eenumenvios` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`emailenviocod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `envios_por_operador`
--

DROP TABLE IF EXISTS `envios_por_operador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `envios_por_operador` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `tipo` varchar(45) NOT NULL,
  `operadorcod` int(10) NOT NULL,
  `totalenvios` float(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1417 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `estadisticas`
--

DROP TABLE IF EXISTS `estadisticas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estadisticas` (
  `dia` date DEFAULT NULL,
  `openombre` varchar(50) DEFAULT NULL,
  `operadorcod` int(10) DEFAULT '0',
  `total` bigint(21) DEFAULT '0',
  `certificado` int(10) DEFAULT NULL,
  `registrado` int(10) DEFAULT NULL,
  `lotes` int(10) DEFAULT NULL,
  `primera_notificacion` int(10) DEFAULT NULL,
  `primera_notificacion_cert` int(10) DEFAULT NULL,
  `primera_notificacion_reg` int(10) DEFAULT NULL,
  `reiteraciones` int(10) DEFAULT NULL,
  `reiteraciones_cert` int(10) DEFAULT NULL,
  `reiteraciones_reg` int(10) DEFAULT NULL,
  `ftp` int(10) DEFAULT NULL,
  `ftp_cert` int(10) DEFAULT NULL,
  `ftp_reg` int(10) DEFAULT NULL,
  `webservice` int(10) DEFAULT NULL,
  `webservice_cert` int(10) DEFAULT NULL,
  `webservice_reg` int(10) DEFAULT NULL,
  `mail` int(10) DEFAULT NULL,
  `mail_cert` int(10) DEFAULT NULL,
  `mail_reg` int(10) DEFAULT NULL,
  `sms` int(10) DEFAULT NULL,
  `sms_cert` int(10) DEFAULT NULL,
  `sms_reg` int(10) DEFAULT NULL,
  `impresion` int(10) DEFAULT NULL,
  `impresion_cert` int(10) DEFAULT NULL,
  `impresion_reg` int(10) DEFAULT NULL,
  `accesos` int(10) DEFAULT NULL,
  `navegador_IE9` int(10) DEFAULT NULL,
  `navegador_IE10` int(10) DEFAULT NULL,
  `navegador_IE11` int(10) DEFAULT NULL,
  `navegador_IE12` int(10) DEFAULT NULL,
  `navegador_chrome` int(10) DEFAULT NULL,
  `navegador_firefox` int(10) DEFAULT NULL,
  `navegador_opera` int(10) DEFAULT NULL,
  `navegador_safari` int(10) DEFAULT NULL,
  `ssoo_windows` int(10) DEFAULT NULL,
  `ssoo_linux` int(10) DEFAULT NULL,
  `ssoo_mac` int(10) DEFAULT NULL,
  `ssoo_android` int(10) DEFAULT NULL,
  `ssoo_iphone` int(10) DEFAULT NULL,
  `ssoo_ipad` int(10) DEFAULT NULL,
  `ws_axis1` int(10) DEFAULT NULL,
  `ws_axis2` int(10) DEFAULT NULL,
  `ws_net` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `estadisticas_informes`
--

DROP TABLE IF EXISTS `estadisticas_informes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estadisticas_informes` (
  `informecod` int(10) NOT NULL AUTO_INCREMENT,
  `falta` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `finicio` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `fproxima` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `fproximanum` bigint(20) NOT NULL DEFAULT '0',
  `fultima` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `inffrecuencia` tinyint(4) NOT NULL DEFAULT '10',
  `inftipofrecuencia` tinyint(4) NOT NULL DEFAULT '10',
  `infnombre` varchar(45) NOT NULL,
  `infmaildestinatario` varchar(45) NOT NULL,
  `clientecod` int(10) NOT NULL DEFAULT '0',
  `usuariocod` int(10) NOT NULL DEFAULT '0',
  `filtro` text NOT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT '10',
  `perfilproductocod` int(10) NOT NULL,
  PRIMARY KEY (`informecod`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `estados_cfs`
--

DROP TABLE IF EXISTS `estados_cfs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estados_cfs` (
  `estadocodcfs` int(10) NOT NULL,
  `estadonombre` varchar(100) NOT NULL,
  `estadogrupo` varchar(25) NOT NULL,
  `estadoactivo` tinyint(4) NOT NULL DEFAULT '10',
  `numeroordenflujo` smallint(6) DEFAULT NULL,
  `codigoestadofinal` smallint(6) DEFAULT NULL,
  `codigointeracciondestinatario` smallint(6) DEFAULT NULL,
  `codigousoemail` smallint(6) DEFAULT NULL,
  `codigousosms` smallint(6) DEFAULT NULL,
  `codigousoimpresion` smallint(6) DEFAULT NULL,
  `codigomostraencfsdata` smallint(6) DEFAULT NULL,
  `codigogrupoinformesestadisticas` smallint(6) DEFAULT NULL,
  `estadonombrecorto` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`estadocodcfs`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `estados_mrw`
--

DROP TABLE IF EXISTS `estados_mrw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estados_mrw` (
  `estadocodmrw` varchar(4) NOT NULL DEFAULT '',
  `subestadocodmrw` varchar(2) NOT NULL DEFAULT '',
  `estadodescripcion` varchar(100) NOT NULL,
  `estadoactivo` tinyint(4) NOT NULL DEFAULT '10',
  PRIMARY KEY (`estadocodmrw`,`subestadocodmrw`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `estados_mrw_cfs`
--

DROP TABLE IF EXISTS `estados_mrw_cfs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estados_mrw_cfs` (
  `estadocodcfs` int(10) NOT NULL,
  `estadocodmrw` varchar(4) NOT NULL DEFAULT '',
  `subestadocodmrw` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`estadocodcfs`,`estadocodmrw`,`subestadocodmrw`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fact_periodicidades_facturacion`
--

DROP TABLE IF EXISTS `fact_periodicidades_facturacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fact_periodicidades_facturacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(40) NOT NULL,
  `meses` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fact_rappel`
--

DROP TABLE IF EXISTS `fact_rappel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fact_rappel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `operadorcod` int(10) unsigned NOT NULL,
  `tipo_w_c` varchar(1) DEFAULT 'w',
  `volumen_anual_mb` int(10) unsigned NOT NULL,
  `precio_mb` float(4,2) NOT NULL,
  `precio_pack_web` float(6,2) NOT NULL,
  `estado` tinyint(10) unsigned DEFAULT '10',
  `default` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fact_tareas_facturacion`
--

DROP TABLE IF EXISTS `fact_tareas_facturacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fact_tareas_facturacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clientecod` int(11) NOT NULL,
  `fecha_proceso_prevista_gmt0` datetime NOT NULL,
  `fecha_proceso_real_gmt0` datetime DEFAULT NULL,
  `codigo_tipo_tarea` smallint(6) NOT NULL,
  `codigo_estado_tarea` smallint(6) NOT NULL,
  `numero_proceso_batch` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `fecha_inicio_periodo_gmt0` datetime NOT NULL,
  `fecha_fin_periodo_gmt0` datetime NOT NULL,
  `factura_id` int(11) DEFAULT NULL,
  `codigo_prioridad` smallint(6) NOT NULL,
  `codigo_canal_proceso` smallint(6) NOT NULL,
  `fecha_registro_gmt0` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `FK_clientes_idx` (`clientecod`),
  KEY `IX_fecha_codigo` (`codigo_tipo_tarea`,`fecha_proceso_prevista_gmt0`),
  KEY `FK_factura_idx` (`factura_id`),
  KEY `FK_parent_id_idx` (`parent_id`),
  CONSTRAINT `FK_tareasfact_clientes` FOREIGN KEY (`clientecod`) REFERENCES `clientes` (`clientecod`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_tareasfact_factura` FOREIGN KEY (`factura_id`) REFERENCES `facturas` (`facturacod`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_tareasfact_parent_id` FOREIGN KEY (`parent_id`) REFERENCES `fact_tareas_facturacion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `facturacion_clientes`
--

DROP TABLE IF EXISTS `facturacion_clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facturacion_clientes` (
  `facturacionclientecod` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `clientecod` int(10) NOT NULL,
  `paiscod` int(10) NOT NULL,
  `monedacod` varchar(3) NOT NULL DEFAULT '',
  `tipoclientecod` int(10) NOT NULL,
  `clientenombre` varchar(255) NOT NULL,
  `clienteapellidos` varchar(255) NOT NULL,
  `clienteempresa` varchar(255) NOT NULL,
  `clientecifnif` varchar(12) NOT NULL,
  `clientedireccion` varchar(125) NOT NULL,
  `clientelocalidad` varchar(30) NOT NULL,
  `clienteprovincia` varchar(30) NOT NULL,
  `clientecodpos` varchar(15) NOT NULL,
  `partnercod` int(10) NOT NULL DEFAULT '0',
  `partnertipo` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1: Partner, tiene crédito; 2: Partner Facturador: Emite factura por uso',
  `formapagocod` smallint(4) unsigned NOT NULL DEFAULT '0',
  `clienteentbancaria` varchar(45) NOT NULL,
  `clientenumcuenta` varchar(45) NOT NULL,
  `clienteibancuenta` varchar(45) NOT NULL COMMENT 'IBAN International Bank Account Number',
  `clienteswiftcuenta` varchar(20) NOT NULL,
  `clientetitularcta` varchar(120) NOT NULL,
  `codigoconfiable` tinyint(4) DEFAULT '0' COMMENT 'Indica si este método de pago es confiable o no',
  `periodicidad_facturacion_id` int(10) DEFAULT NULL,
  `periodo_facturacion` tinyint(4) DEFAULT NULL,
  `dias_vencimiento` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`facturacionclientecod`),
  KEY `index2` (`clientecod`),
  KEY `index3` (`formapagocod`),
  KEY `index4` (`clientecod`,`formapagocod`),
  KEY `fk_periodicidad_facturacion_id_idx` (`periodicidad_facturacion_id`),
  CONSTRAINT `fk_periodicidad_facturacion_id` FOREIGN KEY (`periodicidad_facturacion_id`) REFERENCES `fact_periodicidades_facturacion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5067 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `facturacion_programada`
--

DROP TABLE IF EXISTS `facturacion_programada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facturacion_programada` (
  `facturacionprogramadacod` int(10) NOT NULL AUTO_INCREMENT,
  `perfproductocontratadocod` int(10) DEFAULT NULL,
  `clientecod` int(10) NOT NULL,
  `perfilproductocod` int(10) NOT NULL,
  `facprotipo` int(4) NOT NULL DEFAULT '1',
  `facprotramos` varchar(100) NOT NULL DEFAULT '',
  `facprocuotas` int(2) NOT NULL DEFAULT '0',
  `facprocuotaactual` int(2) NOT NULL DEFAULT '0',
  `facprocuantia` float NOT NULL DEFAULT '0',
  `facproimpuestos` int(3) NOT NULL DEFAULT '0',
  `facprofemision` date NOT NULL DEFAULT '0000-00-00',
  `facprofvence` date NOT NULL DEFAULT '0000-00-00',
  `facproestado` smallint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`facturacionprogramadacod`)
) ENGINE=InnoDB AUTO_INCREMENT=7906 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `facturas`
--

DROP TABLE IF EXISTS `facturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facturas` (
  `facturacod` int(10) NOT NULL AUTO_INCREMENT,
  `operadorcod` int(10) NOT NULL,
  `perfproductocontratadocod` int(10) NOT NULL,
  `clientecod` int(10) NOT NULL,
  `tipoclientecod` int(10) NOT NULL,
  `clientenombre` varchar(255) NOT NULL DEFAULT '',
  `clienteapellidos` varchar(255) NOT NULL DEFAULT '',
  `clienteempresa` varchar(255) NOT NULL DEFAULT '',
  `clientecifnif` varchar(12) NOT NULL DEFAULT '',
  `clienteemail` varchar(45) NOT NULL DEFAULT '',
  `clientedireccion` varchar(125) NOT NULL,
  `clientelocalidad` varchar(30) NOT NULL DEFAULT '',
  `clientecodpos` varchar(15) NOT NULL DEFAULT '',
  `clienteprovincia` varchar(30) NOT NULL DEFAULT '',
  `paiscod` int(10) unsigned NOT NULL DEFAULT '0',
  `idiomacod` varchar(5) NOT NULL DEFAULT 'es',
  `formapagocod` smallint(4) unsigned NOT NULL,
  `clienteentbancaria` varchar(45) NOT NULL DEFAULT '',
  `clientenumcuenta` varchar(45) NOT NULL DEFAULT '',
  `clienteibancuenta` varchar(45) NOT NULL DEFAULT '' COMMENT 'IBAN International Bank Account Number',
  `clienteswiftcuenta` varchar(20) NOT NULL DEFAULT '',
  `clientetitularcta` varchar(120) NOT NULL DEFAULT '',
  `factcuotas` int(4) NOT NULL DEFAULT '0',
  `openombre` varchar(255) NOT NULL DEFAULT '',
  `opeapellidos` varchar(255) NOT NULL DEFAULT '',
  `opeempresa` varchar(255) NOT NULL DEFAULT '',
  `opecifnif` varchar(20) NOT NULL DEFAULT '',
  `opedireccion` varchar(125) NOT NULL,
  `opelocalidad` varchar(30) NOT NULL DEFAULT '',
  `opecodpos` varchar(15) NOT NULL DEFAULT '',
  `opeprovincia` varchar(30) NOT NULL DEFAULT '',
  `opepaiscod` int(10) unsigned NOT NULL DEFAULT '0',
  `opeemail_facturacion` varchar(250) DEFAULT NULL,
  `facttipo` varchar(40) DEFAULT NULL,
  `factnumero` int(10) DEFAULT NULL COMMENT '6 digitos',
  `factfemision` date DEFAULT NULL,
  `factfvencimiento` date DEFAULT NULL,
  `factperiodo` varchar(45) DEFAULT NULL,
  `factexcedidos` varchar(30) NOT NULL DEFAULT '0-0//0-0',
  `factnumexcedidos` varchar(20) NOT NULL DEFAULT '0;0',
  `factimpuesto` decimal(10,2) DEFAULT NULL,
  `facttotal` decimal(10,2) DEFAULT NULL,
  `factvista` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `factdescargada` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `factestado` smallint(4) DEFAULT NULL,
  `ppcfinicio` date NOT NULL DEFAULT '0000-00-00',
  `ppcffin` date NOT NULL DEFAULT '0000-00-00',
  `ppccondpartic` text NOT NULL,
  `packcontratadocod` int(11) NOT NULL,
  `factsubtotal` decimal(10,2) DEFAULT NULL,
  `factpimpuesto` int(11) NOT NULL,
  `pedidocod` varchar(100) DEFAULT '',
  `procesopaypalcod` int(11) DEFAULT NULL,
  `factfultimamodif` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `descuento` decimal(10,2) NOT NULL DEFAULT '0.00',
  `volumen_facturado` decimal(10,2) NOT NULL DEFAULT '0.00',
  `regularizada` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `precio_mb` decimal(10,2) NOT NULL DEFAULT '0.00',
  `ruta_pdf` varchar(255) DEFAULT NULL,
  `es_de_supercliente` smallint(4) DEFAULT '0',
  `fecha_inicio_periodo_gmt0` datetime DEFAULT NULL,
  `fecha_fin_periodo_gmt0` datetime DEFAULT NULL,
  `descuento_importe` decimal(10,2) NOT NULL DEFAULT '0.00',
  `neto` decimal(10,2) NOT NULL DEFAULT '0.00',
  `codigo_tipo_factura` smallint(4) DEFAULT NULL,
  `numero_completo` varchar(45) DEFAULT NULL,
  `rectificada_por` int(11) DEFAULT NULL,
  PRIMARY KEY (`facturacod`),
  UNIQUE KEY `numerodefactura` (`facttipo`,`factnumero`),
  KEY `idx_volumen_cliente` (`clientecod`,`volumen_facturado`),
  KEY `idx_regularizda_cliente` (`clientecod`,`regularizada`),
  KEY `fk_facturas_rectificada_por_idx` (`rectificada_por`),
  CONSTRAINT `fk_facturas_rectificada_por` FOREIGN KEY (`rectificada_por`) REFERENCES `facturas` (`facturacod`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13521 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `facturas_detalle`
--

DROP TABLE IF EXISTS `facturas_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facturas_detalle` (
  `facturadetallecod` int(10) NOT NULL AUTO_INCREMENT,
  `facturacod` int(10) NOT NULL,
  `clientecod` int(10) NOT NULL DEFAULT '0',
  `fdtipolinea` varchar(1) NOT NULL DEFAULT 'd',
  `fdservicio` varchar(512) NOT NULL DEFAULT '',
  `fdcantidad` decimal(10,2) NOT NULL DEFAULT '1.00',
  `fdprecio` decimal(10,2) DEFAULT NULL,
  `fdimporte` decimal(10,2) DEFAULT NULL,
  `fdimpuesto` decimal(10,2) DEFAULT NULL,
  `fdtotal` decimal(10,2) DEFAULT NULL,
  `servicio_tag` varchar(40) NOT NULL,
  `parent_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`facturadetallecod`),
  KEY `fk_parent_id_idx` (`parent_id`),
  CONSTRAINT `fk_parent_id` FOREIGN KEY (`parent_id`) REFERENCES `facturas_detalle` (`facturadetallecod`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=89139 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `formas_pago`
--

DROP TABLE IF EXISTS `formas_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formas_pago` (
  `formapagocod` int(10) unsigned NOT NULL,
  `formapagonombre` varchar(45) DEFAULT NULL,
  `formapagodesc` varchar(250) DEFAULT NULL,
  `formapagoestado` smallint(4) NOT NULL DEFAULT '0',
  `operadorcod` int(10) unsigned NOT NULL,
  PRIMARY KEY (`formapagocod`,`operadorcod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fort_adjuntos`
--

DROP TABLE IF EXISTS `fort_adjuntos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fort_adjuntos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pregunta_id` int(11) NOT NULL,
  `archubic` varchar(250) DEFAULT NULL,
  `archnom` varchar(250) DEFAULT NULL,
  `archtam` float DEFAULT NULL,
  `crc` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_fort_adjuntos_fort_preguntas1_idx` (`pregunta_id`),
  CONSTRAINT `fk_fort_adjuntos_fort_preguntas1` FOREIGN KEY (`pregunta_id`) REFERENCES `fort_preguntas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fort_formularios`
--

DROP TABLE IF EXISTS `fort_formularios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fort_formularios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(500) DEFAULT NULL,
  `respondido` smallint(6) DEFAULT NULL,
  `obligatorio` smallint(6) DEFAULT NULL,
  `fecha_registro_gmt0` datetime DEFAULT NULL,
  `fecha_respuesta_gmt0` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1156 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fort_opciones`
--

DROP TABLE IF EXISTS `fort_opciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fort_opciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pregunta_id` int(11) NOT NULL,
  `enunciado` text,
  `orden` int(11) DEFAULT NULL,
  `permitir_respuesta_texto` smallint(6) DEFAULT NULL,
  `seleccionada` smallint(6) DEFAULT NULL,
  `valor_positivo` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pregunta_id` (`pregunta_id`),
  CONSTRAINT `fk_fort_opciones_fort_preguntas1` FOREIGN KEY (`pregunta_id`) REFERENCES `fort_preguntas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7462 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fort_opciones_texto`
--

DROP TABLE IF EXISTS `fort_opciones_texto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fort_opciones_texto` (
  `opcion_pregunta_id` int(11) NOT NULL,
  `contenido` mediumtext,
  `longitud_maxima` int(11) DEFAULT NULL,
  `longitud_minima` int(11) DEFAULT NULL,
  PRIMARY KEY (`opcion_pregunta_id`),
  KEY `fk_fort_opciones_texto_fort_opciones1_idx` (`opcion_pregunta_id`),
  CONSTRAINT `fk_fort_opciones_texto_fort_opciones1` FOREIGN KEY (`opcion_pregunta_id`) REFERENCES `fort_opciones` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fort_preguntas`
--

DROP TABLE IF EXISTS `fort_preguntas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fort_preguntas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `formulario_id` int(11) NOT NULL,
  `opcion_pregunta_id` int(11) DEFAULT NULL,
  `enunciado` text,
  `orden` int(11) DEFAULT NULL,
  `obligatorio` smallint(6) DEFAULT NULL,
  `tipo_input` smallint(6) DEFAULT NULL,
  `permitir_adjuntos` smallint(6) DEFAULT '0',
  `peso_maximo_adjuntos` int(11) DEFAULT NULL,
  `tipos_adjuntos_permitidos` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_formulario` (`formulario_id`),
  KEY `fk_opcion_pregunta` (`opcion_pregunta_id`),
  CONSTRAINT `fk_fort_preguntas_fort_formularios1` FOREIGN KEY (`formulario_id`) REFERENCES `fort_formularios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_fort_preguntas_fort_opciones1` FOREIGN KEY (`opcion_pregunta_id`) REFERENCES `fort_opciones` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3959 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `franquicias`
--

DROP TABLE IF EXISTS `franquicias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `franquicias` (
  `gestorcod` int(11) NOT NULL AUTO_INCREMENT,
  `codigopoint` varchar(10) NOT NULL,
  `nombrepoint` varchar(50) NOT NULL,
  `nombreempresa` varchar(50) NOT NULL,
  `idpais` varchar(2) NOT NULL,
  `idregion` varchar(2) NOT NULL,
  `idprovincia` varchar(4) NOT NULL,
  `idpoblacion` varchar(35) NOT NULL,
  `dp` varchar(10) NOT NULL,
  `tipovia` varchar(3) NOT NULL,
  `direccion` varchar(35) NOT NULL,
  `numdir` int(11) NOT NULL,
  `escpuerta` varchar(50) NOT NULL,
  `nif` varchar(15) NOT NULL,
  `datosregistrales` varchar(50) NOT NULL,
  `estado` char(1) NOT NULL,
  `idruta` varchar(2) NOT NULL,
  `codclasificacinta` varchar(3) NOT NULL,
  `observaciones` varchar(100) NOT NULL,
  `tipo` varchar(2) NOT NULL,
  `tlfcontactopoint` varchar(10) NOT NULL,
  `fechaalta` datetime NOT NULL,
  `fechabaja` datetime NOT NULL,
  `franquiciaasociada` varchar(5) NOT NULL,
  `numserie` varchar(10) NOT NULL,
  `categoria` varchar(10) NOT NULL,
  `latitud` decimal(20,14) NOT NULL,
  `longitud` decimal(20,14) NOT NULL,
  `twitter` varchar(45) NOT NULL,
  `direcciongoogle` varchar(100) NOT NULL,
  `cp` varchar(5) NOT NULL,
  `clientecod` int(11) NOT NULL,
  `grupofacturacion` varchar(45) NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `usuariocod` int(10) NOT NULL,
  `operadorcod` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`gestorcod`),
  KEY `franquicias_nombreempresa` (`nombreempresa`)
) ENGINE=InnoDB AUTO_INCREMENT=1074 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `franquicias02_2013`
--

DROP TABLE IF EXISTS `franquicias02_2013`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `franquicias02_2013` (
  `CodigoPoint` varchar(10) NOT NULL,
  `NombrePoint` varchar(50) DEFAULT NULL,
  `NombreEmpresa` varchar(50) DEFAULT NULL,
  `IdPais` varchar(2) DEFAULT NULL,
  `IdRegion` varchar(2) DEFAULT NULL,
  `IdProvincia` varchar(4) DEFAULT NULL,
  `IdPoblacion` varchar(35) DEFAULT NULL,
  `DP` varchar(10) DEFAULT NULL,
  `TipoVia` varchar(3) DEFAULT NULL,
  `Direccion` varchar(35) DEFAULT NULL,
  `NumDir` int(11) DEFAULT NULL,
  `EscPuerta` varchar(50) DEFAULT NULL,
  `NIF` varchar(15) DEFAULT NULL,
  `DatosRegistrales` varchar(50) DEFAULT NULL,
  `Estado` char(1) DEFAULT NULL,
  `IDRuta` varchar(2) DEFAULT NULL,
  `CodClasificaCinta` varchar(3) DEFAULT NULL,
  `Observaciones` varchar(100) DEFAULT NULL,
  `Tipo` varchar(2) DEFAULT NULL,
  `TlfContactoPoint` varchar(10) DEFAULT NULL,
  `FechaAlta` datetime DEFAULT NULL,
  `FechaBaja` datetime DEFAULT NULL,
  `FranquiciaAsociada` varchar(5) DEFAULT NULL,
  `NumSerie` varchar(10) DEFAULT NULL,
  `Categoria` varchar(10) DEFAULT NULL,
  `Latitud` decimal(20,14) DEFAULT NULL,
  `Longitud` decimal(20,14) DEFAULT NULL,
  `Twitter` varchar(45) DEFAULT NULL,
  `DireccionGoogle` varchar(100) DEFAULT NULL,
  `CP` varchar(5) DEFAULT NULL,
  `clientecod` int(11) DEFAULT NULL,
  `grupofacturacion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`CodigoPoint`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `franquicias_26_02_2013`
--

DROP TABLE IF EXISTS `franquicias_26_02_2013`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `franquicias_26_02_2013` (
  `codigofranquicia` int(10) NOT NULL AUTO_INCREMENT,
  `nombrefranquicia` varchar(50) NOT NULL,
  `nombreempresa` varchar(50) NOT NULL,
  `cif` varchar(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cp` varchar(15) NOT NULL,
  `clientecod` int(10) NOT NULL,
  `grupofacturacion` varchar(50) NOT NULL,
  PRIMARY KEY (`codigofranquicia`)
) ENGINE=InnoDB AUTO_INCREMENT=1235 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `funcionalidades_campos`
--

DROP TABLE IF EXISTS `funcionalidades_campos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionalidades_campos` (
  `funcionalidadcod` int(10) NOT NULL,
  `campocod` int(10) NOT NULL,
  PRIMARY KEY (`funcionalidadcod`,`campocod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `funcionalidades_new`
--

DROP TABLE IF EXISTS `funcionalidades_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionalidades_new` (
  `funcionalidadcod` int(10) NOT NULL AUTO_INCREMENT,
  `funcionalidadpadre` int(10) NOT NULL DEFAULT '0',
  `fciclo` varchar(100) NOT NULL COMMENT 'Redacción / Monitorización / Respuesta / Compulsa / Fedatarios',
  `ftipo` varchar(100) NOT NULL COMMENT 'Core / Tool / Option',
  `fnombre` varchar(225) NOT NULL,
  `fdesccorta` varchar(255) NOT NULL,
  `fdescripcion` text NOT NULL,
  `fsalida` text NOT NULL,
  `fcoste` float NOT NULL DEFAULT '0',
  `fvinclude` varchar(255) NOT NULL,
  `finclude` varchar(255) NOT NULL DEFAULT '',
  `festado` tinyint(2) NOT NULL DEFAULT '10',
  `forden` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`funcionalidadcod`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `funcionalidades_operadores`
--

DROP TABLE IF EXISTS `funcionalidades_operadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionalidades_operadores` (
  `perfilproductocod` int(10) NOT NULL,
  `operadorcod` int(10) NOT NULL,
  `funcionalidadcod` int(10) NOT NULL,
  `foestado` tinyint(4) NOT NULL DEFAULT '10',
  PRIMARY KEY (`perfilproductocod`,`operadorcod`,`funcionalidadcod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `funcionalidades_perfiles_new`
--

DROP TABLE IF EXISTS `funcionalidades_perfiles_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionalidades_perfiles_new` (
  `perfilproductocod` int(10) NOT NULL,
  `funcionalidadcod` int(10) NOT NULL,
  `estadocod` tinyint(4) NOT NULL,
  PRIMARY KEY (`perfilproductocod`,`funcionalidadcod`),
  KEY `funcionalidades_perfiles_new_alt` (`funcionalidadcod`,`perfilproductocod`,`estadocod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gestor_promos`
--

DROP TABLE IF EXISTS `gestor_promos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gestor_promos` (
  `gestorpromocod` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `promocod` int(10) NOT NULL,
  `rolcod` int(10) NOT NULL,
  `gpromoenvios` int(10) unsigned NOT NULL,
  `gpromocondicion` varchar(100) NOT NULL DEFAULT '',
  `gpromodto` int(10) unsigned NOT NULL,
  `gpromoestado` tinyint(1) NOT NULL,
  PRIMARY KEY (`gestorpromocod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hilos`
--

DROP TABLE IF EXISTS `hilos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hilos` (
  `clientecod` int(10) NOT NULL,
  `hilocod` int(10) unsigned NOT NULL,
  `perfilproductocod` int(10) unsigned NOT NULL,
  `hiloestado` int(2) DEFAULT '0',
  PRIMARY KEY (`clientecod`,`hilocod`,`perfilproductocod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `historico_carteros`
--

DROP TABLE IF EXISTS `historico_carteros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historico_carteros` (
  `historicocarteroscod` int(10) NOT NULL AUTO_INCREMENT,
  `activacioncarterocod` int(10) NOT NULL,
  `procesocod` int(10) NOT NULL,
  `fechainicio` datetime NOT NULL,
  `fechafin` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tiempoejecucion` double NOT NULL DEFAULT '0',
  `clientecod` int(10) NOT NULL,
  `usuariocod` int(10) NOT NULL,
  `colabbddcod` int(10) NOT NULL,
  `colaenviocod` int(10) NOT NULL,
  `carterocod` tinyint(4) NOT NULL,
  `infoinicio` varchar(254) COLLATE latin1_spanish_ci NOT NULL,
  `infofin` varchar(254) COLLATE latin1_spanish_ci NOT NULL,
  `colabbddcont` int(10) NOT NULL,
  `colaenviocont` int(10) NOT NULL,
  `contactocont` int(10) NOT NULL,
  PRIMARY KEY (`historicocarteroscod`)
) ENGINE=InnoDB AUTO_INCREMENT=469936 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `historico_envios`
--

DROP TABLE IF EXISTS `historico_envios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historico_envios` (
  `historicoenviocod` int(10) NOT NULL AUTO_INCREMENT,
  `mensajecontactocod` int(10) NOT NULL,
  `heestado` tinyint(4) NOT NULL DEFAULT '0',
  `heoperacion` varchar(255) NOT NULL,
  `hedescripcion` text,
  `hefecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`historicoenviocod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `idexpedicion_unico`
--

DROP TABLE IF EXISTS `idexpedicion_unico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `idexpedicion_unico` (
  `idexpedicion` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idexpedicion`)
) ENGINE=InnoDB AUTO_INCREMENT=32662 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `incidencias`
--

DROP TABLE IF EXISTS `incidencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `incidencias` (
  `incidenciacod` int(10) NOT NULL AUTO_INCREMENT,
  `operadorcod` int(10) NOT NULL,
  `usuariocod` int(10) NOT NULL,
  `clientecod` int(10) NOT NULL,
  `asunto` varchar(500) NOT NULL,
  `sistemaoperativo` varchar(20) NOT NULL,
  `navegador` varchar(20) NOT NULL DEFAULT '',
  `tipo` varchar(50) NOT NULL DEFAULT '',
  `comentarios` text,
  `falta` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `prioridad` varchar(50) DEFAULT '',
  `estado` varchar(50) DEFAULT '',
  `ticketcod` int(10) DEFAULT NULL,
  PRIMARY KEY (`incidenciacod`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `inkt_usuario`
--

DROP TABLE IF EXISTS `inkt_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inkt_usuario` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(45) NOT NULL,
  `pass` varchar(250) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `apellido` varchar(60) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  `borrado` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Campo que nos indica si el registro está borrado o no (borrado lógico)',
  `usuario_crea` int(11) DEFAULT NULL,
  `usuario_modif` int(11) DEFAULT NULL,
  `fecha_crea_gmt0` datetime NOT NULL,
  `fecha_modif_gmt0` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `inkt_validacion_columna`
--

DROP TABLE IF EXISTS `inkt_validacion_columna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inkt_validacion_columna` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) NOT NULL,
  `columna_fichero` smallint(5) unsigned NOT NULL COMMENT 'Nos indica la columna en la que se encuentra del fichero (por ejemplo, podría ser que fuera un fichero excell, y las 2 primeras columnas, estuvieran vacías, por lo que el valor para este campo sería de 3). Se empieza a contar en 1.',
  `orden` smallint(5) unsigned NOT NULL COMMENT 'Nos indica el orden de la columna, la situada más a la izquierda, sería la orden=1, y así sucesivamente, desplazándonos hacia la derecha.',
  `validacion_fichero_id` bigint(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_inkt_validacion_columna_inkt_validacion_fichero1_idx` (`validacion_fichero_id`),
  CONSTRAINT `fk_inkt_validacion_columna_inkt_validacion_fichero1` FOREIGN KEY (`validacion_fichero_id`) REFERENCES `inkt_validacion_fichero` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `inkt_validacion_fichero`
--

DROP TABLE IF EXISTS `inkt_validacion_fichero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inkt_validacion_fichero` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `ruta` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `filas` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Nos indica las filas totales del Fichero (incluída la cabecera)',
  `fila_inicio` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'Nos indica la primera fila con datos del Fichero.',
  `fila_validada` int(10) unsigned DEFAULT NULL COMMENT 'Nos indica la última fila validada (fila real del fichero --> incluída la cabecera).',
  `estado` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0-Inicio, 10 - Procesandose, 50-Ok, 100-Error',
  `validacion_proceso_id` bigint(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_inkt_validacion_fichero_inkt_validacion_proceso1_idx` (`validacion_proceso_id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `inkt_validacion_output`
--

DROP TABLE IF EXISTS `inkt_validacion_output`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inkt_validacion_output` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ruta` varchar(255) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `validacion_proceso_id` bigint(11) unsigned NOT NULL,
  `validacion_columna_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_inkt_validacion_output_inkt_validacion_proceso1_idx` (`validacion_proceso_id`),
  KEY `fk_inkt_validacion_output_inkt_validacion_columna1_idx` (`validacion_columna_id`),
  CONSTRAINT `fk_inkt_validacion_output_inkt_validacion_columna1` FOREIGN KEY (`validacion_columna_id`) REFERENCES `inkt_validacion_columna` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_validacion_proceso_id` FOREIGN KEY (`validacion_proceso_id`) REFERENCES `inkt_validacion_proceso` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `inkt_validacion_proceso`
--

DROP TABLE IF EXISTS `inkt_validacion_proceso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inkt_validacion_proceso` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `fecha` datetime NOT NULL COMMENT 'Fecha en la que se lanzó el proceso.',
  `fecha_gmt0` datetime DEFAULT NULL COMMENT 'Fecha GMt en la que se lanzó el proceso.',
  `contactos` bigint(11) NOT NULL DEFAULT '0' COMMENT 'Todos los registros procesados (procesos independientes de verificación)',
  `estado` int(11) NOT NULL COMMENT '0-Inicio, 10 - Procesandose, 50-Ok, 100-Error',
  `usuario_id` int(10) unsigned NOT NULL COMMENT 'Nos va a indicar el usuario que lanzó el proceso',
  PRIMARY KEY (`id`),
  KEY `fk_inkt_validacion_proceso_inkt_usuario1_idx` (`usuario_id`),
  CONSTRAINT `fk_inkt_validacion_proceso_inkt_usuario1` FOREIGN KEY (`usuario_id`) REFERENCES `inkt_usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `inkt_validacion_tipo`
--

DROP TABLE IF EXISTS `inkt_validacion_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inkt_validacion_tipo` (
  `id` smallint(5) unsigned NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `class` varchar(255) NOT NULL COMMENT 'Nos va a indicar el nombre de la clase que implementa la verificación de la columna.',
  `validacion_columna_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_inkt_validacion_tipo_inkt_validacion_columna1_idx` (`validacion_columna_id`),
  CONSTRAINT `fk_inkt_validacion_tipo_inkt_validacion_columna1` FOREIGN KEY (`validacion_columna_id`) REFERENCES `inkt_validacion_columna` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ips`
--

DROP TABLE IF EXISTS `ips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ips` (
  `ipcontroladacod` int(10) NOT NULL DEFAULT '0',
  `ipfechahoragmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip` varchar(15) NOT NULL DEFAULT '0.0.0.0',
  `so` varchar(225) NOT NULL DEFAULT '',
  `nav` varchar(225) NOT NULL DEFAULT '',
  KEY `IX_fechahoragmt` (`ipfechahoragmt`),
  KEY `IX_ipcontroladacod` (`ipcontroladacod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ips_404`
--

DROP TABLE IF EXISTS `ips_404`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ips_404` (
  `ip` varchar(15) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `so` varchar(225) NOT NULL,
  `nav` varchar(225) NOT NULL,
  `info` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`ip`,`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ips_bloqueadas`
--

DROP TABLE IF EXISTS `ips_bloqueadas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ips_bloqueadas` (
  `ipbloqueadacod` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `operadorcod` int(10) NOT NULL DEFAULT '0',
  `ipbloqfechafin` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ipbloqaccion` varchar(225) NOT NULL DEFAULT '',
  `ipbloqmotivo` varchar(225) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '0.0.0.0',
  `so` varchar(225) NOT NULL DEFAULT '',
  `nav` varchar(225) NOT NULL DEFAULT '',
  `ipbloqusuarioemail` varchar(225) NOT NULL DEFAULT '',
  `fecha_registro_gmt0` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ipbloqueadacod`),
  KEY `ips_bloqueadas_alt` (`ip`,`ipbloqaccion`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ips_controladas`
--

DROP TABLE IF EXISTS `ips_controladas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ips_controladas` (
  `ipcontroladacod` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ipcontfecha` date NOT NULL DEFAULT '0000-00-00',
  `ipcontaccion` varchar(225) NOT NULL DEFAULT '',
  `operadorcod` int(10) NOT NULL DEFAULT '0',
  `ipcontusuarioemail` varchar(225) NOT NULL DEFAULT '',
  `ipconterrlogin` tinyint(2) NOT NULL DEFAULT '0',
  `ipcontpagina` varchar(225) NOT NULL DEFAULT '',
  `ipcontpalabrabuscar` varchar(225) NOT NULL DEFAULT '',
  PRIMARY KEY (`ipcontroladacod`),
  KEY `ips_controladas_alt` (`ipcontfecha`,`ipcontaccion`,`ipcontusuarioemail`),
  KEY `IX_operadorcod_usuarioemail` (`operadorcod`,`ipcontusuarioemail`),
  KEY `IX_ipcontaccion` (`ipcontaccion`)
) ENGINE=InnoDB AUTO_INCREMENT=70091 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ips_registro`
--

DROP TABLE IF EXISTS `ips_registro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ips_registro` (
  `ip` varchar(15) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `so` varchar(225) NOT NULL,
  `nav` varchar(225) NOT NULL,
  `intentos` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ip`,`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lang_tags`
--

DROP TABLE IF EXISTS `lang_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lang_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(255) NOT NULL,
  `scope` varchar(45) DEFAULT NULL COMMENT 'Ámbito de la etiqueta [sistema | rh1no | verify ...]',
  `descripcion` varchar(255) DEFAULT NULL COMMENT 'Si el nombre de la etiqueta no aclara lo suficiente sobre ésta y se considera necesario, rellenar este campo con una descripción explicativa.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lang_translations`
--

DROP TABLE IF EXISTS `lang_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lang_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang_tag_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `operadorcod_id` int(11) DEFAULT NULL COMMENT 'En caso de traducciones pertenecientes únicamente a un operador en concreto (p. ej. Condiciones Legales).',
  `traduccion` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_lang_tag_id_idx` (`operadorcod_id`),
  CONSTRAINT `fk_lang_tag_id` FOREIGN KEY (`operadorcod_id`) REFERENCES `operadores` (`operadorcod`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(3) NOT NULL COMMENT 'http://en.wikipedia.org/wiki/List_of_ISO_639-1_codes',
  `nombre` varchar(45) NOT NULL COMMENT 'Nombre descriptivo del idioma en el propio idioma [español | english | français | galego | català ...] o bien en inglés más en el propio  para idiomas con alfabetos especiales (p.ej. "Russian / русский")',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_UNIQUE` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lbpt_dispositivo`
--

DROP TABLE IF EXISTS `lbpt_dispositivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lbpt_dispositivo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mac_dispositivo` varchar(255) DEFAULT NULL COMMENT 'Identificador univoco del dispositivo',
  `usuario_id` int(11) DEFAULT NULL,
  `fecha_registro_gmt0` datetime DEFAULT NULL,
  `activo` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_lbpt_dispositivo_1_idx` (`usuario_id`),
  CONSTRAINT `fk_lbpt_dispositivo_1` FOREIGN KEY (`usuario_id`) REFERENCES `clnt_usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lbpt_modelo_hoja`
--

DROP TABLE IF EXISTS `lbpt_modelo_hoja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lbpt_modelo_hoja` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imei` varchar(100) DEFAULT NULL,
  `clientecod` int(11) DEFAULT NULL,
  `skin` varchar(100) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `fecha_registro_gmt0` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `imei_skin_UNIQUE` (`imei`,`skin`),
  KEY `fk_lbpt_modelo_hoja_1_idx` (`clientecod`),
  CONSTRAINT `fk_lbpt_modelo_hoja_1` FOREIGN KEY (`clientecod`) REFERENCES `clientes` (`clientecod`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log_estado30`
--

DROP TABLE IF EXISTS `log_estado30`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_estado30` (
  `fechahora` datetime DEFAULT NULL,
  `clientecod` int(11) DEFAULT NULL,
  `nombrebd` varchar(50) DEFAULT NULL,
  `perfilproductocod` int(11) DEFAULT NULL,
  `msgcod` int(11) DEFAULT NULL,
  `msgestado_old` int(11) DEFAULT NULL,
  `msgestado_new` int(11) DEFAULT NULL,
  `sqlcode` int(11) DEFAULT NULL,
  `sqltext` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log_migracion`
--

DROP TABLE IF EXISTS `log_migracion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_migracion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` int(11) NOT NULL,
  `clientecod` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `texto` varchar(1024) DEFAULT NULL,
  `nivel` int(11) DEFAULT NULL,
  `sqlcode` int(11) DEFAULT NULL,
  `sqltext` varchar(1024) DEFAULT NULL,
  `conexionid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_tipo` (`tipo`),
  KEY `IX_clientecod` (`clientecod`),
  KEY `IX_sqlcode` (`sqlcode`)
) ENGINE=InnoDB AUTO_INCREMENT=871690 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mensajes_hilos`
--

DROP TABLE IF EXISTS `mensajes_hilos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mensajes_hilos` (
  `clientecod` int(10) NOT NULL,
  `msgcod` int(10) unsigned NOT NULL,
  `perfilproductocod` int(10) unsigned NOT NULL,
  `hilocod` int(10) unsigned NOT NULL,
  PRIMARY KEY (`clientecod`,`msgcod`,`perfilproductocod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mensajes_impresion`
--

DROP TABLE IF EXISTS `mensajes_impresion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mensajes_impresion` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `clientecod` int(10) NOT NULL,
  `msgcod` int(10) unsigned NOT NULL,
  `hilocod` int(10) unsigned NOT NULL,
  `perfilproductocod` int(10) unsigned NOT NULL DEFAULT '0',
  `msgfalta` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `contactodireccion` varchar(100) NOT NULL,
  `contactolocalidad` varchar(45) NOT NULL,
  `contactocodigopostal` varchar(15) NOT NULL,
  `contactoprovincia` varchar(45) NOT NULL,
  `contactopais` varchar(45) NOT NULL,
  `idexpedicion` varchar(20) NOT NULL,
  `contactoremdireccion` varchar(100) NOT NULL,
  `contactoremlocalidad` varchar(45) NOT NULL,
  `contactoremcodigopostal` varchar(15) NOT NULL,
  `contactoremprovincia` varchar(45) NOT NULL,
  `contactorempais` varchar(45) NOT NULL,
  `franquiciadestcod` varchar(10) NOT NULL,
  `estado` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`clientecod`,`msgcod`,`hilocod`,`perfilproductocod`,`msgfalta`),
  KEY `fk_mensajes_impresion_cliente` (`clientecod`),
  CONSTRAINT `fk_mensajes_impresion_cliente` FOREIGN KEY (`clientecod`) REFERENCES `clientes` (`clientecod`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=43602 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mensajes_tabla`
--

DROP TABLE IF EXISTS `mensajes_tabla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mensajes_tabla` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clientecod` int(10) unsigned NOT NULL DEFAULT '0',
  `estadoflujo` int(2) NOT NULL DEFAULT '0',
  `testautorizacion` varchar(50) DEFAULT NULL,
  `hilocod` int(10) unsigned NOT NULL DEFAULT '0',
  `codigoestadoredaccion` int(10) unsigned DEFAULT NULL,
  `msgcod` int(10) unsigned DEFAULT NULL,
  `perfilproductocod` int(10) unsigned DEFAULT NULL,
  `msgpadre` int(10) unsigned DEFAULT NULL,
  `usuariocod` int(10) unsigned DEFAULT NULL,
  `msgcod_agrupacion` int(10) unsigned DEFAULT NULL,
  `lotecod` bigint(20) unsigned DEFAULT NULL,
  `agreeppal` bigint(20) unsigned DEFAULT NULL,
  `plantillacod` bigint(20) unsigned DEFAULT NULL,
  `avisovigenciacod` bigint(20) unsigned DEFAULT NULL,
  `avisoentregamsg` longtext,
  `msgfalta` varchar(255) DEFAULT NULL,
  `msgasunto` longtext,
  `msgcontenido` longtext,
  `msgmd5enviado` longtext,
  `msgmaildestino` longtext,
  `msgnomdestinatario` longtext,
  `msgleido` smallint(6) DEFAULT NULL,
  `msgmailorigen` longtext,
  `msgestado` bigint(20) unsigned DEFAULT NULL,
  `msgbotonon` longtext,
  `msgbotonoff` longtext,
  `msgcontenidocondicion` longtext,
  `msgcheckbox` longtext,
  `opcopiasenvio` bigint(20) unsigned DEFAULT NULL,
  `borradoragreecod` bigint(20) unsigned DEFAULT NULL,
  `plantillalotecod` bigint(20) unsigned DEFAULT NULL,
  `ultmodusuario` bigint(20) unsigned DEFAULT NULL,
  `ultmodfecha` varchar(255) DEFAULT NULL,
  `borradorcod` bigint(20) unsigned DEFAULT NULL,
  `msgmailentrega` longtext,
  `archcodeident` longtext,
  `adjuntossubidos` longtext,
  `permitirrespuesta` smallint(5) unsigned DEFAULT NULL,
  `permitirrespuestaadj` smallint(5) unsigned DEFAULT NULL,
  `selborradoragreecod` bigint(20) unsigned DEFAULT NULL,
  `permitirrespuestaencorreo` smallint(5) unsigned DEFAULT NULL,
  `permitircompulsa` smallint(5) unsigned DEFAULT NULL,
  `permitircompulsaresp` smallint(5) unsigned DEFAULT NULL,
  `permitiraceptacionvsrechazo` smallint(5) unsigned DEFAULT NULL,
  `permitircondicionado` smallint(5) unsigned DEFAULT NULL,
  `lotepadre` bigint(20) unsigned DEFAULT NULL,
  `permitirrequiererespuesta` smallint(5) unsigned DEFAULT NULL,
  `permitirrequiererespuestaafirmativa` smallint(5) unsigned DEFAULT NULL,
  `codigotipohilo` bigint(20) unsigned DEFAULT NULL,
  `permitircontenidodirectoint` smallint(5) unsigned DEFAULT NULL,
  `archcodeborrador` longtext,
  `permitirreiterarentrega` bigint(20) unsigned DEFAULT NULL,
  `paras` longtext,
  `copiaalremitente` bigint(20) unsigned DEFAULT NULL,
  `fechaenvioprogramado` varchar(255) DEFAULT NULL,
  `permitircorreccionenlinea` smallint(5) unsigned DEFAULT NULL,
  `enviosincorreccionenlinea` smallint(5) unsigned DEFAULT NULL,
  `permitirpaypal` bigint(20) unsigned DEFAULT NULL,
  `ipenvio` longtext,
  `soenvio` longtext,
  `navegador` longtext,
  `agenteweb` longtext,
  `msgfaltanum` bigint(20) unsigned DEFAULT NULL,
  `permitirbasedatos` smallint(5) unsigned DEFAULT NULL,
  `permitirbasedatoscontactoscontenido` smallint(5) unsigned DEFAULT NULL,
  `permitirbasedatosxml` smallint(5) unsigned DEFAULT NULL,
  `permitirbasedatosfincas` smallint(5) unsigned DEFAULT NULL,
  `factura_concepto` longtext,
  `factura_moneda` longtext,
  `factura_item_cantidad` longtext,
  `factura_item_nombre` longtext,
  `factura_item_precio` longtext,
  `factura_item_total` longtext,
  `factura_total` bigint(20) unsigned DEFAULT NULL,
  `mensajecontactocod` bigint(20) unsigned DEFAULT NULL,
  `borradoresagreenombre` longtext,
  `arraymsgcod_xml` longtext,
  `rutaxml` longtext,
  `smtpserver` longtext,
  `smtpuser` longtext,
  `smtppass` longtext,
  `smtpport` longtext,
  `idproceso` longtext,
  `pesofunc` longtext,
  `pesoarch` longtext,
  `pesoarch_consumo` longtext,
  `codigoaccesoverifyremitente` char(7) DEFAULT NULL,
  `codigoaccesoverifydestinatario` char(7) DEFAULT NULL,
  `codigoaccesoverifyfedatarioremitente` char(7) DEFAULT NULL,
  `codigoaccesoverifyfedatariodestinatario` char(7) DEFAULT NULL,
  `enviarsoloverificados` smallint(5) unsigned DEFAULT NULL,
  `generar_informe_lote` smallint(5) unsigned DEFAULT NULL,
  `idiomacod` varchar(12) DEFAULT NULL,
  `codigoordendescargaadjuntosfirma` smallint(5) unsigned DEFAULT NULL,
  `testigocod` int(10) unsigned DEFAULT NULL,
  `novalido` int(11) DEFAULT NULL,
  `descripcion` longtext,
  PRIMARY KEY (`id`),
  KEY `IX_clientecod` (`clientecod`),
  KEY `IX_novalido` (`novalido`),
  KEY `IX_codigoestadoredaccion` (`codigoestadoredaccion`),
  KEY `IX_multiple` (`clientecod`,`hilocod`,`perfilproductocod`,`usuariocod`)
) ENGINE=InnoDB AUTO_INCREMENT=568509 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `monedas`
--

DROP TABLE IF EXISTS `monedas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monedas` (
  `monedacod` varchar(3) NOT NULL,
  `monedanombre` varchar(254) NOT NULL,
  `monedaestado` tinyint(4) NOT NULL DEFAULT '10',
  PRIMARY KEY (`monedacod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `notificaciones_correos`
--

DROP TABLE IF EXISTS `notificaciones_correos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notificaciones_correos` (
  `notificacioncorreocod` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(225) NOT NULL,
  `idiomacod` varchar(3) NOT NULL,
  `asunto` varchar(255) NOT NULL,
  `cuerpoclientehtml` longtext NOT NULL,
  `cuerpoclientetxt` longtext NOT NULL,
  `cuerpoadminhtml` longtext NOT NULL,
  `cuerpoadmintxt` longtext NOT NULL,
  `estado` tinyint(4) NOT NULL,
  `operadorcod` int(10) NOT NULL,
  `tiponotificacion` varchar(20) NOT NULL,
  PRIMARY KEY (`notificacioncorreocod`),
  UNIQUE KEY `nombre` (`nombre`,`idiomacod`,`operadorcod`)
) ENGINE=InnoDB AUTO_INCREMENT=329 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `operador_costes`
--

DROP TABLE IF EXISTS `operador_costes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operador_costes` (
  `operadorcostescod` int(10) NOT NULL AUTO_INCREMENT,
  `operadorcod` int(10) NOT NULL,
  `serviciotag` varchar(30) NOT NULL,
  `servicionombre` varchar(250) NOT NULL,
  `serviciocoste` float NOT NULL,
  `costesestado` tinyint(4) NOT NULL,
  PRIMARY KEY (`operadorcostescod`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `operadores`
--

DROP TABLE IF EXISTS `operadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operadores` (
  `operadorcod` int(10) NOT NULL AUTO_INCREMENT,
  `openombre` varchar(255) NOT NULL,
  `opeapellidos` varchar(255) NOT NULL,
  `opeempresa` varchar(255) NOT NULL,
  `opecifnif` varchar(20) NOT NULL,
  `opecontacto` varchar(45) NOT NULL,
  `opedireccion` varchar(125) NOT NULL,
  `opelocalidad` varchar(30) NOT NULL,
  `opeprovincia` varchar(30) NOT NULL,
  `opecodpos` varchar(15) NOT NULL,
  `paiscod` int(10) NOT NULL,
  `opetel` varchar(20) NOT NULL,
  `opetelinternacional` varchar(20) NOT NULL,
  `opefax` varchar(20) NOT NULL,
  `opeemail` varchar(45) NOT NULL,
  `opeemailnotif` varchar(45) NOT NULL,
  `opeemailpaypal` varchar(45) DEFAULT NULL,
  `partnercod` int(10) NOT NULL DEFAULT '0',
  `partnertipo` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1: Partner, tiene crédito; 2: Partner Facturador: Emite factura por uso',
  `formapagocod` smallint(4) unsigned NOT NULL DEFAULT '0',
  `promocod` int(10) NOT NULL DEFAULT '0',
  `opeentbancaria` varchar(45) NOT NULL,
  `openumcuenta` varchar(45) NOT NULL,
  `opetitularcta` varchar(120) NOT NULL,
  `opeestado` tinyint(4) NOT NULL DEFAULT '10',
  `opecarpetaraiz` varchar(255) NOT NULL DEFAULT '',
  `opelogoprincipal` varchar(500) NOT NULL,
  `opelogorhino` varchar(500) NOT NULL,
  `opelogogestionrhino` varchar(500) NOT NULL,
  `opefondotickets` varchar(500) NOT NULL,
  `opefondocfsdata` varchar(500) NOT NULL,
  `opeiconocfsdata` varchar(500) NOT NULL,
  `opehtmlcabecera` varchar(500) NOT NULL,
  `opehtmlfondomail` varchar(500) NOT NULL,
  `opehtmlveremail` varchar(500) NOT NULL,
  `title_sistema` varchar(150) DEFAULT NULL,
  `dominioprincipalcod` int(11) unsigned NOT NULL,
  `smsurl` varchar(50) DEFAULT NULL,
  `smsnombre` varchar(100) DEFAULT NULL,
  `abreviatura` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`operadorcod`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `operadores_creditos`
--

DROP TABLE IF EXISTS `operadores_creditos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operadores_creditos` (
  `operadorcreditocod` int(10) NOT NULL AUTO_INCREMENT,
  `operadorcod` int(10) NOT NULL,
  `perfilproductocod` int(10) NOT NULL,
  `opeccontratadopeso` int(10) NOT NULL,
  `opecenviadopeso` float(12,4) NOT NULL,
  `opecenviadoenvios` int(10) NOT NULL,
  `opecfechacad` date NOT NULL,
  `opecestado` smallint(4) NOT NULL,
  PRIMARY KEY (`operadorcreditocod`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `operadores_localidades`
--

DROP TABLE IF EXISTS `operadores_localidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operadores_localidades` (
  `operadorcod` int(11) NOT NULL,
  `localidad` varchar(45) NOT NULL,
  PRIMARY KEY (`operadorcod`,`localidad`),
  CONSTRAINT `fk_operadores_localidades_operador` FOREIGN KEY (`operadorcod`) REFERENCES `operadores` (`operadorcod`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `operadores_notificaciones`
--

DROP TABLE IF EXISTS `operadores_notificaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operadores_notificaciones` (
  `operadornotificacioncod` int(10) NOT NULL AUTO_INCREMENT,
  `operadorcod` int(10) DEFAULT NULL,
  `ocnombre` varchar(255) DEFAULT '',
  `idiomacod` varchar(3) DEFAULT 'es',
  `octexto` longtext NOT NULL,
  PRIMARY KEY (`operadornotificacioncod`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `operadores_perfiles_productos`
--

DROP TABLE IF EXISTS `operadores_perfiles_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operadores_perfiles_productos` (
  `operadorcod` int(10) NOT NULL,
  `perfilproductocod` int(10) NOT NULL,
  PRIMARY KEY (`operadorcod`,`perfilproductocod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `operadores_provincias`
--

DROP TABLE IF EXISTS `operadores_provincias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operadores_provincias` (
  `operadorcod` int(11) NOT NULL,
  `localidad` varchar(45) NOT NULL,
  PRIMARY KEY (`operadorcod`,`localidad`),
  CONSTRAINT `fk_operadores_provincias_operador` FOREIGN KEY (`operadorcod`) REFERENCES `operadores` (`operadorcod`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `opt_mrw_rutas`
--

DROP TABLE IF EXISTS `opt_mrw_rutas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opt_mrw_rutas` (
  `cp` varchar(5) NOT NULL,
  `poblacion` varchar(35) NOT NULL,
  `codigofranquiciadestino` varchar(5) NOT NULL,
  `nombrefranquiciadestino` varchar(35) NOT NULL,
  `codigoruta` varchar(2) NOT NULL,
  `codigosacaespana` varchar(35) NOT NULL,
  `codigosacaportugal` varchar(35) NOT NULL,
  `cpc` varchar(2) NOT NULL,
  PRIMARY KEY (`cp`,`poblacion`,`codigofranquiciadestino`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `otpt_otp_configuracion`
--

DROP TABLE IF EXISTS `otpt_otp_configuracion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `otpt_otp_configuracion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo_otp` smallint(6) DEFAULT NULL COMMENT 'Codigo que indica sobre que aplica el OTP. Para empezar tendremos:\n10 -> lectura\n20 -> aceptovsrechazo\n30 -> firmabiometrica\n40 -> formularios adpc',
  `reenvios_restantes` smallint(6) DEFAULT '3' COMMENT 'Numero de veces que se puede reenviar la clave',
  `intentos_autenticacion_restantes` smallint(6) DEFAULT '3' COMMENT 'Numero de intentos de los que se dispone para introducir la clave',
  `fecha_ultimo_envio_otp_gmt0` datetime DEFAULT NULL COMMENT 'Ultima fecha de envío de las claves OTP',
  `intentos_maximos_autenticacion_permitidos` smallint(6) DEFAULT NULL COMMENT 'Numero máximo de intentos de autenticacion que se permitiran cada vez que se envién las claves OTP',
  `desbloqueado` tinyint(1) DEFAULT '0' COMMENT 'Una vez introducida la password correctamente no se vuelven a solicitar. Este campo indica si está desbloqueado o no.',
  `otp_destinatario` varchar(255) DEFAULT NULL,
  `akc` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1357 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `otpt_otp_password`
--

DROP TABLE IF EXISTS `otpt_otp_password`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `otpt_otp_password` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `otp_configuracion_id` int(11) NOT NULL,
  `fecha_envio_gmt0` datetime DEFAULT NULL COMMENT 'Coincide con la fecha de creación',
  `fecha_caducidad_gmt0` datetime DEFAULT NULL COMMENT 'Fecha hasta la que es válida la password',
  `password` varchar(50) NOT NULL,
  `activo` tinyint(1) DEFAULT '0' COMMENT 'Indica si es una clave activa',
  `intentos_restantes_autenticacion` smallint(6) DEFAULT '3' COMMENT 'Número de intentos de los que se dispone para introducir correctamente la password',
  `fecha_ultimo_intento_autenticacion_gmt0` datetime DEFAULT NULL COMMENT 'Ultima fecha en la que se envió la autentificación',
  PRIMARY KEY (`id`),
  KEY `fk_otpt_otp_password_1_idx` (`otp_configuracion_id`),
  CONSTRAINT `fk_otpt_otp_password_1` FOREIGN KEY (`otp_configuracion_id`) REFERENCES `otpt_otp_configuracion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=905 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `packs_detalle`
--

DROP TABLE IF EXISTS `packs_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `packs_detalle` (
  `packdetallecod` int(10) NOT NULL AUTO_INCREMENT,
  `packcontratadocod` int(10) NOT NULL,
  `clientecod` int(10) NOT NULL,
  `tipolinea` char(1) NOT NULL,
  `servicio` varchar(512) NOT NULL,
  `cantidad` int(10) NOT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `importe` decimal(10,2) DEFAULT NULL,
  `impuesto` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `servicio_tag` varchar(40) NOT NULL,
  `hilocod` int(10) unsigned DEFAULT NULL,
  `perfilproductocod` int(10) unsigned DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `operadorcod` int(11) NOT NULL,
  `gestorcod` int(11) NOT NULL,
  `usuariocod` int(11) NOT NULL,
  `tarifacod` int(11) NOT NULL,
  `nivelcod` int(11) NOT NULL,
  `facturacod` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`packdetallecod`),
  KEY `index2` (`clientecod`),
  KEY `idx_packs_detalle1` (`clientecod`,`usuariocod`),
  KEY `index4` (`clientecod`,`usuariocod`,`servicio_tag`),
  KEY `index5` (`clientecod`,`usuariocod`,`hilocod`),
  KEY `idx_packcontratado_clientecod` (`packcontratadocod`,`clientecod`),
  KEY `idx_cliente_factura` (`clientecod`,`facturacod`),
  KEY `idx_serviciotag_operador` (`servicio_tag`,`operadorcod`),
  KEY `idx_packs_detalle_fecha` (`fecha`)
) ENGINE=InnoDB AUTO_INCREMENT=18158788 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `packs_detalle_de_desarrollo`
--

DROP TABLE IF EXISTS `packs_detalle_de_desarrollo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `packs_detalle_de_desarrollo` (
  `packdetallecod` int(10) NOT NULL AUTO_INCREMENT,
  `packcontratadocod` int(10) NOT NULL,
  `clientecod` int(10) NOT NULL,
  `tipolinea` char(1) NOT NULL,
  `servicio` varchar(512) NOT NULL,
  `cantidad` int(10) NOT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `importe` decimal(10,2) DEFAULT NULL,
  `impuesto` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `servicio_tag` varchar(40) NOT NULL,
  `hilocod` int(10) unsigned DEFAULT NULL,
  `perfilproductocod` int(10) unsigned DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `operadorcod` int(11) NOT NULL,
  `gestorcod` int(11) NOT NULL,
  `usuariocod` int(11) NOT NULL,
  `tarifacod` int(11) NOT NULL,
  `nivelcod` int(11) NOT NULL,
  `facturacod` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`packdetallecod`),
  KEY `index2` (`clientecod`),
  KEY `idx_packs_detalle1` (`clientecod`,`usuariocod`),
  KEY `index4` (`clientecod`,`usuariocod`,`servicio_tag`),
  KEY `index5` (`clientecod`,`usuariocod`,`hilocod`),
  KEY `idx_packcontratado_clientecod` (`packcontratadocod`,`clientecod`),
  KEY `idx_cliente_factura` (`clientecod`,`facturacod`),
  KEY `idx_serviciotag_operador` (`servicio_tag`,`operadorcod`)
) ENGINE=InnoDB AUTO_INCREMENT=13881874 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `paginas`
--

DROP TABLE IF EXISTS `paginas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paginas` (
  `paginacod` int(10) NOT NULL AUTO_INCREMENT,
  `paginanombre` varchar(254) NOT NULL,
  `carpeta` varchar(254) NOT NULL,
  `md5pagina` varchar(250) NOT NULL,
  `md5paginapublica` varchar(250) NOT NULL,
  `fechaalta` datetime NOT NULL,
  `entorno` varchar(50) NOT NULL,
  PRIMARY KEY (`paginacod`),
  KEY `paginas_alt` (`paginanombre`,`carpeta`,`paginacod`)
) ENGINE=InnoDB AUTO_INCREMENT=557 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `paginas_grupos`
--

DROP TABLE IF EXISTS `paginas_grupos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paginas_grupos` (
  `paggrupocod` int(11) NOT NULL AUTO_INCREMENT,
  `paggruponombre` varchar(100) NOT NULL,
  `paggrupoconjunto` varchar(90) NOT NULL,
  `pagorden` varchar(45) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paggrupocod`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `paginas_permisos`
--

DROP TABLE IF EXISTS `paginas_permisos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paginas_permisos` (
  `permisopaginacod` int(10) NOT NULL AUTO_INCREMENT,
  `rolcod` int(10) NOT NULL,
  `usuarioemail` varchar(254) NOT NULL,
  `paginacod` int(10) NOT NULL,
  `estado` tinyint(2) NOT NULL,
  PRIMARY KEY (`permisopaginacod`),
  KEY `paginas_permisos_alt` (`rolcod`,`paginacod`,`estado`,`permisopaginacod`)
) ENGINE=InnoDB AUTO_INCREMENT=6330 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `paises`
--

DROP TABLE IF EXISTS `paises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paises` (
  `paiscod` smallint(4) NOT NULL AUTO_INCREMENT,
  `paisnombre` varchar(45) NOT NULL,
  `paissiglas` varchar(2) NOT NULL,
  `impuestonombre` varchar(50) NOT NULL,
  `impuestovalor` int(4) NOT NULL DEFAULT '0',
  `paisestado` smallint(4) NOT NULL DEFAULT '0' COMMENT 'valores: activo: 10, inactivo: 0',
  PRIMARY KEY (`paiscod`)
) ENGINE=InnoDB AUTO_INCREMENT=254 DEFAULT CHARSET=utf8 COMMENT='pa?es, identifica pa? con un c?igo';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patt_destinatario`
--

DROP TABLE IF EXISTS `patt_destinatario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patt_destinatario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grupo_destinatarios_id` int(11) NOT NULL,
  `codigo_incluir_destinatario` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_patt_destinatario_patt_grupo_destinatarios1_idx` (`grupo_destinatarios_id`),
  CONSTRAINT `fk_patt_destinatario_patt_grupo_destinatarios1` FOREIGN KEY (`grupo_destinatarios_id`) REFERENCES `patt_grupo_destinatarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=60237 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patt_destinatario_carta`
--

DROP TABLE IF EXISTS `patt_destinatario_carta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patt_destinatario_carta` (
  `destinatario_id` int(11) NOT NULL,
  `msgnomdestinatario` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`destinatario_id`),
  CONSTRAINT `fk_patt_destinatario_carta_patt_destinatario1` FOREIGN KEY (`destinatario_id`) REFERENCES `patt_destinatario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patt_destinatario_email`
--

DROP TABLE IF EXISTS `patt_destinatario_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patt_destinatario_email` (
  `destinatario_id` int(11) NOT NULL,
  `msgmaildestino` varchar(255) NOT NULL,
  `msgnomdestinatario` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`destinatario_id`),
  KEY `fk_patt_lote_parte_destinatario_email1_idx` (`destinatario_id`),
  CONSTRAINT `fk_patt_destinatario_email_patt_destinatario1` FOREIGN KEY (`destinatario_id`) REFERENCES `patt_destinatario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patt_destinatario_impresion`
--

DROP TABLE IF EXISTS `patt_destinatario_impresion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patt_destinatario_impresion` (
  `destinatario_id` int(11) NOT NULL,
  `texto_nombre_destinatario` varchar(100) NOT NULL,
  `texto_direccion_destinatario` varchar(100) NOT NULL,
  `texto_localidad_destinatario` varchar(45) NOT NULL,
  `texto_codigo_postal_destinatario` varchar(15) NOT NULL,
  `texto_provincia_destinatario` varchar(45) NOT NULL,
  `texto_pais_destinatario` varchar(45) NOT NULL,
  `texto_documento_identificativo_destinatario` varchar(20) DEFAULT NULL,
  `codigo_acuse_recibo` smallint(6) NOT NULL,
  `codigo_certificacion_contenido` smallint(6) NOT NULL,
  PRIMARY KEY (`destinatario_id`),
  CONSTRAINT `fk_patt_destinatario_postal_patt_destinatario1` FOREIGN KEY (`destinatario_id`) REFERENCES `patt_destinatario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patt_destinatario_otp`
--

DROP TABLE IF EXISTS `patt_destinatario_otp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patt_destinatario_otp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `destinatario_id` int(11) DEFAULT NULL,
  `otp_destinatario` varchar(255) DEFAULT NULL,
  `codigo_otp` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_patt_destinatario_otp_UNIQUE` (`id`,`destinatario_id`),
  KEY `fk_patt_destinatario_otp_1_idx` (`destinatario_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patt_destinatario_sms`
--

DROP TABLE IF EXISTS `patt_destinatario_sms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patt_destinatario_sms` (
  `destinatario_id` int(11) NOT NULL,
  `texto_telefono_remitente` varchar(20) DEFAULT NULL,
  `texto_telefono_destinatario` varchar(20) NOT NULL,
  PRIMARY KEY (`destinatario_id`),
  CONSTRAINT `fk_patt_destinatario_sms_patt_destinatario1` FOREIGN KEY (`destinatario_id`) REFERENCES `patt_destinatario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patt_destinatario_validacion`
--

DROP TABLE IF EXISTS `patt_destinatario_validacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patt_destinatario_validacion` (
  `destinatario_id` int(11) NOT NULL,
  `codigo_estado_validacion` smallint(6) NOT NULL,
  `fecha_estado_validacion_gmt0` datetime NOT NULL,
  `codigo_tipo_validacion_email` smallint(6) DEFAULT NULL,
  `codigo_tipo_validacion_impresion` smallint(6) DEFAULT NULL,
  `codigo_tipo_validacion_sms` smallint(6) DEFAULT NULL,
  `codigo_tipo_validacion_carta` smallint(6) DEFAULT NULL,
  `codigo_resultado_validacion_email` smallint(6) DEFAULT NULL,
  `codigo_resultado_validacion_impresion` smallint(6) DEFAULT NULL,
  `codigo_resultado_validacion_sms` smallint(6) DEFAULT NULL,
  `codigo_resultado_validacion_carta` smallint(6) DEFAULT NULL,
  `codigo_estado_proceso` smallint(6) DEFAULT NULL,
  `numero_proceso_batch` int(11) DEFAULT NULL,
  `fecha_estado_proceso_gmt0` datetime DEFAULT NULL,
  `fecha_registro_gmt0` datetime DEFAULT NULL,
  PRIMARY KEY (`destinatario_id`),
  KEY `fk_patt_destinatario_validacion_patt_destinatario_idx` (`destinatario_id`),
  KEY `IX_codigo_estado_proceso` (`codigo_estado_proceso`),
  CONSTRAINT `fk_destinatario_patt_destinatario_validacion1` FOREIGN KEY (`destinatario_id`) REFERENCES `patt_destinatario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patt_destinatario_validacion_otp`
--

DROP TABLE IF EXISTS `patt_destinatario_validacion_otp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patt_destinatario_validacion_otp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `destinatario_id` int(11) DEFAULT NULL,
  `destinatario_otp_id` int(11) DEFAULT NULL,
  `codigo_tipo_validacion` smallint(6) DEFAULT NULL,
  `codigo_resultado_validacion` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `destinatario_id_UNIQUE` (`destinatario_id`,`destinatario_otp_id`),
  KEY `fk_patt_destinatario_validacion_otp_1_idx` (`destinatario_otp_id`),
  CONSTRAINT `fk_patt_destinatario_validacion_otp_1` FOREIGN KEY (`destinatario_otp_id`) REFERENCES `patt_destinatario_otp` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patt_destinatario_variable_combinar`
--

DROP TABLE IF EXISTS `patt_destinatario_variable_combinar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patt_destinatario_variable_combinar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `destinatario_id` int(11) NOT NULL,
  `texto_nombre_variable` varchar(255) NOT NULL,
  `valor_variable` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_lote_destinatario_variable` (`destinatario_id`,`texto_nombre_variable`) USING BTREE,
  KEY `fk_patt_lote_parte_destinatario_variable_combinar1_idx` (`destinatario_id`),
  CONSTRAINT `fk_destinatario_variable_combinar1` FOREIGN KEY (`destinatario_id`) REFERENCES `patt_destinatario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=221749 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patt_email`
--

DROP TABLE IF EXISTS `patt_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patt_email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mail_from` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `return_path` varchar(255) DEFAULT NULL,
  `reply_to` varchar(255) DEFAULT NULL,
  `from_email` varchar(255) NOT NULL,
  `from_name` varchar(255) DEFAULT NULL,
  `to_email` varchar(255) NOT NULL,
  `to_name` varchar(255) DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  `body_plain_text` longtext,
  `body_html` longtext,
  `codigo_charset` varchar(12) NOT NULL,
  `host` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `port` smallint(6) NOT NULL DEFAULT '25',
  `encryption` varchar(45) DEFAULT NULL,
  `auth_mode` varchar(45) DEFAULT NULL,
  `date_creation` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `codigo_propietario_smtp` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=168079 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patt_email_adjunto`
--

DROP TABLE IF EXISTS `patt_email_adjunto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patt_email_adjunto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email_id` int(11) NOT NULL,
  `archnom` varchar(250) NOT NULL,
  `archubic` varchar(250) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_email_id` (`email_id`),
  CONSTRAINT `fk_patt_email_adjunto_patt_email1` FOREIGN KEY (`email_id`) REFERENCES `patt_email` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=619 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patt_email_mta_log`
--

DROP TABLE IF EXISTS `patt_email_mta_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patt_email_mta_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email_id` int(11) NOT NULL,
  `referencia_externa` varchar(255) NOT NULL,
  `fecha_registro_gmt0` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `log_dump` varchar(1024) DEFAULT NULL,
  `codigo_libreria_mailer` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_patt_email_log_patt_emails1_idx` (`email_id`),
  KEY `index3` (`referencia_externa`),
  CONSTRAINT `fk_patt_email_log_patt_email1` FOREIGN KEY (`email_id`) REFERENCES `patt_email` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=272211 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patt_email_tarea`
--

DROP TABLE IF EXISTS `patt_email_tarea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patt_email_tarea` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hilo_tarea_id` int(11) DEFAULT NULL,
  `email_id` int(11) NOT NULL,
  `operadorcod` int(11) DEFAULT NULL,
  `gestorcod` int(11) DEFAULT NULL,
  `clientecod` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `codigo_contenido_email` smallint(6) DEFAULT NULL,
  `fecha_registro_gmt0` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_envio_prevista_gmt0` datetime NOT NULL,
  `fecha_envio_real_gmt0` datetime DEFAULT NULL,
  `codigo_estado_tarea` smallint(6) NOT NULL,
  `cantidad_intentos` smallint(6) NOT NULL DEFAULT '0',
  `numero_proceso_batch` int(11) DEFAULT NULL,
  `texto_comentario` varchar(1024) DEFAULT NULL,
  `codigo_propietario_smtp_utilizado` smallint(6) DEFAULT NULL,
  `codigo_prioridad` smallint(6) NOT NULL DEFAULT '5',
  `codigo_canal_proceso` smallint(6) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `IX_fechaavisoprevista` (`fecha_envio_prevista_gmt0`),
  KEY `fk_hilo_email_aviso_email1` (`email_id`),
  KEY `fk_patt_tarea_email_patt_hilo_tarea1_idx` (`hilo_tarea_id`),
  KEY `fk_patt_email_tarea_1_idx` (`clientecod`),
  KEY `fk_patt_email_tarea_operadores_idx` (`operadorcod`),
  KEY `fk_patt_email_tarea_1_idx1` (`gestorcod`),
  KEY `fk_patt_email_tarea_1_idx2` (`usuario_id`),
  KEY `IX_fecha_envio_real_gmt0` (`fecha_envio_real_gmt0`),
  CONSTRAINT `fk_patt_email_tarea_clientes1` FOREIGN KEY (`clientecod`) REFERENCES `clientes` (`clientecod`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_patt_email_tarea_clnt_usuario1` FOREIGN KEY (`usuario_id`) REFERENCES `clnt_usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_patt_email_tarea_franquicias1` FOREIGN KEY (`gestorcod`) REFERENCES `franquicias` (`gestorcod`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_patt_email_tarea_operadores1` FOREIGN KEY (`operadorcod`) REFERENCES `operadores` (`operadorcod`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_patt_email_tarea_patt_email1` FOREIGN KEY (`email_id`) REFERENCES `patt_email` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_patt_email_tarea_patt_hilo_tarea1` FOREIGN KEY (`hilo_tarea_id`) REFERENCES `patt_hilo_tarea` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=168078 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patt_grupo_destinatarios`
--

DROP TABLE IF EXISTS `patt_grupo_destinatarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patt_grupo_destinatarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=150426 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patt_grupo_destinatarios_validacion`
--

DROP TABLE IF EXISTS `patt_grupo_destinatarios_validacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patt_grupo_destinatarios_validacion` (
  `grupo_destinatarios_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `codigo_estado_proceso` smallint(6) DEFAULT NULL,
  `codigo_canal_proceso` smallint(6) DEFAULT NULL,
  `codigo_prioridad` smallint(6) DEFAULT NULL,
  `fecha_registro_gmt0` datetime DEFAULT NULL,
  `ruta_original_fichero` varchar(512) DEFAULT NULL,
  `tamano_fichero_kbs` decimal(9,3) DEFAULT NULL,
  `fecha_fichero` datetime DEFAULT NULL,
  `fecha_estado_proceso_gmt0` datetime DEFAULT NULL,
  PRIMARY KEY (`grupo_destinatarios_id`),
  KEY `fk_patt_grupo_destinatarios_validacion_2_idx` (`usuario_id`),
  CONSTRAINT `fk_patt_grupo_destinatarios_validacion_1` FOREIGN KEY (`grupo_destinatarios_id`) REFERENCES `patt_grupo_destinatarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_patt_grupo_destinatarios_validacion_2` FOREIGN KEY (`usuario_id`) REFERENCES `clnt_usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patt_hilo_black_pen`
--

DROP TABLE IF EXISTS `patt_hilo_black_pen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patt_hilo_black_pen` (
  `hilo_id` int(11) NOT NULL,
  `modelo_hoja_id` int(11) DEFAULT NULL,
  `dispositivo_id` int(11) DEFAULT NULL,
  `identificador_externo` varchar(255) DEFAULT NULL COMMENT 'Identificador externo que nos envía el cliente que ha integrado con nosotros para poder desde su lado identificar el envío',
  `email_firmante` varchar(255) NOT NULL,
  `fecha_actualizacion_gmt0` datetime DEFAULT NULL,
  PRIMARY KEY (`hilo_id`),
  KEY `fk_patt_hilo_black_pen_2_idx` (`modelo_hoja_id`),
  KEY `fk_patt_hilo_black_pen_3_idx` (`dispositivo_id`),
  CONSTRAINT `fk_patt_hilo_black_pen_1` FOREIGN KEY (`hilo_id`) REFERENCES `patt_hilos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_patt_hilo_black_pen_2` FOREIGN KEY (`modelo_hoja_id`) REFERENCES `lbpt_modelo_hoja` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_patt_hilo_black_pen_3` FOREIGN KEY (`dispositivo_id`) REFERENCES `lbpt_dispositivo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patt_hilo_otp_configuracion`
--

DROP TABLE IF EXISTS `patt_hilo_otp_configuracion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patt_hilo_otp_configuracion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hilo_id` int(11) DEFAULT NULL,
  `otp_configuracion_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1406 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patt_hilo_tarea`
--

DROP TABLE IF EXISTS `patt_hilo_tarea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patt_hilo_tarea` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hilo_id` int(11) NOT NULL,
  `hilo_tarea_anterior_id` int(11) DEFAULT NULL,
  `codigo_tipo_tarea_hilo` smallint(6) NOT NULL,
  `cantidad_dias_desde_tarea_anterior` smallint(6) NOT NULL,
  `fecha_proceso_prevista_inicial_gmt0` datetime NOT NULL,
  `fecha_proceso_prevista_actual_gmt0` datetime NOT NULL,
  `fecha_proceso_real_gmt0` datetime DEFAULT NULL,
  `codigo_estado_tarea` smallint(6) NOT NULL,
  `numero_proceso_batch` int(11) DEFAULT NULL,
  `codigo_prioridad` smallint(6) NOT NULL DEFAULT '5',
  `codigo_canal_proceso` smallint(6) NOT NULL DEFAULT '1',
  `clave_entidad_externa` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_patt_tarea_rehusar_patt_hilos1_idx` (`hilo_id`),
  KEY `index3` (`fecha_proceso_prevista_actual_gmt0`),
  KEY `fk_patt_hilos_tarea_1_idx` (`hilo_tarea_anterior_id`),
  KEY `ix_fecha_real_tipo` (`codigo_tipo_tarea_hilo`,`fecha_proceso_real_gmt0`),
  CONSTRAINT `fk_patt_hilos_tarea_patt_hilos_tarea1` FOREIGN KEY (`hilo_tarea_anterior_id`) REFERENCES `patt_hilo_tarea` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_patt_tarea_rehusar_patt_hilos1` FOREIGN KEY (`hilo_id`) REFERENCES `patt_hilos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=293458 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patt_hilos`
--

DROP TABLE IF EXISTS `patt_hilos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patt_hilos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_id` int(11) NOT NULL,
  `hilocod` int(10) NOT NULL,
  `perfilproductocod` int(11) NOT NULL,
  `plantillacod` int(11) DEFAULT NULL,
  `hilofalta` datetime DEFAULT NULL,
  `codigoestadoredaccion` smallint(6) DEFAULT '0',
  `hilocfscode` varchar(50) DEFAULT NULL,
  `ultmodusuario` int(11) DEFAULT NULL,
  `ultmodfecha` datetime DEFAULT NULL,
  `hilocarpeta` int(10) unsigned DEFAULT NULL,
  `hiloestadoarchivado` int(2) unsigned DEFAULT NULL,
  `funcionalidades` varchar(500) DEFAULT NULL,
  `lotecod` int(11) DEFAULT NULL,
  `testautorizacion` varchar(50) DEFAULT NULL,
  `msgasunto` varchar(600) DEFAULT NULL,
  `msgmd5enviado` varchar(100) DEFAULT NULL,
  `msgleido` smallint(6) NOT NULL DEFAULT '10',
  `fechaenvioprogramado` datetime DEFAULT NULL,
  `mensajecontactocod` int(11) DEFAULT NULL,
  `idproceso` varchar(45) DEFAULT NULL,
  `pesofunc` varchar(45) DEFAULT NULL,
  `pesoarch` varchar(45) DEFAULT NULL,
  `pesoarch_consumo` varchar(45) DEFAULT NULL,
  `codigoestadoflujo` tinyint(4) DEFAULT NULL,
  `fechalimiteaccesodestinatariogmt0` datetime DEFAULT NULL,
  `fechalimiterespuestagmt0` datetime DEFAULT NULL,
  `fechalimiteaceptorechazogmt0` datetime DEFAULT NULL,
  `fechalimitepagogmt0` datetime DEFAULT NULL,
  `fechafindisponiblegmt0` datetime DEFAULT NULL,
  `tiempolimiteaceptorechazodesdelectura` int(11) DEFAULT NULL COMMENT 'Tiempo límite para poder aceptar / rechazar un mensaje con agree, expresado en minutos.',
  `passlectura` varchar(45) DEFAULT NULL,
  `permitirbasedatos` smallint(6) DEFAULT NULL,
  `permitirbasedatoscontactoscontenido` smallint(6) DEFAULT NULL,
  `permitirbasedatosxml` smallint(6) DEFAULT NULL,
  `permitirbasedatosfincas` smallint(6) DEFAULT NULL,
  `permitirrespuesta` smallint(6) DEFAULT '0',
  `permitirrespuestaadj` smallint(6) DEFAULT '0',
  `permitiraceptacionvsrechazo` smallint(6) DEFAULT '0',
  `permitirrespuestaencorreo` smallint(6) DEFAULT NULL,
  `permitircondicionado` smallint(6) DEFAULT NULL,
  `permitirpaypal` smallint(6) DEFAULT NULL,
  `permitirfuncionesavanzadasdecontenido` smallint(6) DEFAULT '0',
  `codigotipohilo` smallint(6) DEFAULT NULL,
  `arraymsgcod_xml` varchar(100) DEFAULT NULL,
  `passfirma` varchar(45) DEFAULT NULL,
  `rutaxml` varchar(100) DEFAULT NULL,
  `plantillalotecod` int(11) DEFAULT NULL,
  `cantidadadjuntosenvio` smallint(6) NOT NULL DEFAULT '0',
  `cantidadadjuntosenviodescargados` smallint(6) DEFAULT NULL,
  `cantidadadjuntosrespuesta` smallint(6) DEFAULT NULL,
  `cantidadadjuntosrespuestadescargados` smallint(6) DEFAULT NULL,
  `para` varchar(255) DEFAULT NULL,
  `codigoestadoabierto` smallint(6) DEFAULT NULL,
  `codigoestadovisto` smallint(6) DEFAULT NULL,
  `codigoaccesoverifyremitente` char(7) DEFAULT NULL,
  `codigoaccesoverifydestinatario` char(7) DEFAULT NULL,
  `codigoaccesoverifyfedatarioremitente` char(7) DEFAULT NULL,
  `codigoaccesoverifyfedatariodestinatario` char(7) DEFAULT NULL,
  `codigocanalregistro` smallint(6) DEFAULT NULL,
  `msgcod_agrupacion` int(11) DEFAULT NULL,
  `enviarsoloverificados` smallint(6) DEFAULT NULL,
  `opcopiasenvio` smallint(6) DEFAULT NULL,
  `generar_informe_lote` smallint(6) DEFAULT NULL,
  `idiomacod` varchar(6) DEFAULT NULL,
  `codigoordendescargaadjuntosfirma` smallint(6) DEFAULT NULL,
  `testigocod` int(10) DEFAULT NULL,
  `grupo_destinatarios_id` int(11) DEFAULT NULL,
  `destinatario_id` int(11) DEFAULT NULL,
  `registradosinrehusado` smallint(6) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `IXU_clientecod_hilocod_perfilproductocod` (`usuario_id`,`hilocod`,`perfilproductocod`),
  UNIQUE KEY `IXU_hilocfscode` (`hilocfscode`),
  KEY `fk_patt_hilos_1_idx` (`usuario_id`),
  KEY `fk_patt_hilos_patt_grupo_destinatarios1_idx` (`grupo_destinatarios_id`),
  KEY `fk_patt_hilos_patt_destinatario_idx` (`destinatario_id`),
  KEY `idx_msgcod_agrupacion` (`msgcod_agrupacion`),
  CONSTRAINT `fk_patt_hilos_1` FOREIGN KEY (`usuario_id`) REFERENCES `clnt_usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_patt_hilos_patt_destinatario` FOREIGN KEY (`destinatario_id`) REFERENCES `patt_destinatario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_patt_hilos_patt_grupo_destinatarios1` FOREIGN KEY (`grupo_destinatarios_id`) REFERENCES `patt_grupo_destinatarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=660539 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patt_hilos_canal_email`
--

DROP TABLE IF EXISTS `patt_hilos_canal_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patt_hilos_canal_email` (
  `hilo_id` int(11) NOT NULL,
  `usuario_plantilla_aviso_vigencia_id` int(11) DEFAULT NULL,
  `avisoentregamsg` text,
  `msgmaildestino` varchar(255) DEFAULT NULL,
  `msgnomdestinatario` varchar(255) DEFAULT NULL,
  `msgmailorigen` varchar(255) DEFAULT NULL,
  `msgnomorigen` varchar(255) DEFAULT NULL,
  `copiaalremitente` smallint(6) DEFAULT NULL,
  `smtpserver` varchar(100) DEFAULT NULL,
  `smtpuser` varchar(100) DEFAULT NULL,
  `smtppass` varchar(100) DEFAULT NULL,
  `smtpport` smallint(6) DEFAULT NULL,
  `auth_mode` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`hilo_id`),
  KEY `fk_hilos_canal_email_hilo_idx` (`hilo_id`),
  CONSTRAINT `fk_patt_hilos_canal_email_patt_hilos1` FOREIGN KEY (`hilo_id`) REFERENCES `patt_hilos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patt_hilos_canal_impresion`
--

DROP TABLE IF EXISTS `patt_hilos_canal_impresion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patt_hilos_canal_impresion` (
  `hilo_id` int(11) NOT NULL,
  `contactodni` varchar(20) DEFAULT NULL,
  `contactonombre` varchar(100) DEFAULT NULL,
  `contactodireccion` varchar(100) DEFAULT NULL,
  `contactolocalidad` varchar(45) DEFAULT NULL,
  `contactocodigopostal` varchar(15) DEFAULT NULL,
  `contactoprovincia` varchar(45) DEFAULT NULL,
  `contactopais` varchar(45) DEFAULT NULL,
  `idexpedicion` varchar(20) DEFAULT NULL,
  `contactoremnombre` varchar(100) DEFAULT NULL,
  `contactoremdni` varchar(20) DEFAULT NULL,
  `contactoremdireccion` varchar(100) DEFAULT NULL,
  `contactoremlocalidad` varchar(45) DEFAULT NULL,
  `contactoremcodigopostal` varchar(15) DEFAULT NULL,
  `contactoremprovincia` varchar(45) DEFAULT NULL,
  `contactorempais` varchar(45) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `numpag` tinyint(4) DEFAULT '0',
  `acuserecibo` tinyint(4) DEFAULT '1',
  `certificacioncontenido` tinyint(4) DEFAULT '1',
  `archivofirma` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`hilo_id`),
  KEY `fk_hilos_canal_impresion_hilos1_idx` (`hilo_id`),
  CONSTRAINT `fk_patt_hilos_canal_impresion_patt_hilos1` FOREIGN KEY (`hilo_id`) REFERENCES `patt_hilos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patt_hilos_canal_sms`
--

DROP TABLE IF EXISTS `patt_hilos_canal_sms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patt_hilos_canal_sms` (
  `hilo_id` int(11) NOT NULL,
  `smsaut` varchar(11) DEFAULT '0',
  `smstelefono` varchar(20) DEFAULT '',
  `smsclave` varchar(5) DEFAULT '',
  `smslink` varchar(512) DEFAULT '',
  `smsasunto` varchar(160) DEFAULT NULL,
  `smstelefonorem` varchar(20) DEFAULT NULL,
  `smsestado` tinyint(4) unsigned DEFAULT NULL,
  `trackingid` varchar(70) DEFAULT NULL,
  `codigo_proveedor_sms` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`hilo_id`),
  UNIQUE KEY `index3` (`smsaut`),
  KEY `fk_hilos_canal_sms_hilo1_idx` (`hilo_id`),
  KEY `index4` (`trackingid`),
  CONSTRAINT `fk_patt_hilos_canal_sms_patt_hilos1` FOREIGN KEY (`hilo_id`) REFERENCES `patt_hilos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patt_hilos_cfsdata_descargas`
--

DROP TABLE IF EXISTS `patt_hilos_cfsdata_descargas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patt_hilos_cfsdata_descargas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hilo_id` int(11) NOT NULL,
  `cfsdatatipo` varchar(50) DEFAULT NULL,
  `cfsdatafechadescarga` datetime DEFAULT NULL,
  `cfsdatafechagmt` datetime DEFAULT NULL,
  `ipdescarga` varchar(50) DEFAULT NULL,
  `sodescarga` varchar(50) DEFAULT NULL,
  `nadescarga` varchar(50) DEFAULT NULL,
  `agenteweb` text,
  `lugardescarga` varchar(50) DEFAULT NULL,
  `comprobacion` varchar(50) DEFAULT NULL,
  `lugarcomprobacion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_hilo_id` (`hilo_id`),
  CONSTRAINT `fk_patt_hilos_cfsdata_descargas_patt_hilos1` FOREIGN KEY (`hilo_id`) REFERENCES `patt_hilos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=289394 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patt_hilos_contactos`
--

DROP TABLE IF EXISTS `patt_hilos_contactos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patt_hilos_contactos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hilo_id` int(11) DEFAULT NULL,
  `clientecod` int(10) unsigned NOT NULL,
  `msgcod` int(11) NOT NULL,
  `perfilproductocod` int(10) NOT NULL,
  `msgmaildestino` varchar(250) NOT NULL,
  `msgnombredestino` varchar(250) DEFAULT NULL,
  `colaenviocod` int(11) NOT NULL,
  `msgcontestado` tinyint(4) NOT NULL,
  `msgordencascada` tinyint(4) NOT NULL,
  `msgmd5enviar` varchar(50) NOT NULL,
  `ultmodusuario` int(11) NOT NULL,
  `ultmodfecha` datetime DEFAULT NULL,
  `mensajecontactocod` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_hilo_id` (`hilo_id`),
  CONSTRAINT `fk_patt_hilos_contactos_patt_hilos1` FOREIGN KEY (`hilo_id`) REFERENCES `patt_hilos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=323311 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patt_hilos_enlaces`
--

DROP TABLE IF EXISTS `patt_hilos_enlaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patt_hilos_enlaces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hilo_id` int(11) NOT NULL,
  `token` varchar(28) NOT NULL,
  `estado` smallint(6) DEFAULT NULL,
  `fecha_registro_gmt0` datetime DEFAULT NULL,
  `fecha_caducidad_gmt0` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_hilo_id` (`hilo_id`),
  KEY `hilo_id_token` (`hilo_id`,`token`),
  CONSTRAINT `fk_patt_hilos_enlaces_patt_hilos1` FOREIGN KEY (`hilo_id`) REFERENCES `patt_hilos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=39020 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patt_hilos_estados_flujo`
--

DROP TABLE IF EXISTS `patt_hilos_estados_flujo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patt_hilos_estados_flujo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hilo_id` int(11) NOT NULL,
  `msgestado` int(11) NOT NULL DEFAULT '0',
  `fechaestadoflujo` datetime NOT NULL,
  `estadocodmrw` varchar(4) NOT NULL,
  `subestadocodmrw` int(11) NOT NULL,
  `fechagmtestadoflujo` datetime NOT NULL,
  `ipenvio` varchar(20) DEFAULT NULL,
  `soenvio` varchar(300) DEFAULT NULL,
  `navegador` varchar(300) DEFAULT NULL,
  `agenteweb` varchar(500) DEFAULT NULL,
  `errorestadoenvio` int(10) unsigned NOT NULL,
  `vistoestado` int(10) unsigned NOT NULL DEFAULT '0',
  `observaciones` varchar(500) NOT NULL,
  `fecharegistro` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `IX_hilo_id` (`hilo_id`),
  KEY `IX_msgestado_fecha` (`msgestado`,`fechagmtestadoflujo`),
  CONSTRAINT `fk_patt_hilos_estados_flujo_patt_hilos1` FOREIGN KEY (`hilo_id`) REFERENCES `patt_hilos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2966034 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patt_hilos_info_agree`
--

DROP TABLE IF EXISTS `patt_hilos_info_agree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patt_hilos_info_agree` (
  `hilo_id` int(11) NOT NULL,
  `borradoresagreenombre` varchar(100) DEFAULT NULL,
  `selborradoragreecod` smallint(6) DEFAULT NULL,
  `msgbotonon` varchar(50) DEFAULT NULL,
  `msgbotonoff` varchar(50) DEFAULT NULL,
  `msgcontenidocondicion` text,
  `msgcheckbox` varchar(255) DEFAULT NULL,
  `codigoaceptorechazoremitente` smallint(6) DEFAULT NULL,
  `codigoestilobotones` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`hilo_id`),
  KEY `fk_patt_hilos_info_agree_patt_hilos1_idx` (`hilo_id`),
  CONSTRAINT `fk_patt_hilos_info_agree_patt_hilos1` FOREIGN KEY (`hilo_id`) REFERENCES `patt_hilos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patt_hilos_shortlinks`
--

DROP TABLE IF EXISTS `patt_hilos_shortlinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patt_hilos_shortlinks` (
  `key_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key_long` varchar(91) DEFAULT NULL,
  `key_short` char(8) DEFAULT NULL,
  `operadorcod` int(10) NOT NULL,
  PRIMARY KEY (`key_id`),
  UNIQUE KEY `key_short_UNIQUE` (`key_short`),
  UNIQUE KEY `key_long_UNIQUE` (`key_long`),
  KEY `short_opecod` (`operadorcod`,`key_short`),
  CONSTRAINT `fk_shortlikn_operador` FOREIGN KEY (`operadorcod`) REFERENCES `operadores` (`operadorcod`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3202 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patt_info_agree_formularios`
--

DROP TABLE IF EXISTS `patt_info_agree_formularios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patt_info_agree_formularios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hilo_id` int(11) NOT NULL,
  `formulario_id` int(11) NOT NULL,
  `orden` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_hilo_id` (`hilo_id`),
  KEY `fk_formulario_id` (`formulario_id`),
  CONSTRAINT `fk_patt_info_agree_formularios_fort_formularios1` FOREIGN KEY (`formulario_id`) REFERENCES `fort_formularios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_patt_info_agree_formularios_patt_hilos_info_agree1` FOREIGN KEY (`hilo_id`) REFERENCES `patt_hilos_info_agree` (`hilo_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1155 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patt_lote`
--

DROP TABLE IF EXISTS `patt_lote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patt_lote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_id` int(11) NOT NULL,
  `hilo_borrador_id` int(11) DEFAULT NULL,
  `referencia_proceso` varchar(45) NOT NULL,
  `codigo_canal_registro` smallint(6) NOT NULL,
  `codigo_formato_lote` smallint(6) NOT NULL,
  `ruta_original_fichero` varchar(512) DEFAULT NULL,
  `ruta_trabajo_fichero` varchar(512) DEFAULT NULL,
  `fecha_fichero` datetime DEFAULT NULL,
  `tamano_fichero_kbs` decimal(9,3) DEFAULT NULL,
  `fecha_inicio_proceso_gmt0` datetime DEFAULT NULL,
  `fecha_fin_proceso_gmt0` datetime DEFAULT NULL,
  `fecha_inicio_notificacion_gmt0` datetime DEFAULT NULL,
  `codigo_estado_proceso` smallint(6) NOT NULL DEFAULT '10',
  `fecha_estado_proceso_gmt0` datetime NOT NULL,
  `fecha_registro_gmt0` datetime NOT NULL,
  `codigo_prioridad` smallint(6) NOT NULL DEFAULT '5',
  `codigo_canal_proceso` smallint(6) NOT NULL DEFAULT '1',
  `codigo_visible_usuario` smallint(6) NOT NULL DEFAULT '10',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_patt_lote_1` (`referencia_proceso`),
  KEY `fk_patt_lote_1_idx` (`usuario_id`),
  KEY `fk_patt_lote_patt_hilos1_idx` (`hilo_borrador_id`),
  CONSTRAINT `fk_patt_lote_1` FOREIGN KEY (`usuario_id`) REFERENCES `clnt_usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_patt_lote_patt_hilos1` FOREIGN KEY (`hilo_borrador_id`) REFERENCES `patt_hilos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2473 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patt_lote_parte`
--

DROP TABLE IF EXISTS `patt_lote_parte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patt_lote_parte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lote_id` int(11) NOT NULL,
  `numero_parte` int(11) NOT NULL,
  `ruta_original_fichero` varchar(512) DEFAULT NULL,
  `ruta_trabajo_fichero` varchar(512) DEFAULT NULL,
  `fecha_inicio_proceso_gmt0` datetime DEFAULT NULL,
  `fecha_fin_proceso_gmt0` datetime DEFAULT NULL,
  `codigo_estado_proceso` smallint(6) NOT NULL DEFAULT '10',
  `fecha_registro_gmt0` datetime NOT NULL,
  `numero_proceso_batch` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_patt_lote_parte_patt_lote1_idx` (`lote_id`),
  CONSTRAINT `fk_patt_lote_parte_patt_lote1` FOREIGN KEY (`lote_id`) REFERENCES `patt_lote` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2443 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patt_lote_parte_carta_impresa`
--

DROP TABLE IF EXISTS `patt_lote_parte_carta_impresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patt_lote_parte_carta_impresa` (
  `lote_parte_destinatario_id` int(11) NOT NULL,
  `msgnomdestinatario` varchar(255) DEFAULT NULL,
  `msgcontenido` longtext NOT NULL,
  `fecha_registro_gmt0` datetime NOT NULL,
  PRIMARY KEY (`lote_parte_destinatario_id`),
  CONSTRAINT `fk_patt_lote_parte_carta_impresa_destinatario` FOREIGN KEY (`lote_parte_destinatario_id`) REFERENCES `patt_lote_parte_destinatario` (`destinatario_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patt_lote_parte_destinatario`
--

DROP TABLE IF EXISTS `patt_lote_parte_destinatario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patt_lote_parte_destinatario` (
  `destinatario_id` int(11) NOT NULL AUTO_INCREMENT,
  `lote_parte_id` int(11) NOT NULL,
  `codigo_estado_proceso` smallint(6) NOT NULL,
  `fecha_estado_proceso_gmt0` datetime NOT NULL,
  PRIMARY KEY (`destinatario_id`),
  KEY `fk_patt_lote_parte_destinatario1_idx` (`lote_parte_id`),
  KEY `fk_patt_lote_parte_destinatario_patt_destinatario1_idx` (`destinatario_id`),
  CONSTRAINT `fk_lote_parte_destinatario_lote_parte1` FOREIGN KEY (`lote_parte_id`) REFERENCES `patt_lote_parte` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_patt_lote_parte_destinatario_patt_destinatario1` FOREIGN KEY (`destinatario_id`) REFERENCES `patt_destinatario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=60146 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patt_lote_parte_destinatario_carta`
--

DROP TABLE IF EXISTS `patt_lote_parte_destinatario_carta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patt_lote_parte_destinatario_carta` (
  `lote_parte_destinatario_id` int(11) NOT NULL AUTO_INCREMENT,
  `msgnomdestinatario` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`lote_parte_destinatario_id`),
  KEY `fk_patt_lote_parte_destinatario_carta_patt_lote_parte_desti_idx` (`lote_parte_destinatario_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patt_lote_parte_hilo`
--

DROP TABLE IF EXISTS `patt_lote_parte_hilo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patt_lote_parte_hilo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lote_parte_id` int(11) NOT NULL,
  `hilo_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fk_patt_lote_parte_hilo_patt_hilos1_idx` (`hilo_id`),
  UNIQUE KEY `index4` (`lote_parte_id`,`hilo_id`),
  KEY `fk_patt_lote_parte_hilo_patt_lote_parte1_idx` (`lote_parte_id`),
  CONSTRAINT `fk_patt_lote_parte_hilo_patt_hilos1` FOREIGN KEY (`hilo_id`) REFERENCES `patt_hilos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_patt_lote_parte_hilo_patt_lote_parte1` FOREIGN KEY (`lote_parte_id`) REFERENCES `patt_lote_parte` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=56115 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patt_lote_parte_hilo_erroneo`
--

DROP TABLE IF EXISTS `patt_lote_parte_hilo_erroneo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patt_lote_parte_hilo_erroneo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lote_parte_id` int(11) NOT NULL,
  `id_proceso` varchar(100) DEFAULT NULL,
  `numero_registro_fichero` int(11) NOT NULL,
  `asunto` varchar(600) NOT NULL,
  `destinatario` varchar(500) NOT NULL,
  `codigo_error_carga_hilo` smallint(6) NOT NULL,
  `descripcion` varchar(1000) DEFAULT NULL,
  `fecha_registro_gmt0` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_patt_lote_parte_hilo_erroneo_patt_lote_parte1_idx` (`lote_parte_id`),
  CONSTRAINT `fk_patt_lote_parte_hilo_erroneo_patt_lote_parte1` FOREIGN KEY (`lote_parte_id`) REFERENCES `patt_lote_parte` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=474 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patt_lotes_contenido_temporal_v3`
--

DROP TABLE IF EXISTS `patt_lotes_contenido_temporal_v3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patt_lotes_contenido_temporal_v3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hilo_contacto_id` int(11) NOT NULL,
  `perfilproductocod` int(10) unsigned NOT NULL,
  `msgcod` int(10) unsigned NOT NULL,
  `usuariocod` int(10) unsigned NOT NULL,
  `clientecod` int(10) NOT NULL,
  `msgcontenido` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_patt_lotes_contenido_temporal_v3_patt_hilos_contactos1_idx` (`hilo_contacto_id`),
  CONSTRAINT `fk_patt_lotes_contenido_temporal_v3_patt_hilos_contactos1` FOREIGN KEY (`hilo_contacto_id`) REFERENCES `patt_hilos_contactos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=71125 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patt_lotes_v3`
--

DROP TABLE IF EXISTS `patt_lotes_v3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patt_lotes_v3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lotecod` int(10) unsigned DEFAULT NULL,
  `clientecod` int(10) unsigned DEFAULT '0',
  `usuariocod` int(10) unsigned DEFAULT '0',
  `perfilproductocod` int(10) unsigned NOT NULL,
  `msgcod` int(11) DEFAULT NULL,
  `loteasunto` text NOT NULL,
  `lotefalta` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `lotefenviado` datetime DEFAULT NULL,
  `lotefichero` longtext,
  `loteficheronombre` text NOT NULL,
  `loteficherotamano` varchar(10) NOT NULL,
  `loteficherobbdd` text NOT NULL,
  `loteestado` int(2) unsigned DEFAULT '0',
  `titulo` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1603 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patt_macro`
--

DROP TABLE IF EXISTS `patt_macro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patt_macro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_id` int(11) NOT NULL,
  `macro_definicion_id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `codigo_estado_redaccion` smallint(6) NOT NULL,
  `codigo_prioridad` smallint(6) NOT NULL DEFAULT '5',
  `codigo_canal_proceso` smallint(6) NOT NULL DEFAULT '1',
  `fecha_registro_gmt0` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_patt_macro1_idx` (`macro_definicion_id`),
  KEY `fk_patt_macro2_idx` (`usuario_id`),
  CONSTRAINT `fk_patt_macro_admt_macro_definicion1` FOREIGN KEY (`macro_definicion_id`) REFERENCES `admt_macro_definicion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_patt_macro_clnt_usuario2` FOREIGN KEY (`usuario_id`) REFERENCES `clnt_usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patt_macro_paso`
--

DROP TABLE IF EXISTS `patt_macro_paso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patt_macro_paso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `macro_id` int(11) NOT NULL,
  `macro_definicion_paso_id` int(11) NOT NULL,
  `lote_id` int(11) NOT NULL,
  `codigo_estado_macro_paso` smallint(6) NOT NULL,
  `fecha_estado_macro_paso_gmt0` datetime NOT NULL,
  `numero_proceso_batch` int(11) DEFAULT NULL,
  `fecha_registro_gmt0` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_patt_macro_paso1_idx` (`macro_id`),
  KEY `fk_patt_macro_paso2_idx` (`macro_definicion_paso_id`),
  KEY `fk_patt_macro_paso3_idx` (`lote_id`),
  CONSTRAINT `fk_patt_macro_paso_admt_macro_definicion_paso1` FOREIGN KEY (`macro_definicion_paso_id`) REFERENCES `admt_macro_definicion_paso` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_patt_macro_paso_patt_lote1` FOREIGN KEY (`lote_id`) REFERENCES `patt_lote` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_patt_macro_paso_patt_macro1` FOREIGN KEY (`macro_id`) REFERENCES `patt_macro` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patt_mensajes`
--

DROP TABLE IF EXISTS `patt_mensajes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patt_mensajes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hilo_id` int(11) NOT NULL,
  `msgcod` int(11) NOT NULL,
  `msgfalta` datetime DEFAULT NULL,
  `msgpadre` int(11) DEFAULT '0',
  `msgcontenido` longtext,
  `borradorcod` int(11) DEFAULT NULL,
  `archcodeident` varchar(100) DEFAULT NULL,
  `adjuntossubidos` text,
  `ipenvio` varchar(15) DEFAULT NULL,
  `soenvio` varchar(255) DEFAULT NULL,
  `navegador` varchar(50) DEFAULT NULL,
  `agenteweb` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IXU_hilo_id_msgcod` (`msgcod`,`hilo_id`),
  KEY `IX_hilo_id` (`hilo_id`),
  CONSTRAINT `fk_patt_mensajes_patt_hilos1` FOREIGN KEY (`hilo_id`) REFERENCES `patt_hilos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=780840 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patt_mensajes_adjuntos`
--

DROP TABLE IF EXISTS `patt_mensajes_adjuntos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patt_mensajes_adjuntos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mensaje_id` int(11) NOT NULL,
  `archcod` int(10) DEFAULT NULL,
  `archtam` float DEFAULT NULL,
  `archnom` varchar(250) DEFAULT NULL,
  `archubic` varchar(250) DEFAULT NULL,
  `crc` varchar(45) DEFAULT NULL,
  `compulsado` tinyint(3) unsigned DEFAULT NULL,
  `archestado` smallint(6) DEFAULT NULL,
  `ultmodusuario` int(10) unsigned DEFAULT NULL,
  `ultmodfecha` datetime DEFAULT NULL,
  `archcodeident` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_mensaje_id` (`mensaje_id`),
  KEY `IX_archcod` (`archcod`),
  CONSTRAINT `fk_patt_mensajes_adjuntos_patt_mensajes1` FOREIGN KEY (`mensaje_id`) REFERENCES `patt_mensajes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=673479 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patt_mensajes_adjuntos_descargas`
--

DROP TABLE IF EXISTS `patt_mensajes_adjuntos_descargas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patt_mensajes_adjuntos_descargas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mensaje_adjunto_id` int(11) NOT NULL,
  `adjestado` int(11) NOT NULL DEFAULT '0',
  `adjfechadescarga` datetime NOT NULL,
  `adjfechadescargagmt` datetime NOT NULL,
  `ipdescarga` varchar(20) DEFAULT NULL,
  `sodescarga` varchar(300) DEFAULT NULL,
  `navdescarga` varchar(300) DEFAULT NULL,
  `agenteweb` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_mensaje_adjunto_id` (`mensaje_adjunto_id`),
  CONSTRAINT `fk_patt_mensajes_adjuntos_descargas_patt_mensajes_adjuntos1` FOREIGN KEY (`mensaje_adjunto_id`) REFERENCES `patt_mensajes_adjuntos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=740976 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patt_mensajes_facturas`
--

DROP TABLE IF EXISTS `patt_mensajes_facturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patt_mensajes_facturas` (
  `mensaje_id` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `moneda` varchar(3) NOT NULL,
  `total` float NOT NULL,
  `tax` float NOT NULL,
  `taxpercentage` float NOT NULL,
  `emailreceiver` varchar(45) NOT NULL,
  `codigoestadofactura` varchar(45) NOT NULL,
  `trackingid` varchar(55) NOT NULL,
  `fecha` datetime NOT NULL,
  `debug` tinyint(4) NOT NULL,
  PRIMARY KEY (`mensaje_id`),
  CONSTRAINT `fk_patt_mensajes_facturas_patt_mensajes1` FOREIGN KEY (`mensaje_id`) REFERENCES `patt_mensajes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patt_mensajes_facturas_ipn`
--

DROP TABLE IF EXISTS `patt_mensajes_facturas_ipn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patt_mensajes_facturas_ipn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mensaje_id` int(11) NOT NULL,
  `estado` varchar(45) NOT NULL,
  `trackingid` varchar(45) NOT NULL,
  `paykey` varchar(45) NOT NULL,
  `senderemail` varchar(45) NOT NULL,
  `paymentrequestdate` datetime NOT NULL,
  `status0` varchar(45) NOT NULL,
  `amount0` varchar(45) NOT NULL,
  `receiver0` varchar(45) NOT NULL,
  `status1` varchar(45) NOT NULL,
  `amount1` varchar(45) NOT NULL,
  `receiver1` varchar(45) NOT NULL,
  `rawtxt` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_mensaje_id` (`mensaje_id`),
  CONSTRAINT `fk_patt_mensajes_facturas_ipn_patt_mensajes_facturas1` FOREIGN KEY (`mensaje_id`) REFERENCES `patt_mensajes_facturas` (`mensaje_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patt_mensajes_facturas_lineas`
--

DROP TABLE IF EXISTS `patt_mensajes_facturas_lineas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patt_mensajes_facturas_lineas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mensaje_id` int(11) NOT NULL,
  `cantidaditems` float NOT NULL,
  `detalle` varchar(45) NOT NULL,
  `precioitem` float NOT NULL,
  `totalitems` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_mensaje_id` (`mensaje_id`),
  CONSTRAINT `fk_patt_mensajes_facturas_lineas_patt_mensajes_facturas1` FOREIGN KEY (`mensaje_id`) REFERENCES `patt_mensajes_facturas` (`mensaje_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1609 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `perfiles_productos`
--

DROP TABLE IF EXISTS `perfiles_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perfiles_productos` (
  `perfilproductocod` int(10) NOT NULL AUTO_INCREMENT,
  `pprodnombre` varchar(225) NOT NULL,
  `pproddescripcion` varchar(225) NOT NULL,
  `pprodproductocod` int(10) NOT NULL,
  `pprodcoste` float NOT NULL,
  `pprodestado` tinyint(2) NOT NULL,
  PRIMARY KEY (`perfilproductocod`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `perfproductos_contratados`
--

DROP TABLE IF EXISTS `perfproductos_contratados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perfproductos_contratados` (
  `perfproductocontratadocod` int(10) NOT NULL AUTO_INCREMENT,
  `ppccodpadre` int(10) NOT NULL DEFAULT '0',
  `perfilproductocod` int(10) NOT NULL,
  `clientecod` int(10) NOT NULL DEFAULT '0',
  `clientenombre` varchar(255) NOT NULL DEFAULT '',
  `clienteapellidos` varchar(255) NOT NULL DEFAULT '',
  `clienteempresa` varchar(255) NOT NULL DEFAULT '',
  `clientecifnif` varchar(12) NOT NULL DEFAULT '',
  `clienteemail` varchar(45) NOT NULL DEFAULT '',
  `clientedireccion` varchar(125) NOT NULL,
  `clientelocalidad` varchar(30) NOT NULL DEFAULT '',
  `clientecodpos` varchar(15) NOT NULL DEFAULT '',
  `clienteprovincia` varchar(30) NOT NULL DEFAULT '',
  `paiscod` int(10) unsigned NOT NULL DEFAULT '0',
  `idiomacod` varchar(5) NOT NULL DEFAULT 'es',
  `formapagocod` smallint(4) unsigned NOT NULL,
  `clienteentbancaria` varchar(45) NOT NULL DEFAULT '',
  `clientenumcuenta` varchar(45) NOT NULL DEFAULT '',
  `clientetitularcta` varchar(120) NOT NULL DEFAULT '',
  `ppccuotas` int(4) NOT NULL DEFAULT '0',
  `ppcproductoprecio` double unsigned NOT NULL DEFAULT '0',
  `ppcimpuesto` int(4) NOT NULL DEFAULT '0',
  `promocod` int(10) NOT NULL DEFAULT '0',
  `promodescuento` decimal(6,2) NOT NULL DEFAULT '0.00',
  `ppcfinicio` date NOT NULL DEFAULT '0000-00-00',
  `ppcffin` date NOT NULL DEFAULT '0000-00-00',
  `contadorenvioscod` int(10) NOT NULL DEFAULT '0',
  `ppcestado` smallint(4) NOT NULL DEFAULT '0',
  `condgcod` int(10) NOT NULL DEFAULT '0',
  `ppccondpartic` text NOT NULL,
  `ppcdesc` text NOT NULL,
  `creditosusuarios` int(10) NOT NULL DEFAULT '0',
  `tipocontrato` int(2) unsigned NOT NULL,
  `tarifa_id` int(10) unsigned NOT NULL,
  `precio_final_mb` float(4,2) NOT NULL,
  `volumen_anual_estimado` int(10) unsigned NOT NULL,
  `porcentaje_excedido_mes` float(6,2) NOT NULL DEFAULT '10.00',
  `rappel_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`perfproductocontratadocod`,`ppccodpadre`),
  KEY `perfproductos_contratados_alt` (`ppccodpadre`,`clientecod`),
  KEY `fk_perfpro_rappel_id_idx` (`rappel_id`),
  KEY `idx_perfproductos_clientecod` (`clientecod`),
  CONSTRAINT `fk_ppc_rappel_id` FOREIGN KEY (`rappel_id`) REFERENCES `fact_rappel` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=15243 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `perfproductos_contratados_det`
--

DROP TABLE IF EXISTS `perfproductos_contratados_det`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perfproductos_contratados_det` (
  `perfproductocontratadodetcod` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `perfproductocontratadocod` int(10) NOT NULL,
  `clientecod` int(10) NOT NULL DEFAULT '0',
  `ppcdtipolinea` varchar(1) NOT NULL DEFAULT 'l',
  `ppcdservicio` varchar(512) NOT NULL DEFAULT '',
  `ppcdcantidad` int(10) NOT NULL DEFAULT '1',
  `ppcdprecio` float NOT NULL DEFAULT '0',
  `ppcdimporte` int(10) NOT NULL DEFAULT '0',
  `ppcdimpuesto` int(10) NOT NULL DEFAULT '0',
  `ppcdtotal` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`perfproductocontratadodetcod`)
) ENGINE=InnoDB AUTO_INCREMENT=74362 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `plantillas_envios`
--

DROP TABLE IF EXISTS `plantillas_envios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plantillas_envios` (
  `plantillacod` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `perfilproductocod` int(10) unsigned NOT NULL DEFAULT '0',
  `clientecod` int(10) unsigned NOT NULL DEFAULT '0',
  `plantillanombre` varchar(50) NOT NULL DEFAULT 'Plantilla por Defecto',
  `plantilladesc` varchar(250) NOT NULL,
  `plantillafondoemail` varchar(150) NOT NULL DEFAULT '/_img/mails/fondocorreo.jpg',
  `plantillacabaviso` varchar(150) NOT NULL DEFAULT '/_img/mails/banda_superior.gif',
  `plantillapieaviso` varchar(150) NOT NULL DEFAULT '/_img/mails/banda_inferior_der.gif',
  `plantillaestado` tinyint(3) unsigned NOT NULL DEFAULT '10',
  PRIMARY KEY (`plantillacod`,`perfilproductocod`,`clientecod`),
  KEY `clientecod` (`clientecod`)
) ENGINE=InnoDB AUTO_INCREMENT=11901 DEFAULT CHARSET=utf8 COMMENT='recoge la configuración de la plantilla de envío del cliente';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `plantillas_lotes`
--

DROP TABLE IF EXISTS `plantillas_lotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plantillas_lotes` (
  `plantillalotecod` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `perfilproductocod` int(10) unsigned NOT NULL DEFAULT '0',
  `clientecod` int(10) unsigned NOT NULL,
  `plantillalotenombre` varchar(255) DEFAULT '',
  `plantillalotedesc` varchar(255) DEFAULT '',
  `plantillalotefecha` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `plantillalotedocumento` longtext NOT NULL,
  `plantillalotefirma` varchar(250) NOT NULL,
  PRIMARY KEY (`plantillalotecod`,`perfilproductocod`,`clientecod`),
  KEY `clientecod` (`clientecod`)
) ENGINE=InnoDB AUTO_INCREMENT=32957 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `preferencias`
--

DROP TABLE IF EXISTS `preferencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `preferencias` (
  `preferenciacod` int(10) NOT NULL AUTO_INCREMENT,
  `prefnombre` varchar(150) DEFAULT '',
  `preftipo` varchar(1) DEFAULT 'N' COMMENT 'N->Numérico, A->Alfanumérico',
  `prefdescripcion` varchar(250) NOT NULL,
  `prefpordefecto` varchar(500) NOT NULL,
  `prefaplicablea` int(4) NOT NULL,
  `prefvaloresperado` varchar(500) NOT NULL,
  PRIMARY KEY (`preferenciacod`),
  KEY `preferencias_alt` (`prefnombre`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8 COMMENT='Preferencias';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `preferencias_experiences`
--

DROP TABLE IF EXISTS `preferencias_experiences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `preferencias_experiences` (
  `prefexperiencecod` int(10) NOT NULL AUTO_INCREMENT,
  `prefnombre` varchar(150) NOT NULL,
  `prefnivel` int(4) NOT NULL,
  `prefasociadas` varchar(500) NOT NULL,
  `numenvios` int(4) NOT NULL,
  `numaccesos` int(4) NOT NULL,
  `numdias` int(4) NOT NULL,
  PRIMARY KEY (`prefexperiencecod`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `privilegios_operador`
--

DROP TABLE IF EXISTS `privilegios_operador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `privilegios_operador` (
  `privilegioopecod` int(11) NOT NULL AUTO_INCREMENT,
  `privilegiooperol` varchar(45) NOT NULL,
  `operadorcod` varchar(90) NOT NULL,
  `privilegiocod` varchar(45) NOT NULL DEFAULT '0',
  PRIMARY KEY (`privilegioopecod`)
) ENGINE=InnoDB AUTO_INCREMENT=7037 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `procesos_paypal`
--

DROP TABLE IF EXISTS `procesos_paypal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `procesos_paypal` (
  `procesopaypalcod` int(11) NOT NULL AUTO_INCREMENT,
  `clientecod` int(10) unsigned NOT NULL,
  `msgcod` int(10) unsigned NOT NULL,
  `perfilproductocod` int(10) unsigned NOT NULL,
  `usuariocod` int(10) unsigned NOT NULL,
  `dominiocod` int(10) unsigned NOT NULL,
  `operadorcod` int(10) unsigned NOT NULL,
  `fcreacion` datetime NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '0',
  `codigo_tipo_pasarela` smallint(6) DEFAULT NULL,
  `referencia_externa_id_pago` varchar(100) DEFAULT NULL,
  `codigo_estado_segun_pasarela` varchar(45) DEFAULT NULL,
  `fecha_estado_segun_pasarela` datetime DEFAULT NULL,
  `url_send` varchar(2000) DEFAULT NULL,
  `importe_pago` decimal(13,2) DEFAULT NULL,
  `codigo_divisa` char(3) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL COMMENT 'Id del item que se ha comprado',
  `codigo_item` smallint(6) DEFAULT '0' COMMENT 'Codigo del item que se está comprando',
  PRIMARY KEY (`procesopaypalcod`),
  UNIQUE KEY `procesopaypalcod_UNIQUE` (`procesopaypalcod`)
) ENGINE=InnoDB AUTO_INCREMENT=6854 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `programados_xml`
--

DROP TABLE IF EXISTS `programados_xml`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `programados_xml` (
  `progcod` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `progfalta` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `clientecod` int(10) NOT NULL,
  `progxml` varchar(255) NOT NULL,
  `progestado` int(10) NOT NULL DEFAULT '10',
  `colabbddcod` int(10) NOT NULL,
  `tiempo_division` float NOT NULL DEFAULT '0',
  `tiempo_envio` float NOT NULL DEFAULT '0',
  `solicitudcod` int(10) DEFAULT NULL,
  `numeroenvios` int(10) DEFAULT NULL,
  PRIMARY KEY (`progcod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `promociones`
--

DROP TABLE IF EXISTS `promociones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promociones` (
  `promocod` int(10) NOT NULL AUTO_INCREMENT,
  `promonombre` varchar(45) DEFAULT NULL,
  `promodesc` varchar(250) DEFAULT NULL,
  `promodescuento` int(10) DEFAULT NULL COMMENT 'será un tanto por cien aplicado al precio del producto',
  `promoestado` smallint(4) DEFAULT NULL COMMENT 'activa/inactiva',
  PRIMARY KEY (`promocod`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COMMENT='cada promocion sera generada en esta tabla';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `promos_tarjetas`
--

DROP TABLE IF EXISTS `promos_tarjetas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promos_tarjetas` (
  `promotarjetacod` varchar(50) NOT NULL DEFAULT '',
  `ptcampananombre` varchar(45) NOT NULL,
  `ptfactivacion` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ptfacceso` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ptfcompra` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ptcontratado` int(10) NOT NULL,
  `agentecod` int(10) NOT NULL DEFAULT '0',
  `operadorcod` int(10) NOT NULL DEFAULT '0',
  `ptestado` tinyint(2) NOT NULL,
  PRIMARY KEY (`promotarjetacod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pruebas`
--

DROP TABLE IF EXISTS `pruebas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pruebas` (
  `pruebacod` int(10) NOT NULL AUTO_INCREMENT,
  `tareacod` int(10) NOT NULL,
  `prnombre` varchar(100) NOT NULL,
  `prresultadook` varchar(100) NOT NULL,
  `probservaciones` text NOT NULL,
  `prgravedad` tinyint(4) NOT NULL,
  `prestado` smallint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pruebacod`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='Pruebas de las tareas';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pruebas_ejecutadas`
--

DROP TABLE IF EXISTS `pruebas_ejecutadas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pruebas_ejecutadas` (
  `pruebaejecutadacod` int(10) NOT NULL AUTO_INCREMENT,
  `prejfalta` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `prejffin` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `prejusuarioemail` varchar(255) NOT NULL,
  `tareacod` int(10) NOT NULL,
  `prejestado` smallint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pruebaejecutadacod`)
) ENGINE=InnoDB AUTO_INCREMENT=329 DEFAULT CHARSET=utf8 COMMENT='Pruebas ejecutadas';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pruebas_resultados`
--

DROP TABLE IF EXISTS `pruebas_resultados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pruebas_resultados` (
  `pruebaresultadocod` int(10) NOT NULL AUTO_INCREMENT,
  `prrepadre` int(10) NOT NULL DEFAULT '0',
  `pruebacod` int(10) NOT NULL,
  `pruebaejecutadacod` int(10) NOT NULL,
  `prreresultado` varchar(225) NOT NULL,
  `prreerror` varchar(225) NOT NULL,
  `prresolucion` varchar(225) NOT NULL,
  PRIMARY KEY (`pruebaresultadocod`)
) ENGINE=InnoDB AUTO_INCREMENT=386 DEFAULT CHARSET=utf8 COMMENT='Pruebas ejecutadas';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rappel`
--

DROP TABLE IF EXISTS `rappel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rappel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `operadorcod` int(10) unsigned NOT NULL,
  `tipo_w_c` varchar(1) DEFAULT 'w',
  `volumen_anual_mb` int(10) unsigned NOT NULL,
  `precio_mb` float(4,2) NOT NULL,
  `precio_pack_web` float(6,2) NOT NULL,
  `estado` tinyint(10) unsigned DEFAULT '10',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `recuperar_contrasena`
--

DROP TABLE IF EXISTS `recuperar_contrasena`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recuperar_contrasena` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fechaenviado` date NOT NULL,
  `operadorcod` int(10) NOT NULL,
  `clientecod` int(10) NOT NULL,
  `usuariocod` int(10) NOT NULL,
  `enlace` varchar(100) NOT NULL,
  `enviado` int(10) NOT NULL,
  `activo` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2577 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reg_usuarios`
--

DROP TABLE IF EXISTS `reg_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reg_usuarios` (
  `regusucod` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `clientecod` int(10) NOT NULL,
  `usuariocod` int(10) NOT NULL,
  `rolcod` int(10) NOT NULL,
  `contratocod` int(10) unsigned NOT NULL DEFAULT '0',
  `finicio` date DEFAULT NULL,
  `ffin` date DEFAULT NULL,
  `usuarioemail` varchar(45) NOT NULL,
  `usuarionombre` varchar(45) NOT NULL,
  `usuariocifnif` varchar(45) NOT NULL,
  `usuariotel` varchar(45) NOT NULL,
  `numhilos` int(10) unsigned NOT NULL DEFAULT '0',
  `usuarioultfecha` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`regusucod`)
) ENGINE=InnoDB AUTO_INCREMENT=1385 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `registro_actividad`
--

DROP TABLE IF EXISTS `registro_actividad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registro_actividad` (
  `regactcod` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regactcomercialcod` int(10) unsigned NOT NULL,
  `regactcomercialemail` varchar(45) NOT NULL,
  `regactfecha` datetime NOT NULL COMMENT 'GMT',
  `regactclientecod` int(10) unsigned NOT NULL,
  `regactusuarioemail` varchar(45) NOT NULL,
  `regactdescripcion` text NOT NULL,
  `regactmotivo` text NOT NULL,
  `regactobservaciones` text NOT NULL,
  PRIMARY KEY (`regactcod`),
  KEY `registro_actividad_alt` (`regactclientecod`,`regactusuarioemail`,`regactfecha`)
) ENGINE=InnoDB AUTO_INCREMENT=14203 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `rolcod` int(10) NOT NULL,
  `rolnombre` varchar(45) DEFAULT NULL,
  `roldesc` varchar(250) DEFAULT NULL,
  `rolestado` smallint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rolcod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='permisos para usuarios';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rutas`
--

DROP TABLE IF EXISTS `rutas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rutas` (
  `CodigoPais` varchar(5) NOT NULL,
  `Poblacion` varchar(35) NOT NULL,
  `CodigoFranquiciaDestino` varchar(5) NOT NULL,
  `NombreFranquiciaDestino` varchar(5) NOT NULL,
  `CodigoRuta` varchar(2) NOT NULL,
  `CodigoSacaEspana` varchar(35) NOT NULL,
  `CodigoSacaPortugal` varchar(35) NOT NULL,
  `CPC` varchar(1) NOT NULL,
  PRIMARY KEY (`CodigoPais`,`Poblacion`,`CodigoFranquiciaDestino`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `smtp`
--

DROP TABLE IF EXISTS `smtp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smtp` (
  `smtpcod` int(10) NOT NULL AUTO_INCREMENT,
  `clientecod` int(10) NOT NULL,
  `host` varchar(150) DEFAULT '',
  `port` varchar(150) DEFAULT '',
  `auth` varchar(1) DEFAULT '0' COMMENT '1->auth',
  `username` varchar(150) DEFAULT '',
  `password` varchar(150) DEFAULT '',
  `interno` tinyint(4) DEFAULT '0',
  `estado` tinyint(4) DEFAULT '10',
  PRIMARY KEY (`smtpcod`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='Smtp';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `solicitudes`
--

DROP TABLE IF EXISTS `solicitudes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solicitudes` (
  `solicitudcod` int(11) NOT NULL AUTO_INCREMENT,
  `nombrearchivo` varchar(45) NOT NULL,
  `fechainicio` datetime NOT NULL,
  PRIMARY KEY (`solicitudcod`)
) ENGINE=InnoDB AUTO_INCREMENT=437 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sql_altas`
--

DROP TABLE IF EXISTS `sql_altas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sql_altas` (
  `sqlcod` int(10) NOT NULL AUTO_INCREMENT,
  `sqltabla` varchar(254) NOT NULL,
  `funcionalidadcod` int(10) NOT NULL,
  `sqlquery` text NOT NULL,
  `sqlultimamod` date NOT NULL,
  PRIMARY KEY (`sqlcod`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `stats`
--

DROP TABLE IF EXISTS `stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stats` (
  `statnombre` varchar(100) NOT NULL,
  `statestado` int(10) NOT NULL DEFAULT '0',
  `statfactivacion` datetime NOT NULL,
  `stattiempocaducidad` int(11) NOT NULL,
  `stattiempoultejecucion` float(11,2) NOT NULL,
  PRIMARY KEY (`statnombre`,`statestado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `stored_procedures`
--

DROP TABLE IF EXISTS `stored_procedures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stored_procedures` (
  `spcod` int(10) NOT NULL AUTO_INCREMENT,
  `spnombre` varchar(250) NOT NULL,
  `spoperacion` char(3) NOT NULL,
  `sptabla` varchar(250) NOT NULL,
  `spsqlstring` longtext NOT NULL,
  PRIMARY KEY (`spcod`),
  UNIQUE KEY `stored_procedures_nombre` (`spnombre`)
) ENGINE=InnoDB AUTO_INCREMENT=2377 DEFAULT CHARSET=utf8 COMMENT='Procedimientos almacenados';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `suma_adjuntos`
--

DROP TABLE IF EXISTS `suma_adjuntos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suma_adjuntos` (
  `clientecod` int(11) DEFAULT NULL,
  `archcod` int(11) DEFAULT NULL,
  `archnom` varchar(250) DEFAULT NULL,
  `archtam` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `superclientes`
--

DROP TABLE IF EXISTS `superclientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `superclientes` (
  `superclientecod` int(10) NOT NULL AUTO_INCREMENT,
  `clientecod` int(10) NOT NULL COMMENT 'Este cliente es el administrador del resto de clientes que pertenecen al supercliente.',
  `grupo` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `estado` int(10) NOT NULL DEFAULT '10',
  `servidorbd` varchar(50) NOT NULL,
  `usuariobd` varchar(50) NOT NULL,
  `clavebd` varchar(50) NOT NULL,
  `nombrebd` varchar(50) NOT NULL,
  `clienteftpe` varchar(50) NOT NULL,
  `clienteftpepass` varchar(50) NOT NULL,
  `clienteftps` varchar(50) NOT NULL,
  `clienteftpspass` varchar(50) NOT NULL,
  `hostftp` varchar(50) NOT NULL,
  `puertoftp` int(4) NOT NULL DEFAULT '0',
  `clienteftperuta` varchar(150) NOT NULL,
  `clienteftpsruta` varchar(150) NOT NULL,
  `clienteemail` varchar(150) NOT NULL,
  `clientecontacto` varchar(150) NOT NULL,
  `clientecontactonombre` varchar(150) NOT NULL,
  `operadorcod` int(10) unsigned NOT NULL DEFAULT '0',
  `carteroasignado` int(11) NOT NULL DEFAULT '0',
  `clientetipo` int(11) NOT NULL DEFAULT '0',
  `clientenombre` varchar(45) NOT NULL,
  `clienteapellidos` varchar(45) NOT NULL,
  `clienteempresa` varchar(45) NOT NULL,
  `clientecifnif` varchar(12) NOT NULL,
  `clientedireccion` varchar(225) NOT NULL,
  `clientelocalidad` varchar(45) NOT NULL,
  `clienteprovincia` varchar(45) NOT NULL,
  `paiscod` int(10) NOT NULL DEFAULT '0',
  `clientecodpostal` varchar(15) NOT NULL,
  `clientetel` varchar(20) NOT NULL,
  `idclientemrw` varchar(100) NOT NULL,
  `clientenivelcod` int(10) NOT NULL DEFAULT '0',
  `clientedescuento` tinyint(4) NOT NULL DEFAULT '0',
  `modalidadpago` varchar(100) NOT NULL,
  `gestorcod` int(11) NOT NULL DEFAULT '0',
  `estado_cliente` tinyint(3) NOT NULL DEFAULT '5',
  `tipo_facturacion` tinyint(3) unsigned NOT NULL DEFAULT '10',
  PRIMARY KEY (`superclientecod`),
  UNIQUE KEY `clientecod_UNIQUE` (`clientecod`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `supervision`
--

DROP TABLE IF EXISTS `supervision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supervision` (
  `supcod` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `supnombrescript` varchar(500) DEFAULT NULL,
  `supfinicio` datetime DEFAULT '0000-00-00 00:00:00',
  `supffin` datetime DEFAULT '0000-00-00 00:00:00',
  `supnotificado` datetime DEFAULT '0000-00-00 00:00:00',
  `supinfo` text,
  `supdata` longtext,
  PRIMARY KEY (`supcod`)
) ENGINE=InnoDB AUTO_INCREMENT=1985667 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tareas`
--

DROP TABLE IF EXISTS `tareas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tareas` (
  `tareacod` int(10) NOT NULL AUTO_INCREMENT,
  `tanombre` varchar(100) NOT NULL,
  `taresponsable` varchar(100) NOT NULL,
  `tadominio` varchar(100) NOT NULL DEFAULT '',
  `talenguaje` varchar(100) NOT NULL DEFAULT '',
  `tadescripcion` varchar(250) NOT NULL,
  `tafunciones` varchar(100) NOT NULL DEFAULT '0',
  `tapantallas` varchar(225) NOT NULL DEFAULT '0',
  `tafalta` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `taffin` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tauserultmod` varchar(100) NOT NULL DEFAULT '0',
  `tatipo` varchar(100) NOT NULL DEFAULT '0',
  `taobjetivo` varchar(225) NOT NULL,
  `tafultmod` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `taestado` smallint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tareacod`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='Tareas del sistema';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tarifas`
--

DROP TABLE IF EXISTS `tarifas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tarifas` (
  `tarifacod` int(11) NOT NULL AUTO_INCREMENT,
  `operadorcod` int(10) unsigned NOT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `estado` int(10) unsigned DEFAULT NULL,
  `codigo` varchar(100) NOT NULL,
  `descuento` float NOT NULL,
  `codigomrw` varchar(30) NOT NULL,
  PRIMARY KEY (`tarifacod`)
) ENGINE=InnoDB AUTO_INCREMENT=277 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tarifas_costes`
--

DROP TABLE IF EXISTS `tarifas_costes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tarifas_costes` (
  `operadorcostescod` int(10) NOT NULL AUTO_INCREMENT,
  `tarifacod` int(11) NOT NULL,
  `serviciotag` varchar(30) NOT NULL,
  `serviciocoste` decimal(10,2) DEFAULT NULL,
  `costesestado` tinyint(4) NOT NULL,
  PRIMARY KEY (`operadorcostescod`),
  KEY `fk_tarifas_tarifas_costes_idx` (`tarifacod`),
  CONSTRAINT `fk_tarifas_tarifas_costes` FOREIGN KEY (`tarifacod`) REFERENCES `tarifas` (`tarifacod`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=635 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tarifas_operador`
--

DROP TABLE IF EXISTS `tarifas_operador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tarifas_operador` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `operadorcod` int(10) unsigned NOT NULL,
  `tipo_w_c` varchar(1) DEFAULT 'w',
  `volumen_anual_mb` int(10) unsigned NOT NULL,
  `precio_mb` float(4,2) NOT NULL,
  `precio_pack_web` float(6,2) NOT NULL,
  `estado` tinyint(10) unsigned DEFAULT '10',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tarifas_v30`
--

DROP TABLE IF EXISTS `tarifas_v30`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tarifas_v30` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pesocontratado` decimal(12,2) DEFAULT NULL,
  `costemega` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pesocontratado_UNIQUE` (`pesocontratado`)
) ENGINE=InnoDB AUTO_INCREMENT=235 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `textos_notificaciones`
--

DROP TABLE IF EXISTS `textos_notificaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `textos_notificaciones` (
  `notificacioncorreocod` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(225) NOT NULL,
  `idiomacod` varchar(3) NOT NULL,
  `asunto` varchar(255) NOT NULL,
  `cuerpoclientehtml` longtext NOT NULL,
  `cuerpoclientetxt` longtext NOT NULL,
  `cuerpoadminhtml` longtext NOT NULL,
  `cuerpoadmintxt` longtext NOT NULL,
  `estado` tinyint(4) NOT NULL,
  `operadorcod` int(10) NOT NULL,
  `tiponotificacion` varchar(20) NOT NULL,
  PRIMARY KEY (`notificacioncorreocod`),
  UNIQUE KEY `nombre` (`nombre`,`idiomacod`,`operadorcod`)
) ENGINE=InnoDB AUTO_INCREMENT=1038 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipoclientes`
--

DROP TABLE IF EXISTS `tipoclientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoclientes` (
  `tipoclientecod` int(10) NOT NULL AUTO_INCREMENT,
  `tipoclientenombre` varchar(45) DEFAULT NULL,
  `tipoclientedesc` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`tipoclientecod`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipos_integraciones`
--

DROP TABLE IF EXISTS `tipos_integraciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipos_integraciones` (
  `tipointegracioncod` int(10) NOT NULL AUTO_INCREMENT,
  `tinombre` varchar(150) NOT NULL DEFAULT '',
  `tidescripcion` varchar(250) NOT NULL,
  `tifinicio` date NOT NULL,
  `tiestado` int(4) NOT NULL DEFAULT '10',
  PRIMARY KEY (`tipointegracioncod`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tmp_mig_lotes`
--

DROP TABLE IF EXISTS `tmp_mig_lotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmp_mig_lotes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_registro` datetime NOT NULL,
  `descripcion` longtext,
  `lote_viejo_id` int(11) DEFAULT NULL,
  `contacto_viejo_id` int(11) DEFAULT NULL,
  `lote_nuevo_id` int(11) DEFAULT NULL,
  `lote_parte_nuevo_id` int(11) DEFAULT NULL,
  `grupo_destinatarios_id` int(11) DEFAULT NULL,
  `destinatario_nuevo_id` int(11) DEFAULT NULL,
  `sqlcode` int(11) DEFAULT NULL,
  `sqltext` varchar(1024) DEFAULT NULL,
  `conexionid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=235157 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tracking`
--

DROP TABLE IF EXISTS `tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracking` (
  `trackingcod` varchar(50) NOT NULL DEFAULT '',
  `tracktipo` int(4) NOT NULL DEFAULT '2' COMMENT '1: Mail Admin; 2: Mail Admin y Sistema; 3: Alerta Pantalla',
  `trackfechagmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `trackgravedad` int(4) NOT NULL DEFAULT '0' COMMENT '1: Notificacion; 2: Error',
  `notificacioncod` int(10) NOT NULL DEFAULT '0',
  `trackmotivo` varchar(255) NOT NULL,
  `trackdescripcion` varchar(255) NOT NULL,
  `trackestado` tinyint(4) NOT NULL DEFAULT '10',
  PRIMARY KEY (`trackingcod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tracking_email`
--

DROP TABLE IF EXISTS `tracking_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracking_email` (
  `trackingcod` varchar(50) NOT NULL,
  `trackefechagmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `trackegravedad` int(4) NOT NULL DEFAULT '0',
  `trackepaisnombre` varchar(50) NOT NULL DEFAULT '1',
  `trackebandera` varchar(255) NOT NULL DEFAULT '1',
  `trackeidioma` int(10) NOT NULL DEFAULT '0',
  `usuarioemail` varchar(100) NOT NULL DEFAULT '',
  `trackeemailsistema` varchar(100) NOT NULL DEFAULT '',
  `clientecod` int(10) NOT NULL DEFAULT '0',
  `trackeclientenombre` varchar(100) NOT NULL DEFAULT '0',
  `tracketestigoentrega` int(4) NOT NULL DEFAULT '0',
  `trackeformatotitular` int(4) NOT NULL DEFAULT '0',
  `trackeasunto` varchar(255) NOT NULL DEFAULT '',
  `tracketitular` varchar(255) NOT NULL DEFAULT '',
  `trackedetalle` text NOT NULL,
  `trackeestado` tinyint(4) NOT NULL DEFAULT '10',
  PRIMARY KEY (`trackingcod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tracking_pantalla`
--

DROP TABLE IF EXISTS `tracking_pantalla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracking_pantalla` (
  `trackingcod` varchar(50) NOT NULL,
  `trackpfecha` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `trackpgravedad` int(4) NOT NULL DEFAULT '0',
  `trackporigen` int(4) NOT NULL DEFAULT '0',
  `trackpnombreclase` varchar(100) NOT NULL,
  `trackpnombremetodo` varchar(100) NOT NULL,
  `trackpnombrescript` varchar(100) NOT NULL,
  `paiscod` int(10) NOT NULL DEFAULT '1',
  `clientecod` int(10) NOT NULL DEFAULT '0',
  `usuariocod` int(10) NOT NULL DEFAULT '0',
  `trackpdescripcion` text NOT NULL,
  `trackparray` text NOT NULL,
  `trackpestado` tinyint(4) NOT NULL DEFAULT '10',
  PRIMARY KEY (`trackingcod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `upd_estado30_actualizados`
--

DROP TABLE IF EXISTS `upd_estado30_actualizados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upd_estado30_actualizados` (
  `fechahora` datetime DEFAULT NULL,
  `clientecod` int(11) DEFAULT NULL,
  `nombrebd` varchar(50) DEFAULT NULL,
  `perfilproductocod` int(11) DEFAULT NULL,
  `msgcod` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `uso_categorias`
--

DROP TABLE IF EXISTS `uso_categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uso_categorias` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `uso_cliente`
--

DROP TABLE IF EXISTS `uso_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uso_cliente` (
  `clientecod` int(11) NOT NULL,
  `uso` varchar(300) DEFAULT NULL,
  `operadorcod` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `usuariogmt_pais`
--

DROP TABLE IF EXISTS `usuariogmt_pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuariogmt_pais` (
  `usuariogmt` varchar(125) CHARACTER SET utf8 NOT NULL,
  `continente` varchar(125) CHARACTER SET utf8 NOT NULL,
  `paisnombre` varchar(125) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`usuariogmt`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci COMMENT='Tabla que nos combina la franja horaria con el pais';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `usuarios_activos`
--

DROP TABLE IF EXISTS `usuarios_activos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios_activos` (
  `fecha` date NOT NULL,
  `usuarioemail` varchar(100) NOT NULL,
  `rolcod` int(10) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `ultimo_acceso` bigint(10) NOT NULL,
  `ultima_pagina` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fecha`,`usuarioemail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `usuarios_rh1no`
--

DROP TABLE IF EXISTS `usuarios_rh1no`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios_rh1no` (
  `usuariocod` int(10) NOT NULL AUTO_INCREMENT,
  `operadorcod` int(10) NOT NULL,
  `codigopoint` int(10) NOT NULL,
  `rolcod` int(10) NOT NULL,
  `usuarioemail` varchar(150) NOT NULL,
  `usuariopass` varchar(45) NOT NULL,
  `usuarionombre` varchar(45) NOT NULL,
  `usuarioapellido` varchar(45) NOT NULL,
  `usuarioempresa` varchar(45) NOT NULL,
  `usuariodireccion` varchar(45) DEFAULT NULL,
  `usuariocifnif` varchar(12) NOT NULL,
  `usuariolocalidad` varchar(30) NOT NULL,
  `usuarioprovincia` varchar(30) NOT NULL,
  `usuariocodpos` varchar(15) NOT NULL,
  `paiscod` int(10) NOT NULL,
  `usuariotel` varchar(20) NOT NULL,
  `usuariogmt` varchar(125) NOT NULL,
  `usuariotipo` varchar(45) NOT NULL,
  `usuarioestado` tinyint(2) NOT NULL DEFAULT '10',
  `usuarioultfecha` datetime NOT NULL,
  `usuarioultip` varchar(15) NOT NULL,
  `avatar` varchar(500) NOT NULL,
  `gestorcod` int(11) DEFAULT '0',
  `fechaalta` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usuario_rhino_id_parent` int(10) DEFAULT NULL COMMENT 'Id del usuario rhino del que depende este',
  PRIMARY KEY (`usuariocod`)
) ENGINE=InnoDB AUTO_INCREMENT=1261 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `view_hilo`
--

DROP TABLE IF EXISTS `view_hilo`;
/*!50001 DROP VIEW IF EXISTS `view_hilo`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_hilo` (
  `hilo_id` tinyint NOT NULL,
  `mensaje_contenido_id` tinyint NOT NULL,
  `mensaje_respuesta_id` tinyint NOT NULL,
  `msgcod` tinyint NOT NULL,
  `msgpadre` tinyint NOT NULL,
  `usuario_id` tinyint NOT NULL,
  `clientecod` tinyint NOT NULL,
  `usuariocod` tinyint NOT NULL,
  `perfilproductocod` tinyint NOT NULL,
  `msgasunto` tinyint NOT NULL,
  `msgmaildestino` tinyint NOT NULL,
  `msgnomdestinatario` tinyint NOT NULL,
  `tienecanalemail` tinyint NOT NULL,
  `tienecanalsms` tinyint NOT NULL,
  `tienecanalimpresion` tinyint NOT NULL,
  `lote_id` tinyint NOT NULL,
  `fecha_inicio_proceso_gmt0` tinyint NOT NULL,
  `hilo_borrador_id` tinyint NOT NULL,
  `codigo_visible_usuario` tinyint NOT NULL,
  `hilocod` tinyint NOT NULL,
  `codigoestadoredaccion` tinyint NOT NULL,
  `hilofalta` tinyint NOT NULL,
  `hilocfscode` tinyint NOT NULL,
  `hiloestadoarchivado` tinyint NOT NULL,
  `codigoaccesoverifyremitente` tinyint NOT NULL,
  `permitiraceptacionvsrechazo` tinyint NOT NULL,
  `codigoestadoflujo` tinyint NOT NULL,
  `estadonombrecorto` tinyint NOT NULL,
  `vecesenviado` tinyint NOT NULL,
  `vecesentregado` tinyint NOT NULL,
  `vecesrespondido` tinyint NOT NULL,
  `vistoestado` tinyint NOT NULL,
  `tuerca` tinyint NOT NULL,
  `archivosadjuntos` tinyint NOT NULL,
  `archivosadjuntosrespuesta` tinyint NOT NULL,
  `archivosadjuntosdescargados` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_hilos_estados_flujo`
--

DROP TABLE IF EXISTS `view_hilos_estados_flujo`;
/*!50001 DROP VIEW IF EXISTS `view_hilos_estados_flujo`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_hilos_estados_flujo` (
  `hilo_id` tinyint NOT NULL,
  `msgenviados` tinyint NOT NULL,
  `msgentregados` tinyint NOT NULL,
  `msglecturas` tinyint NOT NULL,
  `msgrespuestas` tinyint NOT NULL,
  `msgconformidadpositiva` tinyint NOT NULL,
  `msgconformidadnegativa` tinyint NOT NULL,
  `msgrehusados` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_hilos_estados_flujo_final`
--

DROP TABLE IF EXISTS `view_hilos_estados_flujo_final`;
/*!50001 DROP VIEW IF EXISTS `view_hilos_estados_flujo_final`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_hilos_estados_flujo_final` (
  `hilo_id` tinyint NOT NULL,
  `msgestado` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_estadohilo`
--

DROP TABLE IF EXISTS `vw_estadohilo`;
/*!50001 DROP VIEW IF EXISTS `vw_estadohilo`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_estadohilo` (
  `hilo_id` tinyint NOT NULL,
  `idestado` tinyint NOT NULL,
  `estado` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `view_hilo`
--

/*!50001 DROP TABLE IF EXISTS `view_hilo`*/;
/*!50001 DROP VIEW IF EXISTS `view_hilo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`myconfirms`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_hilo` AS select distinct `h`.`id` AS `hilo_id`,`mc`.`id` AS `mensaje_contenido_id`,`mr`.`id` AS `mensaje_respuesta_id`,`mc`.`msgcod` AS `msgcod`,`mc`.`msgpadre` AS `msgpadre`,`h`.`usuario_id` AS `usuario_id`,`u`.`clientecod` AS `clientecod`,`u`.`usuariocod` AS `usuariocod`,`h`.`perfilproductocod` AS `perfilproductocod`,`h`.`msgasunto` AS `msgasunto`,coalesce(`ce`.`msgmaildestino`,`cs`.`smstelefono`,'---') AS `msgmaildestino`,coalesce(`ce`.`msgnomdestinatario`,`cs`.`smstelefono`,`ci`.`contactonombre`) AS `msgnomdestinatario`,(case when (`ce`.`hilo_id` is not null) then 1 else 0 end) AS `tienecanalemail`,(case when (`cs`.`hilo_id` is not null) then 1 else 0 end) AS `tienecanalsms`,(case when (`ci`.`hilo_id` is not null) then 1 else 0 end) AS `tienecanalimpresion`,`l`.`id` AS `lote_id`,`l`.`fecha_inicio_proceso_gmt0` AS `fecha_inicio_proceso_gmt0`,`l`.`hilo_borrador_id` AS `hilo_borrador_id`,`l`.`codigo_visible_usuario` AS `codigo_visible_usuario`,`h`.`hilocod` AS `hilocod`,`h`.`codigoestadoredaccion` AS `codigoestadoredaccion`,`h`.`hilofalta` AS `hilofalta`,`h`.`hilocfscode` AS `hilocfscode`,`h`.`hiloestadoarchivado` AS `hiloestadoarchivado`,`h`.`codigoaccesoverifyremitente` AS `codigoaccesoverifyremitente`,coalesce(`h`.`permitiraceptacionvsrechazo`,0) AS `permitiraceptacionvsrechazo`,(select `d`.`estadocodcfs` from (`patt_hilos_estados_flujo` `e` join `estados_cfs` `d` on((`d`.`estadocodcfs` = `e`.`msgestado`))) where (`e`.`hilo_id` = `h`.`id`) order by `d`.`numeroordenflujo` desc,`e`.`fechagmtestadoflujo` desc,`e`.`fechaestadoflujo` desc limit 1) AS `codigoestadoflujo`,(select `d`.`estadonombrecorto` from (`patt_hilos_estados_flujo` `e` join `estados_cfs` `d` on((`d`.`estadocodcfs` = `e`.`msgestado`))) where (`e`.`hilo_id` = `h`.`id`) order by `d`.`numeroordenflujo` desc,`e`.`fechagmtestadoflujo` desc,`e`.`fechaestadoflujo` desc limit 1) AS `estadonombrecorto`,(select count(1) from `patt_hilos_estados_flujo` `e` where ((`e`.`hilo_id` = `h`.`id`) and (`e`.`msgestado` = 20))) AS `vecesenviado`,(select count(1) from `patt_hilos_estados_flujo` `e` where ((`e`.`hilo_id` = `h`.`id`) and (`e`.`msgestado` = 22))) AS `vecesentregado`,(select count(1) from `patt_hilos_estados_flujo` `e` where ((`e`.`hilo_id` = `h`.`id`) and (`e`.`msgestado` in (30,32,35)))) AS `vecesrespondido`,(select coalesce(max(`e`.`vistoestado`),0) from `patt_hilos_estados_flujo` `e` where (`e`.`hilo_id` = `h`.`id`)) AS `vistoestado`,coalesce((select 10 from `patt_hilo_tarea` where ((`patt_hilo_tarea`.`codigo_estado_tarea` in (30,40,50)) and (`patt_hilo_tarea`.`codigo_tipo_tarea_hilo` in (15,25,35,45,55)) and (`patt_hilo_tarea`.`hilo_id` = `h`.`id`))),20) AS `tuerca`,(select count(1) from `patt_mensajes_adjuntos` `ma` where (`ma`.`mensaje_id` = `mc`.`id`)) AS `archivosadjuntos`,(select count(1) from `patt_mensajes_adjuntos` `ma` where (`ma`.`mensaje_id` = `mr`.`id`)) AS `archivosadjuntosrespuesta`,(select count(1) from (`patt_mensajes_adjuntos` `ma` join `patt_mensajes_adjuntos_descargas` `mad` on((`mad`.`mensaje_adjunto_id` = `ma`.`id`))) where (`ma`.`mensaje_id` = `mc`.`id`)) AS `archivosadjuntosdescargados` from (((((((((`patt_hilos` `h` join `clnt_usuario` `u` on((`u`.`id` = `h`.`usuario_id`))) join `patt_mensajes` `mc` on(((`mc`.`hilo_id` = `h`.`id`) and (coalesce(`mc`.`msgpadre`,0) = 0)))) left join `patt_mensajes` `mr` on(((`mr`.`hilo_id` = `h`.`id`) and (`mr`.`msgpadre` > 0)))) left join `patt_hilos_canal_email` `ce` on((`ce`.`hilo_id` = `h`.`id`))) left join `patt_hilos_canal_sms` `cs` on((`cs`.`hilo_id` = `h`.`id`))) left join `patt_hilos_canal_impresion` `ci` on((`ci`.`hilo_id` = `h`.`id`))) left join `patt_lote_parte_hilo` `lph` on((`h`.`id` = `lph`.`hilo_id`))) left join `patt_lote_parte` `lp` on((`lph`.`lote_parte_id` = `lp`.`id`))) left join `patt_lote` `l` on((`l`.`id` = `lp`.`lote_id`))) where (`h`.`codigoestadoredaccion` in (10,20,90)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_hilos_estados_flujo`
--

/*!50001 DROP TABLE IF EXISTS `view_hilos_estados_flujo`*/;
/*!50001 DROP VIEW IF EXISTS `view_hilos_estados_flujo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`myconfirms`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_hilos_estados_flujo` AS select `e`.`hilo_id` AS `hilo_id`,sum((case `e`.`msgestado` when 20 then 1 when 21 then 1 else 0 end)) AS `msgenviados`,sum((case `e`.`msgestado` when 22 then 1 else 0 end)) AS `msgentregados`,sum((case `e`.`msgestado` when 25 then 1 when 26 then 1 else 0 end)) AS `msglecturas`,sum((case `e`.`msgestado` when 30 then 1 when 36 then 1 else 0 end)) AS `msgrespuestas`,sum((case `e`.`msgestado` when 32 then 1 when 37 then 1 else 0 end)) AS `msgconformidadpositiva`,sum((case `e`.`msgestado` when 35 then 1 when 38 then 1 else 0 end)) AS `msgconformidadnegativa`,sum((case `e`.`msgestado` when 40 then 1 else 0 end)) AS `msgrehusados` from (`patt_hilos_estados_flujo` `e` join `estados_cfs` `d` on((`d`.`estadocodcfs` = `e`.`msgestado`))) group by `e`.`hilo_id` order by `d`.`numeroordenflujo` desc,`e`.`fechagmtestadoflujo` desc,`e`.`fechaestadoflujo` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_hilos_estados_flujo_final`
--

/*!50001 DROP TABLE IF EXISTS `view_hilos_estados_flujo_final`*/;
/*!50001 DROP VIEW IF EXISTS `view_hilos_estados_flujo_final`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`myconfirms`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_hilos_estados_flujo_final` AS select `e`.`hilo_id` AS `hilo_id`,max(`e`.`msgestado`) AS `msgestado` from (`patt_hilos_estados_flujo` `e` join `estados_cfs` `d` on((`d`.`estadocodcfs` = `e`.`msgestado`))) group by `e`.`hilo_id` order by `d`.`numeroordenflujo` desc,`e`.`fechagmtestadoflujo` desc,`e`.`fechaestadoflujo` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_estadohilo`
--

/*!50001 DROP TABLE IF EXISTS `vw_estadohilo`*/;
/*!50001 DROP VIEW IF EXISTS `vw_estadohilo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`myconfirms`@`192.168.0.%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_estadohilo` AS select `e`.`hilo_id` AS `hilo_id`,`e`.`msgestado` AS `idestado`,`d`.`estadonombre` AS `estado` from (`patt_hilos_estados_flujo` `e` join `estados_cfs` `d` on((`d`.`estadocodcfs` = `e`.`msgestado`))) order by `d`.`numeroordenflujo` desc,`e`.`fechagmtestadoflujo` desc,`e`.`fechaestadoflujo` desc limit 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-24 13:16:16
