package rm.sprites;

import rm.objects.Game_Actor;
import rm.core.Sprite;
import rm.types.LunaTea.CharacterPattern;
import rm.types.RM.Motion;

/**
 * -----------------------------------------------------------------------------
 * Sprite_Actor
 *
 * The sprite for displaying an actor.
 */
@:expose("Sprite_Actor")
@:native("Sprite_Actor")
extern class Sprite_Actor extends Sprite_Battler {
 public static var MOTIONS: {
  walk: Motion,
  wait: Motion,
  chant: Motion,
  guard: Motion,
  damage: Motion,
  evade: Motion,
  thrust: Motion,
  swing: Motion,
  missile: Motion,
  skill: Motion,
  spell: Motion,
  item: Motion,
  escape: Motion,
  victory: Motion,
  dying: Motion,
  abnormal: Motion,
  sleep: Motion,
  dead: Motion,
 };
 @:native("_battlerName")
 public var __battlerName: String;
 private var _battlerName: String;
 @:native("_motion")
 public var __motion: Motion;
 private var _motion: Motion;
 @:native("_motionCount")
 public var __motionCount: Int;
 private var _motionCount: Int;
 @:native("_pattern")
 public var __pattern: CharacterPattern;
 private var _pattern: CharacterPattern;
 @:native("_mainSprite")
 public var __mainSprite: Sprite_Base;
 private var _mainSprite: Sprite_Base;
 @:native("_shadowSprite")
 public var __shadowSprite: Sprite;
 private var _shadowSprite: Sprite;
 @:native("_weaponSprite")
 public var __weaponSprite: Sprite_Weapon;
 private var _weaponSprite: Sprite_Weapon;
 @:native("_stateSprite")
 public var __stateSprite: Sprite_StateOverlay;
 private var _stateSprite: Sprite_StateOverlay;
 @:native("_actor")
 public var __actor: Game_Actor;
 private var _actor: Game_Actor;

 /**
  * Creates an instance of Sprite_Actor; can be passed
  * a battler on creation.
  * @param {Game_Actor} [battler]
  * @memberof Sprite_Actor
  */
 public dynamic function new(?battler: Game_Actor): Void;

 public dynamic function initialize(?battler: Game_Actor): Void;

 /**
  * Creates the main sprite of the sprite actor.
  *
  * @memberof Sprite_Actor
  */
 public dynamic function createMainSprite(): Void;

 /**
  * Creates the shadow sprite of the sprite actor.
  *
  * @memberof Sprite_Actor
  */
 public dynamic function createShadowSprite(): Void;

 /**
  * Sets the weapon sprite of the sprite actor.
  *
  * @memberof Sprite_Actor
  */
 public dynamic function createWeaponSprite(): Void;

 /**
  * Creates the state sprite of the sprite actor.
  *
  * @memberof Sprite_Actor
  */
 public dynamic function createStateSprite(): Void;

 /**
  * Sets the battler of the sprite actor.
  *
  * @param {Game_Actor} battler
  * @memberof Sprite_Actor
  */
 public dynamic function setBattler(battler: Game_Actor): Void;

 /**
  * Moves the sprite actor to the start position.
  *
  * @memberof Sprite_Actor
  */
 public dynamic function moveToStartPosition(): Void;

 public dynamic function setActorHome(index: Int): Void;

 public dynamic function updateShadow(): Void;

 /**
  * Sets up motion on the sprite actor.
  *
  * @memberof Sprite_Actor
  */
 public dynamic function setupMotion(): Void;

 /**
  * Sets up weapon animation on the sprite actor.
  *
  * @memberof Sprite_Actor
  */
 public dynamic function setupWeaponAnimation(): Void;

 /**
  * Starts the motion given the specified motion
  * type.
  * @param {string} motionType
  * @memberof Sprite_Actor
  */
 public dynamic function startMotion(motionType: String): Void;

 public dynamic function updateTargetPosition(): Void;

 /**
  * Updates the sprite actor's movement.
  *
  * @memberof Sprite_Actor
  */
 public dynamic function updateMove(): Void;

 /**
  * Updates the sprite actor's motion.
  *
  * @memberof Sprite_Actor
  */
 public dynamic function updateMotion(): Void;

 public dynamic function updateMotionCount(): Void;

 /**
  * Returns the speed of the motion for the sprite actor.
  *
  * @returns {Int}
  * @memberof Sprite_Actor
  */
 public dynamic function motionSpeed(): Int;

 /**
  * Refreshes the motion of the sprite actor.
  *
  * @memberof Sprite_Actor
  */
 public dynamic function refreshMotion(): Void;

 /**
  * Starts the entry motion of the sprite actor.
  *
  * @memberof Sprite_Actor
  */
 public dynamic function startEntryMotion(): Void;

 /**
  * Has the sprite actor step forward.
  *
  * @memberof Sprite_Actor
  */
 public dynamic function stepForward(): Void;

 /**
  * Has the sprite actor step back.
  *
  * @memberof Sprite_Actor
  */
 public dynamic function stepBack(): Void;

 /**
  * Has the sprite actor retreat.
  *
  * @memberof Sprite_Actor
  */
 public dynamic function retreat(): Void;

 public dynamic function damageOffsetX(): Int;
 public dynamic function damageOffsetY(): Int;
}
