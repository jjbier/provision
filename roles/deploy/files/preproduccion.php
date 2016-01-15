<?php

/*
 * CONEXION A BASE DE DATOS
 * Y CONFIGURACION
 */

define("SISTEMA", 'ConfirmSign');
define('SGBD', 'mysql');
//define('SGBD', 'oracle');
define("BASEDATOS_ADMIN", 'cfs_admin_2_0');  //base de datos de administración
define("SERVIDORBD_ADMIN", '192.168.0.178');
define("USUARIOBD_ADMIN", 'myconfirms');
define("CLAVEBD_ADMIN", 'Impresionant3');

define("TLF_INFO_MRW", '902 501 350');
define("TLF_INTERN_MRW", '902 300 403');
define("DOMINIO_MRW", 'mrw.es');

define("TLF_INFO_CFS", '902 006 365');
define("TLF_INTERN_CFS", '+34 881 090 396');
define("DOMINIO_CFS", 'confirmsign.com');


define("ENVIAMAIL", 1);
define("ENVIA_ALARMAS", true);
define("ENVIA_SMS", true);
define("SMS_DEFAULT_PROVIDER", 'esendex'); /// trendoo || esendex de momento.
define("SMS_PROVIDER_ESENDEX_ACCOUNT", 'EX0196146');
define("SMS_PROVIDER_ESENDEX_EMAIL", 'clopez@confirmsign.com');
define("SMS_PROVIDER_ESENDEX_PASS", 'eMnjqkYCqPWy');

define('WORDPRESS', false);
define('LIMITE_IPS', false);
define('LIMITE_CLIENTES', true);
define('DEBUG', false);
define('ENTORNO_PRODUCCION', false);
define('OBRAS', false);
define('PERMITIR_BUSCADORES', false);

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
    "77.26.136.28",     // Ramón Ferrol
    "88.24.37.67" ,      // Ignacio Achirica MRW
    "213.60.35.241",      //juan skype
    "190.247.140.61" //Frankie argentina
);


define("BASEDATOS_MRW", 'clientesmrw');  //base de datos de administración
define("SERVIDORBD_MRW", '192.168.0.178');
define("USUARIOBD_MRW", 'myconfirms');
define("CLAVEBD_MRW", 'Impresionant3');

define("BASEDATOS_PUBLICA", 'cfs_cms');  //base de datos de PUBLICAistración
define("SERVIDORBD_PUBLICA", '192.168.0.178');
define("USUARIOBD_PUBLICA", 'myconfirms');
define("CLAVEBD_PUBLICA", 'Impresionant3');



// SMTP para la plataforma CFS
define('DEFAULT_SMTP_HOST', '192.168.0.168');
define('DEFAULT_SMTP_PORT', 25);
define('DEFAULT_SMTP_AUTH', 1);
define('DEFAULT_SMTP_DEBUG', false);
define('DEFAULT_SMTP_USER', 'sistema.confirmsign.com');
define('DEFAULT_SMTP_PASS', 'unDEe37ROLE+');

// SMTP para notificaciones técnicas (Log, avisos de error...etc)
define('TECNICO_SMTP_HOST', '192.168.0.168');
define('TECNICO_SMTP_PORT', 25);
define('TECNICO_SMTP_AUTH', 1);
define('TECNICO_SMTP_DEBUG', false);
define('TECNICO_SMTP_USER', 'sistema.confirmsign.com');
define('TECNICO_SMTP_PASS', 'unDEe37ROLE+');
// Emails para notificaciones técnicas
define('TECNICO_MAIL_ORIGEN', 'debug@confirmsign.com');
define('TECNICO_MAIL_DESTINO', 'debug@confirmsign.com');

// SMTP para el operador MRW
define('MRW_SMTP_HOST', '192.168.0.168');
define('MRW_SMTP_PORT', 25);
define('MRW_SMTP_AUTH', 1);
define('MRW_SMTP_DEBUG', false);
define('MRW_SMTP_USER', 'sistema.confirmsign.com');
define('MRW_SMTP_PASS', 'unDEe37ROLE+');


///opt/AS2/RSSBusApps/data/as2connector/profiles/MRW/{archive,Incoming,Logs,Outgoing,Pending,PedingInfo,Sent}
//define('AS2_INCOMING_FOLDER', CFS_DOCUMENT_ROOT.'/rh1no/iado/archivos/');
define('AS2_INCOMING_FOLDER', CFS_DOCUMENT_ROOT.'/opt/jetty/webapps/rssbus/WEB-INF/data/as2connector/profiles/MRW/Incoming/');

define('AS2_INCOMING_USER', 'as2incoming');
define('AS2_INCOMING_PASS', 'cFs123.as21n');
define('AS2_INCOMING_HOST', '217.130.22.14');



//define('AS2_OUTGOING_FOLDER', CFS_DOCUMENT_ROOT.'/rh1no/iadi/Outgoing/');
define('AS2_OUTGOING_FOLDER', CFS_DOCUMENT_ROOT.'/opt/jetty/webapps/rssbus/WEB-INF/data/as2connector/profiles/MRW/Outgoing/');
define('AS2_OUTGOING_USER', 'as2outgoing');
define('AS2_OUTGOING_PASS', 'cFs123.as20uT');
define('AS2_OUTGOING_HOST', '217.130.22.14');

// Carpeta donde se mueven los archivos del AS2 para su procesado la sacamos fuera del proyecto
define('AS2_PROCESS_FOLDER', CFS_DOCUMENT_ROOT . "/../_procesos/3/iado/");


#Activación de modo Sandbox
define('PAYPAL_DEBUG', true);

#Endpoint para la URL de la API de pagos Easy
define('PAYPAL_URL', 'https://www.sandbox.paypal.com/cgi-bin/webscr/');

#Configuración de la API de pagos Mensaje Factura
define('PAYPAL_APIUSERID', 'dferrer-facilitator_api1.confirmsign.com');
define('PAYPAL_APIPASS', '1384257636');
define('PAYPAL_APISIGNATURE', 'A2BzfXK82-m63kGG0tbz-z39o6msAAxbMeXoxN2apUozKN1rTtj0N-Rf');
define('PAYPAL_APIAPPID', 'APP-80W284485P519543T');
define('PAYPAL_APICFSMAIL', 'dferrer-facilitator@confirmsign.com');

define("PATH_PHP", '/usr/local/php-5.2.5/lib/php');
define("PATH_PHPMAILER", CFS_DOCUMENT_ROOT.'/_lib/PHPMailer_5.2.1/');

#Fully Qualified Domain name used for
define('SMTP_HELO_FQDN','beta.confirmsign.com');
define('SMTP_VERIFY_MAIL','sistema@beta.confirmsign.com');