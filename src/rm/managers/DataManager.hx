package rm.managers;

import js.lib.Promise;
import haxe.Json;
import rm.types.RPG.BaseItem;

/**
 * Manages the game data: saving, loading, meta data,
 * and map information.
 */
@:expose("DataManager")
@:native("DataManager")
extern class DataManager {
 @:native("_globalId")
 public static var __globalId: String;
 private static var _globalId: String;
 @:native("_lastAccessId")
 public static var __lastAccessId: Int;
 private static var _lastAccessedId: Int;
 @:native("_errorUrl")
 public static var __errorUrl: Any;
 private static var _errorUrl: Any;

 /**
  * Database Files are a JSON like Object
  */
 private static var _databaseFiles: Array<Json>;

 @:native("_databaseFiles")
 public static var __databaseFiles: Array<Json>; // TODO:Might need to refactor

 public static dynamic function loadDatabase(): Void;
 public static dynamic function loadDataFile(name: String, src: String): Void;
 public static dynamic function isDatabaseLoaded(): Bool;
 public static dynamic function loadMapData(mapId: Int): Void;
 public static dynamic function makeEmptyMap(): Void;
 public static dynamic function isMapLoaded(): Bool;
 public static dynamic function onLoad(object: Any): Void;

 /**
  * Extracts Meta Data. A Json Like Object
  * @param data
  */
 public static dynamic function extractMetaData(data: Any): Void;

 public static dynamic function checkError(): Void;
 public static dynamic function isBattleTest(): Bool;
 public static dynamic function isEventTest(): Bool;

 /**
  * Returns a Bool value given an item.
  * Item being a database object representing a skill.
  * @static
  * @param {object} item
  * @returns {Bool}
  * @memberof DataManager
  */
 public static dynamic function isSkill(item: BaseItem): Bool;

 /**
  * Returns a Bool value given an item.
  * Item must be a database item to be true.
  * @static
  * @param {object} item
  * @returns {Bool}
  * @memberof DataManager
  */
 public static dynamic function isItem(item: BaseItem): Bool;

 /**
  * Returns a Bool value given an item.
  * Item must be a database weapon to be true.
  * @static
  * @param {object} item
  * @returns {Bool}
  * @memberof DataManager
  */
 public static dynamic function isWeapon(item: BaseItem): Bool;

 /**
  * Returns a Bool value given an item.
  * Item must be a database armor to be true.
  * @static
  * @param {object} item
  * @returns {Bool}
  * @memberof DataManager
  */
 public static dynamic function isArmor(item: BaseItem): Bool;

 public static dynamic function createGameObjects(): Void;
 public static dynamic function setupNewGame(): Void;
 public static dynamic function setupBattleTest(): Void;
 public static dynamic function setupEventTest(): Void;
 public static dynamic function loadGlobalInfo(): Void;

 /**
  * JSON like object
  * @param info
  */
 public static dynamic function saveGlobalInfo(info: Any): Void;

 /**
  * Returns a Bool value given a savefileId.
  * If the savefileId exists; the value will be true.
  * @static
  * @param {number} savefileId
  * @returns {Bool}
  * @memberof DataManager
  */
 public static dynamic function isThisGameFile(savefileId: Int): Bool;

 public static dynamic function isAnySavefileExists(): Bool;
 public static dynamic function latestSavefileId(): Int;
 public static dynamic function loadAllSavefileImages(): Void;

 /**
  * JSON Like Object for save file images
  */
 public static dynamic function loadSavefileImages(info: Any): Void;

 /**
  * Returns the maximum number of save files
  * allocated in the game.
  * @static
  * @returns {number}
  * @memberof DataManager
  */
 public static dynamic function maxSavefiles(): Int;

 #if !compileMV
 public static dynamic function isMapObject(object: Dynamic): Bool;

 /**
  * Saves the RPGMakerMV game given a savefileId.
  * Returns true if successful.
  * @static
  * @param {number} savefileId
  * @returns {Bool}
  * @memberof DataManager
  */
 public static dynamic function saveGame(savefileId: Int): Promise<Any>;

 public static dynamic function loadGame(savefileId: Int): Promise<Any>;

 public static dynamic function makeSavename(savefileId: Int): String;
 #else

 /**
  * Saves the RPGMakerMV game given a savefileId.
  * Returns true if successful.
  * @static
  * @param {number} savefileId
  * @returns {Bool}
  * @memberof DataManager
  */
 public static dynamic function saveGame(savefileId: Int): Bool;

 public static dynamic function loadGame(savefileId: Int): Bool;
 #end

 /**
  * Returns the last accessed save fileId upon
  * saving or loading the game.
  * @static
  * @returns {number}
  * @memberof DataManager
  */
 public static dynamic function lastAccessedSavefileId(): Int;

 public static dynamic function saveGameWithoutRescue(savefileId: Int): Bool;
 public static dynamic function loadGameWithoutRescue(savefileId: Int): Bool;
 public static dynamic function selectSavefileForNewGame(): Void;

 /**
  * Creates a new save file on the global
  * save file information containing important
  * data such as play time, characters, timestamp.
  * @static
  * @memberof DataManager
  */
 public static dynamic function makeSavefileInfo(): Void;

 /**
  * Creates the save file contents when saving your game.
  * Good for aliasing when you want to add more data
  * to the game's save contents.
  * @static
  * @returns {object}
  * @memberof DataManager
  */
 public static dynamic function makeSaveContents(): Any;

 /**
  * Extracts the save file contents into the game's
  * variables. An excellent method to alias when you
  * wish to extend the game's save contents for a plugin.
  * @static
  * @param {object} contents
  * @memberof DataManager
  */
 public static dynamic function extractSaveContents(contents: Any): Void;
}
