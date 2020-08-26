package mz.objects;

/**
 * The game object class for game switches.
 *
 * @class Game_Switches
 */
@:native("Game_Switches")
extern class Game_Switches {
 private var _data: Array<Bool>;

 public function new(): Void;
 public function initialize(): Void;
 public function clear(): Void;
 public function value(switchId: Int): Bool;
 public function setValue(switchId: Int, value: Bool): Void;
 public function onChange(): Void;
}