package rm.scenes;

import rm.core.Rectangle;
import rm.core.Sprite;
import rm.windows.Window_TitleCommand;

@:expose("Scene_Title")
@:native("Scene_Title")
extern class Scene_Title extends Scene_Base {
 /**
  * The command window for title scene commands like new game, continue, or options.
  */
 @:native("_commandWindow")
 public var __commandWindow: Window_TitleCommand;

 /**
  * The background sprite which loads the $dataSystem.title1Name image.
  */
 @:native("_backSprite1")
 public var __backSprite1: Sprite;

 /**
  * The background sprite which loads the $dataSystem.title2Name image.
  */
 @:native("_backSprite2")
 public var __backSprite2: Sprite;

 /**
  * The sprite which holds the game title text.
  */
 @:native("_gameTitleSprite")
 public var __gameTitleSprite: Sprite;

 /**
  * The command window for title scene commands like new game, continue, or options.
  */
 private var _commandWindow: Window_TitleCommand;

 /**
  * The background sprite which loads the $dataSystem.title1Name image.
  */
 private var _backSprite1: Sprite;

 /**
  * The background sprite which loads the $dataSystem.title2Name image.
  */
 private var _backSprite2: Sprite;

 /**
  * The sprite which holds the game title text.
  */
 private var _gameTitleSprite: Sprite;

 /**
  * Creates the title scene background.
  */
 public dynamic function createBackground(): Void;

 /**
  * Creates the title screen foreground.
  */
 public dynamic function createForeground(): Void;

 /**
  * Draws the game title.
  */
 public dynamic function drawGameTitle(): Void;

 /**
  * Scales the background images and centers it.
  */
 public dynamic function adjustBackground(): Void;

 /**
  * Creates the command window and sets it's handlers.
  */
 public dynamic function createCommandWindow(): Void;

 public dynamic function commandWindowRect(): Rectangle;

 public dynamic function centerSprite(sprite: Sprite): Void;

 /**
  * Handler for the new game command.
  */
 public dynamic function commandNewGame(): Void;

 /**
  * Handler for the continue command.
  */
 public dynamic function commandContinue(): Void;

 /**
  * Handler for the options command.
  */
 public dynamic function commandOptions(): Void;

 /**
  * Plays the title screen music upon entering the scene.
  */
 public dynamic function playTitleMusic(): Void;
}
