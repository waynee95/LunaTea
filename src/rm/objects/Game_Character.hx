package rm.objects;

import rm.types.RPG.MoveCommand;
import rm.types.RPG.MoveRoute;

/**
 * Super class of Game_Player, Game_Follower, Game_Vehicle,
 * and Game_Event.
 */
@:expose("Game_Character")
@:native("Game_Character")
extern class Game_Character extends Game_CharacterBase {
 public static var ROUTE_END: Int;
 public static var ROUTE_MOVE_DOWN: Int;
 public static var ROUTE_MOVE_LEFT: Int;
 public static var ROUTE_MOVE_RIGHT: Int;
 public static var ROUTE_MOVE_UP: Int;
 public static var ROUTE_MOVE_LOWER_L: Int;
 public static var ROUTE_MOVE_LOWER_R: Int;
 public static var ROUTE_MOVE_UPPER_L: Int;
 public static var ROUTE_MOVE_UPPER_R: Int;
 public static var ROUTE_MOVE_RANDOM: Int;
 public static var ROUTE_MOVE_TOWARD: Int;
 public static var ROUTE_MOVE_AWAY: Int;
 public static var ROUTE_MOVE_FORWARD: Int;
 public static var ROUTE_MOVE_BACKWARD: Int;
 public static var ROUTE_JUMP: Int;
 public static var ROUTE_WAIT: Int;
 public static var ROUTE_TURN_DOWN: Int;
 public static var ROUTE_TURN_LEFT: Int;
 public static var ROUTE_TURN_RIGHT: Int;
 public static var ROUTE_TURN_UP: Int;
 public static var ROUTE_TURN_90D_R: Int;
 public static var ROUTE_TURN_90D_L: Int;
 public static var ROUTE_TURN_180D: Int;
 public static var ROUTE_TURN_90D_R_L: Int;
 public static var ROUTE_TURN_RANDOM: Int;
 public static var ROUTE_TURN_TOWARD: Int;
 public static var ROUTE_TURN_AWAY: Int;
 public static var ROUTE_SWITCH_ON: Int;
 public static var ROUTE_SWITCH_OFF: Int;
 public static var ROUTE_CHANGE_SPEED: Int;
 public static var ROUTE_CHANGE_FREQ: Int;
 public static var ROUTE_WALK_ANIME_ON: Int;
 public static var ROUTE_WALK_ANIME_OFF: Int;
 public static var ROUTE_STEP_ANIME_ON: Int;
 public static var ROUTE_STEP_ANIME_OFF: Int;
 public static var ROUTE_DIR_FIX_ON: Int;
 public static var ROUTE_DIR_FIX_OFF: Int;
 public static var ROUTE_THROUGH_ON: Int;
 public static var ROUTE_THROUGH_OFF: Int;
 public static var ROUTE_TRANSPARENT_ON: Int;
 public static var ROUTE_TRANSPARENT_OFF: Int;
 public static var ROUTE_CHANGE_IMAGE: Int;
 public static var ROUTE_CHANGE_OPACITY: Int;
 public static var ROUTE_CHANGE_BLEND_MODE: Int;
 public static var ROUTE_PLAY_SE: Int;
 public static var ROUTE_SCRIPT: Int;

 @:native("_moveRouteForcing")
 public var __moveRouteForcing: Bool;
 private var _moveRouteForcing: Bool;
 @:native("_moveRoute")
 public var __moveRoute: MoveRoute;
 private var _moveRoute: MoveRoute;
 @:native("_moveRouteIndex")
 public var __moveRouteIndex: Int;
 private var _moveRouteIndex: Int;
 @:native("_originalMoveRoute")
 public var __originalMoveRoute: MoveRoute;
 private var _originalMoveRoute: MoveRoute;
 @:native("_originalMoveRouteIndex")
 public var __originalMoveRouteIndex: Int;
 private var _originalMoveRouteIndex: Int;
 @:native("_waitCount")
 public var __waitCount: Int;
 private var _waitCount: Int;

 public dynamic function initMembers(): Void;

 /**
  * Memorizes the movement route.
  *
  * @memberof Game_Character
  */
 public dynamic function memorizeMoveRoute(): Void;

 /**
  * Restores the original movement route.
  *
  * @memberof Game_Character
  */
 public dynamic function restoreMoveRoute(): Void;

 /**
  * Returns true if the move route is being forced.
  *
  * @returns {Bool}
  * @memberof Game_Character
  */
 public dynamic function isMoveRouteForcing(): Bool;

 /**
  * Sets the move route of the game character.
  *
  * @param {RPG.MoveRoute} moveRoute
  * @memberof Game_Character
  */
 public dynamic function setMoveRoute(moveRoute: MoveRoute): Void;

 /**
  * Forces the move route of the game character.
  *
  * @param {RPG.MoveRoute} moveRoute
  * @memberof Game_Character
  */
 public dynamic function forceMoveRoute(moveRoute: MoveRoute): Void;

 public dynamic function updateStop(): Void;

 /**
  * Updates the game character's move routine.
  *
  * @memberof Game_Character
  */
 public dynamic function updateRoutineMove(): Void;

 /**
  * Processes the given move commands.
  *
  * @param {RPG.MoveCommand} command
  * @memberof Game_Character
  */
 public dynamic function processMoveCommand(command: MoveCommand): Void;

 public dynamic function deltaXFrom(x: Int): Int;
 public dynamic function deltaYFrom(y: Int): Int;

 /**
  * Move's the game character at random.
  *
  * @memberof Game_Character
  */
 public dynamic function moveRandom(): Void;

 /**
  * Moves the game character toward the other game character.
  *
  * @param {Game_Character} character
  * @memberof Game_Character
  */
 public dynamic function moveTowardCharacter(character: Game_Character): Void;

 /**
  * Moves the game character away from the other game character.
  *
  * @param {Game_Character} character
  * @memberof Game_Character
  */
 public dynamic function moveAwayFromCharacter(character: Game_Character): Void;

 /**
  * Turns the game character toward the other game character.
  *
  * @param {Game_Character} character
  * @memberof Game_Character
  */
 public dynamic function turnTowardCharacter(character: Game_Character): Void;

 /**
  * Turns the game character away from the other game character.
  *
  * @param {Game_Character} character
  * @memberof Game_Character
  */
 public dynamic function turnAwayFromCharacter(character: Game_Character): Void;

 /**
  * Turns the game character toward the player.
  *
  * @memberof Game_Character
  */
 public dynamic function turnTowardPlayer(): Void;

 /**
  * Turns the game character away from the player.
  *
  * @memberof Game_Character
  */
 public dynamic function turnAwayFromPlayer(): Void;

 /**
  * Moves the game character toward the player.
  *
  * @memberof Game_Character
  */
 public dynamic function moveTowardPlayer(): Void;

 /**
  * Moves the game character away from the player.
  *
  * @memberof Game_Character
  */
 public dynamic function moveAwayFromPlayer(): Void;

 /**
  * Moves the game character forward.
  *
  * @memberof Game_Character
  */
 public dynamic function moveForward(): Void;

 /**
  * Moves the game character backward.
  *
  * @memberof Game_Character
  */
 public dynamic function moveBackward(): Void;

 /**
  * Handles the end of the move route.
  *
  * @memberof Game_Character
  */
 public dynamic function processRouteEnd(): Void;

 public dynamic function advanceMoveRouteIndex(): Void;

 /**
  * Turns the game character right by 90 degrees.
  *
  * @memberof Game_Character
  */
 public dynamic function turnRight90(): Void;

 /**
  * Turns the game character left by 90 degrees.
  *
  * @memberof Game_Character
  */
 public dynamic function turnLeft90(): Void;

 public dynamic function turn180(): Void;

 /**
  * Turns the game character or left by 90 degrees.
  *
  * @memberof Game_Character
  */
 public dynamic function turnRightOrLeft90(): Void;

 /**
  * Turns the game character at random.
  *
  * @memberof Game_Character
  */
 public dynamic function turnRandom(): Void;

 public dynamic function swap(character: Game_Character): Void;
 public dynamic function findDirectionTo(goalX: Int, goalY: Int): Int;

 /**
  * Returns the search limit for path finding.
  *
  * @returns {Int}
  * @memberof Game_Character
  */
 public dynamic function searchLimit(): Int;
}
