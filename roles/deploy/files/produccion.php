<?php

/*
 * CONEXION A BASE DE DATOS
 * Y CONFIGURACION
 */

define("SISTEMA", 'ConfirmSign');
define('SGBD', 'mysql');
//define('SGBD', 'oracle');
define("BASEDATOS_ADMIN", 'cfs_admin_2_0');
define("SERVIDORBD_ADMIN", '192.168.11.7');
define("USUARIOBD_ADMIN", 'myconfirms');
define("CLAVEBD_ADMIN", 'Impresionant3');

define('WORDPRESS', false);
define("ENVIAMAIL", 1);
define("ENVIA_ALARMAS", true);
define("ENVIA_SMS", true);
define("SMS_DEFAULT_PROVIDER", 'esendex'); /// trendoo || esendex de momento.
define("SMS_PROVIDER_ESENDEX_ACCOUNT", 'EX0196146');
define("SMS_PROVIDER_ESENDEX_EMAIL", 'clopez@confirmsign.com');
define("SMS_PROVIDER_ESENDEX_PASS", 'eMnjqkYCqPWy');



define("TLF_INFO_MRW", '902 501 350');
define("TLF_INTERN_MRW", '902 300 403');
define("DOMINIO_MRW", 'mrw.es');

define("TLF_INFO_CFS", '902 006 365');
define("TLF_INTERN_CFS", '+34 881 090 396');
define("DOMINIO_CFS", 'confirmsign.com');
define('PERMITIR_BUSCADORES', true);


$ips_permitidas = array(
	"212.49.190.226",
	"91.117.107.85",	// CFS
	"127.0.0.1",		// Localhost
	"77.27.111.88",	    // ??
	"91.116.151.110",   // ??
	"212.230.185.1",	// MRW Madrid
	"95.62.232.2",	    // Jsk
	"80.38.170.53",     //cfs2 con ruta cfsfs.cfslocalhost
	"77.27.13.232",     //Paula Casa
	"37.11.190.53",     // Ramon Casa
    "213.60.9.11",      // Jsk temporal
    "95.125.73.220",    // Juanjo MRW
     "88.8.239.78",     // Juan Ara MRW
    "77.26.136.28",     // Ram�n Ferrol
    "88.24.37.67",      // Ignacio Achirica MRW
    "83.44.46.70"       // Xavi MRW

);

$autorizados_paypal =array(
	1,  //monica
	4,      //Frankie
	8,      //Fer
	60,     //Paula plopez@confirmsign.com en operador1
	196,    //Josuke
	323,    //Artx
	327,    //paulalopezf@gmail.com en operador1
	365,    //Sonia
	437,    //Alvaro
	445,    //Alvaro
	470,    //Alvaro
	547,    //Alvaro
	706,   //Ivan
	719,      //Carlos
	750,  //jews@confirmsign.com
	525,      // eganet@laconnetwork
	350, //info@santuaryservite.es
	1656, // jose.arbues@gmail.com
	1697,    // notificaciones@iberlega.es en cfs
	1331 //rparada@confirmsign.com en operadorcod1
);
define('LIMITE_IPS', false);
define('LIMITE_CLIENTES', false);
define('DEBUG', false);
define('ENTORNO_PRODUCCION', true);
define('OBRAS', false);

define('PATH_BASE', '/home/confirmsign.com/public_html/');


define("BASEDATOS_MRW", 'clientesmrw');
define("SERVIDORBD_MRW", '192.168.11.7');
define("USUARIOBD_MRW", 'myconfirms');
define("CLAVEBD_MRW", 'Impresionant3');

define("BASEDATOS_PUBLICA", 'cfs_cms');
define("SERVIDORBD_PUBLICA", '192.168.11.7');
define("USUARIOBD_PUBLICA", 'myconfirms');
define("CLAVEBD_PUBLICA", 'Impresionant3');

// SMTP para la plataforma CFS
// define('DEFAULT_SMTP_HOST', '192.168.11.1');
define('DEFAULT_SMTP_HOST', '192.168.11.200');
define('DEFAULT_SMTP_PORT', 25);
define('DEFAULT_SMTP_AUTH', 1);
define('DEFAULT_SMTP_DEBUG', false);
// define('DEFAULT_SMTP_USER', 'sistema.confirmsign.com');
define('DEFAULT_SMTP_USER', 'sistema@confirmsign.com');
// define('DEFAULT_SMTP_PASS', 'unDEe37ROLE+');
define('DEFAULT_SMTP_PASS', 'WaYbT4WLdFXe4xUYnOiN');


// SMTP para notificaciones t�cnicas (Log, avisos de error...etc)
define('TECNICO_SMTP_HOST', '192.168.11.1');
define('TECNICO_SMTP_PORT', 25);
define('TECNICO_SMTP_AUTH', 1);
define('TECNICO_SMTP_DEBUG', false);
define('TECNICO_SMTP_USER', 'sistema.confirmsign.com');
define('TECNICO_SMTP_PASS', 'unDEe37ROLE+');
// Emails para notificaciones t�cnicas
define('TECNICO_MAIL_ORIGEN', 'tecnico@confirmsign.com');
define('TECNICO_MAIL_DESTINO', 'tecnico@confirmsign.com');


// SMTP para el operador MRW
define('MRW_SMTP_HOST', 'ims.mrw.es');
define('MRW_SMTP_PORT', 25);
define('MRW_SMTP_AUTH', 1);
define('MRW_SMTP_DEBUG', false);
define('MRW_SMTP_USER', 'burofax');
define('MRW_SMTP_PASS', 'KwCO0-Zp3j');



///opt/AS2/RSSBusApps/data/as2connector/profiles/MRW/{archive,Incoming,Logs,Outgoing,Pending,PedingInfo,Sent}
#define('AS2_INCOMING_FOLDER', '/opt/AS2/RSSBusApps/data/as2connector/profiles/MRW/Incoming/');
define('AS2_INCOMING_FOLDER', '/opt/jetty/webapps/rssbus/WEB-INF/data/as2connector/profiles/MRW/Incoming/');
define('AS2_INCOMING_USER', 'as2incoming');
define('AS2_INCOMING_PASS', 'cFs123.as21n');
define('AS2_INCOMING_HOST', '217.130.22.14');



#define('AS2_OUTGOING_FOLDER', '/opt/AS2/RSSBusApps/data/as2connector/profiles/MRW/Outgoing/');
define('AS2_OUTGOING_FOLDER', '/opt/jetty/webapps/rssbus/WEB-INF/data/as2connector/profiles/MRW/Outgoing/');
define('AS2_OUTGOING_USER', 'as2outgoing');
define('AS2_OUTGOING_PASS', 'cFs123.as20uT');
define('AS2_OUTGOING_HOST', '217.130.22.14');

// Carpeta donde se mueven los archivos del AS2 para su procesado la sacamos fuera del proyecto
define('AS2_PROCESS_FOLDER', CFS_DOCUMENT_ROOT . "/../_procesos/3/iado/");


#Activaci�n de modo Sandbox
define('PAYPAL_DEBUG', false);

#Endpoint para la URL de la API de pagos Easy
define('PAYPAL_URL', 'https://www.paypal.com/cgi-bin/webscr/');

#Configuraci�n de la API de pagos Mensaje Factura
define('PAYPAL_APIUSERID', 'pay_api1.confirmsign.com');
define('PAYPAL_APIPASS', 'ZJUENCF9WY2ZDKWT');
define('PAYPAL_APISIGNATURE', 'AY8I0Ewvjla8ZMt1ElG21tGP3v98AOhhkX7RVcFVvGRw-B2D8duJt0YM');
define('PAYPAL_APIAPPID', 'APP-2GB6943248737963V');
define('PAYPAL_APICFSMAIL', 'pay@confirmsign.com');


define('PATH_BASEE', '/home/confirmsign.com/public_html/');
define('PATH_PHP', '/usr/share/php');
//define('PATH_PHPMAILER', '/usr/share/pear/Mail/');
define('PATH_PHPMAILER', '/usr/share/pear/');
define('ANALYTICS_USER', 'confirmsign@gmail.com');
define('ANALYTICS_PASS', 'tuputamadre1001veces');


#Fully Qualified Domain name used for
define('SMTP_HELO_FQDN','beta.confirmsign.com');
define('SMTP_VERIFY_MAIL','sistema@beta.confirmsign.com');
