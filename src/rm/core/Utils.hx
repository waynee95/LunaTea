package rm.core;

@:expose("Utils")
@:native("Utils")
extern class Utils {
 /**
  * The name of the RPG Maker. 'MV' in the current version.
  */
 public static var RPGMAKER_NAME: String;

 /**
  * The version of the RPG Maker.
  *
  * @static
  * @property RPGMAKER_VERSION
  * @type String
  * @final
  */
 public static var RPGMAKER_VERSION: String;

 /**
  * Checks whether the option is in the query string.
  *
  * @param {String} name The option name
  * @return {Boolean} True if the option is in the query string
  */
 public static dynamic function isOptionValid(name: String): Bool;

 /**
  * Checks whether the platform is NW.js.
  *
  * @return {Boolean} True if the platform is NW.js
  */
 public static dynamic function isNwjs(): Bool;

 /**
  * Checks whether the platform is a mobile device.
  *
  * @static
  * @method isMobileDevice
  * @return {Boolean} True if the platform is a mobile device
  */
 public static dynamic function isMobileDevice(): Bool;

 /**
  * Checks whether the browser is Mobile Safari.
  *
  * @static
  * @method isMobileSafari
  * @return {Boolean} True if the browser is Mobile Safari
  */
 public static dynamic function isMobileSafari(): Bool;

 /**
  * Checks whether the browser is Android Chrome.
  *
  * @return {Boolean} True if the browser is Android Chrome
  */
 public static dynamic function isAndroidChrome(): Bool;

 /**
  * Checks whether the browser can read files in the game folder.
  *
  * @return {Boolean} True if the browser can read files in the game folder
  */
 public static dynamic function canReadGameFiles(): Bool;

 /**
  * Makes a CSS color string from RGB values.
  *
  * @static
  * @method rgbToCssColor
  * @param {Int} r The red value in the range (0, 255)
  * @param {Int} g The green value in the range (0, 255)
  * @param {Int} b The blue value in the range (0, 255)
  * @return {String} CSS color string
  */
 public static dynamic function rgbToCssColor(r: Int, g: Int, b: Int): String;

 public static dynamic function isSupportPassiveEvent(): Bool;

 public static dynamic function generateRuntimeId(): Int;

 #if !compileMV
 /**
  * Encodes a URI component without escaping slash characters.
  *
  * @param {string} str - The input string.
  * @returns {string} Encoded string.
  */
 public static dynamic function encodeURI(str: String): String;
 #else
 #end
}
