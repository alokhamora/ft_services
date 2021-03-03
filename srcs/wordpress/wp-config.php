<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'Angelina' );

/** MySQL database password */
define( 'DB_PASSWORD', '1234' );

/** MySQL hostname */
define( 'DB_HOST', 'mysql-svc' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '=.DUs|8Uo6tUuu82^;2,}h*Pn4m/Dcp]At=/S0J8y;_n]NNIB#x!xmy~8A[T*qqD' );
define( 'SECURE_AUTH_KEY',  'q=)b<I++b 2lj3o7w<JYZe=-yi8?<HV*%m{bO$WXBDP_}&ea}+Zj~}o/;flQfqdk' );
define( 'LOGGED_IN_KEY',    '#&[&nVQ`17sk)c}TMFH1,vT^yP>/>pV~w[z,@u06E1{b-%Ah5 gwDiy?boE7S`U^' );
define( 'NONCE_KEY',        'ElPDfZ^W|a!}ET&n/NX-byo|?uI3r9x-lqW,<9CS@;ZA;&piLV9($kb?eb,{T4a#' );
define( 'AUTH_SALT',        'lJ@@i#{%TQ+h3j~LgU2NH(.K_4j^Z*gG)GnUO?4OFsi@U,t%9a6vtmZ1yTWgG/C-' );
define( 'SECURE_AUTH_SALT', 'B/l 7d44D*x7xfp zemz<t,+-sl`r~mC;cl>*1[:U*Gtg.>;kdNC14v-Eh-px(P~' );
define( 'LOGGED_IN_SALT',   '&LU|N$yKm]3+2zyryjTcjyO]8:_r}!||l0EX_.7Br(2+-J5pgejBjQe:gY52B=]k' );
define( 'NONCE_SALT',       'a5sJ{8y/F1ud+)dn34UEo<$T~`~7hKNAX7_U[6/=X&dSa$k)69r-hW7DuY#8@qtp' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';

