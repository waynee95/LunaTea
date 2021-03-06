package rm.objects;

/**
 * The game object class for temporary data that is not
 * included in the save data.
 * @class Game_Temp
 */
@:expose("Game_Temp")
@:native("Game_Temp")
extern class Game_Temp {
 @:native("_isPlaytest")
 public var __isPlaytest: Bool;
 private var _isPlaytest: Bool;
 @:native("_commonEventId")
 public var __commonEventId: Int;
 private var _commonEventId: Int;
 @:native("_destinationX")
 public var __destinationX: Int;
 private var _destinationX: Int;
 @:native("_destinationY")
 public var __destionationY: Int;
 private var _destinationY: Int;
 public dynamic function new(): Void;

 public dynamic function initialize(): Void;

 /**
  * Determines if the game is in Play Test mode.
  *
  * @returns {boolean}
  * @memberof Game_Temp
  */
 public dynamic function isPlaytest(): Bool;

 /**
  * Reserves the given commonEventId to be processed later.
  *
  * @param {number} commonEventId
  * @memberof Game_Temp
  */
 public dynamic function reserveCommonEvent(commonEventId: Int): Void;

 /**
  * Clears the current reserved common event.
  *
  * @memberof Game_Temp
  */
 public dynamic function clearCommonEvent(): Void;

 /**
  * Returns true if a common event has been reserved.
  *
  * @returns {boolean}
  * @memberof Game_Temp
  */
 public dynamic function isCommonEventReserved(): Bool;

 /**
  * Returns common event data from the database.
  *
  * @returns {any}
  * @memberof Game_Temp
  */
 public dynamic function reservedCommonEvent(): Any;

 /**
  * Sets the destination of the player for movement.
  *
  * @param {number} x
  * @param {number} y
  * @memberof Game_Temp
  */
 public dynamic function setDestination(x: Int, y: Int): Void;

 /**
  * Clears the destination of movement for the player.
  *
  * @memberof Game_Temp
  */
 public dynamic function clearDestination(): Void;

 /**
  * Determines if the destination for the player to move to is valid.
  *
  * @returns {boolean}
  * @memberof Game_Temp
  */
 public dynamic function isDestinationValid(): Bool;

 /**
  * Returns the x coordinate of the destination.
  *
  * @returns {number}
  * @memberof Game_Temp
  */
 public dynamic function destinationX(): Int;

 /**
  * Returns the y coordinate of the destination.
  *
  * @returns {number}
  * @memberof Game_Temp
  */
 public dynamic function destinationY(): Int;
}
