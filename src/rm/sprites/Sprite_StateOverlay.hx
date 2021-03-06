package rm.sprites;

import rm.objects.Game_Battler;

/**
 * -----------------------------------------------------------------------------
 * Sprite_StateOverlay
 *
 * The sprite for displaying an overlay image for a state.
 */
@:expose("Sprite_StateOverlay")
@:native("Sprite_StateOverlay")
extern class Sprite_StateOverlay extends Sprite_Base {
 @:native("_battler")
 public var __battler: Game_Battler;
 private var _battler: Game_Battler;
 @:native("_overlayIndex")
 public var __overlayIndex: Int;
 private var _overlayIndex: Int;
 @:native("_animationCount")
 public var __animationCount: Int;
 private var _animationCount: Int;
 @:native("_pattern")
 public var __pattern: Int;
 private var _pattern: Int;

 /**
  * Initialize the overlay sprite properties.
  *
  * @memberof Sprite_StateOverlay
  */
 public dynamic function initMembers(): Void;

 /**
  * Loads the bitmap of the overlay sprite.
  *
  * @memberof Sprite_StateOverlay
  */
 public dynamic function loadBitmap(): Void;

 public dynamic function setup(battler: Game_Battler): Void;
 public dynamic function animationWait(): Int;

 /**
  * Updates the overlay sprite pattern.
  *
  * @memberof Sprite_StateOverlay
  */
 public dynamic function updatePattern(): Void;

 /**
  * Updates the overlay sprite frame.
  *
  * @memberof Sprite_StateOverlay
  */
 public dynamic function updateFrame(): Void;
}
