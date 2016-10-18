<?php


// ** MySQL settings ** //
/** The name of the database for WordPress */
define('DB_NAME', 'scotchbox');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'root');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

define('AUTH_KEY',         'Ig4:QK=HyohEE_p#d{^IC35yw8Qe4C^3a~}4,v,86B#~D#-G/QOh;6-TK{%*Qs5^');
define('SECURE_AUTH_KEY',  '!0x2L0.6VMOdU+jdf5ro-Gp0%<<tYQG[l[Yg2CAxtbnan.7I+%B_q4*B5:e`swj)');
define('LOGGED_IN_KEY',    '3TSJ_*m2ejFRik(yB!=_dvQLi/6!W-@+4^QIZ3pC5|]rPOlu~*P#?73Sy<=!_*3`');
define('NONCE_KEY',        'k/2K`6m?)gU&INd)7-(o#Iz!7Z/MHfclky|vj6_5SBP|rA1-,-/4-WOZg0s+hVc=');
define('AUTH_SALT',        'izGuN!f%tnYYT41.xP~00%h@}WxeLqu`^d6+A8h?7pOW_C?-(v9edY+t!L|E2Xp8');
define('SECURE_AUTH_SALT', '~.:4bL+ng/_,{~-tEjV!Jm+-%HJ3 XZ%!qT,k%tOP)=~<oV_;:W}):L-dcs)*(|t');
define('LOGGED_IN_SALT',   'fFh-V6X=z.O#uN>}(FaG<tlZWej]D:Br#8YSo`oxg`??BPenoM;{s>IPGX;PJXk^');
define('NONCE_SALT',       '5hPUUgm/-9M@CrP7}+w*ocN.zSP*syJ.c{,J>p,7aoy8<<mNu/^M+Y}0`Ck?H)-^');


$table_prefix = 'wp_';





/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
