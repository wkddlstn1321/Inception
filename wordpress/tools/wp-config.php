<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** Database username */
define( 'DB_USER', 'insjang' );

/** Database password */
define( 'DB_PASSWORD', 'insjang1234' );

/** Database hostname */
define( 'DB_HOST', 'mariadb');

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */

define('AUTH_KEY',         '2I;YsK@<Dl^PwZ`dND[va+]N`g,auH[}nZP7_9eH3_RW?`sBiJ=ojNao)CfG1.]V');
define('SECURE_AUTH_KEY',  '*()>%Uvpo4_^R!5{Ph~QjPB[:83bO9AV)WI[Pd}G6rb>y2N-_k@v:6b,2w$|gWGO');
define('LOGGED_IN_KEY',    ':hk_M1r*/.J;D!Og!O[m4igKle/.Adq{ikgPgXRh.nEM_miCN9(8F?fJ`)Q_nT1m');
define('NONCE_KEY',        '%ehRg0?$Fn3D77~{~EGxp,-&@!U`RZLnU+DnnWf-+WT:$8>E&|o]KZdrOU|+/ztZ');
define('AUTH_SALT',        '^R=S?QQ}5Z1AL^Ic!S 2ov-uTU#_~}FewCq@-IVZ=U:w>$|M:p[]n-?4tVrC632l');
define('SECURE_AUTH_SALT', '~Q]0J#V93X.4_!+eu|U|Z1uX{!<P|ShN0B!0N6?+GKt&v/B<0onIg H4p lR-1FT');
define('LOGGED_IN_SALT',   '??,}-+)}cY/60c1-::>n Ycg~$*1.F@n:$z9I}4Jo?=eltY-9/n6Erv+GD-znneG');
define('NONCE_SALT',       '8WwhG<?3Zz9}|mOC_U:XZ3eZQ`*B1IsqQsyMq)TOu!Z!OVdvrE59$zdzVuEEsZu-');

/**#@-*/

/**
 * WordPress database table prefix.
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

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
        define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';