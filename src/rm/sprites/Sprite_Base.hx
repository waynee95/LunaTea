package rm.sprites;

import rm.core.Sprite;
import rm.types.RPG;

@:expose("Sprite_Base")
@:native("Sprite_Base")
extern class Sprite_Base extends Sprite {
 /**
  * The animation sprites assigned to the
  * sprite object.
  * @protected
  * @type {Array<Sprite_Animation>}
  * @memberof Sprite_Base
  */
 @:native("_animationSprites")
 public var __animationSprites: Array<Sprite_Animation>;

 /**
  * The animation sprites assigned to the
  * sprite object.
  * @protected
  * @type {Array<Sprite_Animation>}
  * @memberof Sprite_Base
  */
 private var _animationSprites: Array<Sprite_Animation>;

 /**
  * The target that will have the animations applied
  * to it.
  * @protected
  * @type {Sprite_Base}
  * @memberof Sprite_Base
  */
 @:native("_effectTarget")
 public var __effectTarget: Sprite_Base;

 /**
  * The target that will have the animations applied
  * to it.
  * @protected
  * @type {Sprite_Base}
  * @memberof Sprite_Base
  */
 private var _effectTarget: Sprite_Base;

 /**
  * Determines sprite's visibility
  */
 @:native("_hiding")
 public var __hiding: Bool;

 /**
  * Determines sprite's visibility
  */
 private var _hiding: Bool;

 public dynamic function new(): Void;

 /**
  * Initializes the sprite.
  *
  * @memberof Sprite_Base
  */
 public dynamic function initialize(): Void;

 /**
  * Hides the sprite.
  */
 public dynamic function hide(): Void;

 /**
  * Shows the sprite.
  */
 public dynamic function show(): Void;

 /**
  * Updadtes the visibility of the sprite based
  * on the _hiding property.
  * @memberof Sprite_Base
  */
 public dynamic function updateVisibility(): Void;

 /**
  * Updates the animation sprites, cloning them;
  * if the sprite is playing, pushes the sprites into
  * animation sprites, otherwise the sprite is removed.
  * @memberof Sprite_Base
  */
 public dynamic function updateAnimationSprites(): Void;

 /**
  * Starts a new animation on the current
  * sprite by assigning a new Sprite_Animation object to the
  * sprite's parent.
  * @param {RPG.Animation} animation
  * @param {boolean} mirror
  * @param {number} delay
  * @memberof Sprite_Base
  */
 public dynamic function startAnimation(animation: Animation, mirror: Bool,
  delay: Int): Void;

 /**
  * Returns true if an animation is currently playing.
  * @returns {boolean}
  * @memberof Sprite_Base
  */
 public dynamic function isAnimationPlaying(): Bool;
}
