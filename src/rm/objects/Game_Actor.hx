package rm.objects;

import rm.types.LunaTea.ParameterId;
import rm.types.RPG;
import js.lib.Object;

/*
 _exp:{
  [classId:Int]:Int
 };
 */
@:expose("Game_Actor")
@:native("Game_Actor")
extern class Game_Actor extends Game_Battler {
 @:native("_actorId")
 public var __actorId: Int;
 private var _actorId: Int;
 @:native("_name")
 public var __name: String;
 private var _name: String;
 @:native("_nickname")
 public var __nickname: String;
 private var _nickname: String;
 @:native("_profile")
 public var __profile: String;
 private var _profile: String;
 @:native("_classId")
 public var __classId: Int;
 private var _classId: Int;
 @:native("_level")
 public var __level: Int;
 private var _level: Int;
 @:native("_characterName")
 public var __characterName: String;
 private var _characterName: String;
 @:native("_characterIndex")
 public var __characterIndex: Int;
 private var _characterIndex: Int;
 @:native("_faceName")
 public var __faceName: String;
 private var _faceName: String;
 @:native("_faceIndex")
 public var __faceIndex: Int;
 private var _faceIndex: Int;
 @:native("_battlerName")
 public var __battlerName: String;
 private var _battlerName: String;
 @:native("_exp")
 public var __exp: Object;
 private var _exp: Object;

 /**
  * Skill Ids
  */
 @:native("_skills")
 public var __skills: Array<Int>;

 /**
  * Skill Ids
  */
 private var _skills: Array<Int>;

 @:native("_equips")
 public var __equips: Array<Game_Item>;
 private var _equips: Array<Game_Item>;
 @:native("_actionInputIndex")
 public var __actionInputIndex: Int;
 private var _actionInputIndex: Int;
 @:native("_lastMenuSkill")
 public var __lastMenuSkill: Game_Item;
 private var _lastMenuSkill: Game_Item;
 @:native("_lastBattleSkill")
 public var __lastBattleSkill: Game_Item;
 private var _lastBattleSkill: Game_Item;
 @:native("_lastCommandSymbol")
 public var __lastCommandSymbol: String;
 private var _lastCommandSymbol: String;
 @:native("_stateSteps")
 public var __stateSteps: Object; // TODO: Find Structure
 private var _stateSteps: Object;

 /** [read-only] */
 public var level: Int;

 public dynamic function new(actorId: Int);

 public dynamic function setup(actorId: Int): Void;

 /**
  * Returns the id of the actor.
  *
  * @returns {Int}
  * @memberof Game_Actor
  */
 public dynamic function actorId(): Int;

 /**
  * Returns the database information of the actor.
  *
  * @returns {Actor}
  * @memberof Game_Actor
  */
 public dynamic function actor(): Actor;

 /**
  * Returns the actor's name.
  * @return String
  */
 public dynamic function name(): String;

 /**
  * Sets the actor name.
  *
  * @param {String} name
  * @memberof Game_Actor
  */
 public dynamic function setName(name: String): Void;

 /**
  * Returns the nickname of the actor.
  *
  * @returns {String}
  * @memberof Game_Actor
  */
 public dynamic function nickname(): String;

 /**
  * Sets the nickname of the actor.
  *
  * @param {String} nickname
  * @memberof Game_Actor
  */
 public dynamic function setNickname(nickname: String): Void;

 /**
  * Returns the actor profile.
  *
  * @returns {String}
  * @memberof Game_Actor
  */
 public dynamic function profile(): String;

 /**
  * Sets the actor profile.
  *
  * @param {String} profile
  * @memberof Game_Actor
  */
 public dynamic function setProfile(profile: String): Void;

 /**
  * Returns the face name of the actor; this is
  * the image of faces for the actor.
  * @returns {String}
  * @memberof Game_Actor
  */
 public dynamic function faceName(): String;

 /**
  * Returns the face index of the actor.
  *
  * @returns {Int}
  * @memberof Game_Actor
  */
 public dynamic function faceIndex(): Int;

 /**
  * Clears all states from the actor.
  *
  * @memberof Game_Actor
  */
 public dynamic function clearStates(): Void;

 /**
  * Erase the specified state from the actor.
  *
  * @param {Int} stateId
  * @memberof Game_Actor
  */
 public dynamic function eraseState(stateId: Int): Void;

 /**
  * Reset state count of the specified state.
  *
  * @param {Int} stateId
  * @memberof Game_Actor
  */
 public dynamic function resetStateCounts(stateId: Int): Void;

 /**
  * Initialize images of the actor.
  *
  * @memberof Game_Actor
  */
 public dynamic function initImages(): Void;

 /**
  * Returns the exp required to level.
  *
  * @param {Int} level
  * @returns {Int}
  * @memberof Game_Actor
  */
 public dynamic function expForLevel(level: Int): Int;

 /**
  * Initialize exp of the actor.
  *
  * @memberof Game_Actor
  */
 public dynamic function initExp(): Void;

 /**
  * Returns the current experience points of the actor.
  *
  * @returns {Int}
  * @memberof Game_Actor
  */
 public dynamic function currentExp(): Int;

 /**
  * Returns the current level's experience for the actor.
  *
  * @returns {Int}
  * @memberof Game_Actor
  */
 public dynamic function currentLevelExp(): Int;

 /**
  * Returns the experience points for the next level of the actor.
  *
  * @returns {Int}
  * @memberof Game_Actor
  */
 public dynamic function nextLevelExp(): Int;

 /**
  * Returns the next required experience points for the actor to level up.
  *
  * @returns {Int}
  * @memberof Game_Actor
  */
 public dynamic function nextRequiredExp(): Int;

 /**
  * Returns the maximum level of the actor.
  *
  * @memberof Game_Actor
  */
 public dynamic function maxLevel(): Void;

 /**
  * Returns true if the actor is max level.
  *
  * @returns {Bool}
  * @memberof Game_Actor
  */
 public dynamic function isMaxLevel(): Bool;

 /**
  * Initialize actor skills.
  *
  * @memberof Game_Actor
  */
 public dynamic function initSkills(): Void;

 /**
  * Initialize actor equipment in the given slots.
  *
  * @param {Array<Int>} equips
  * @memberof Game_Actor
  */
 public dynamic function initEquips(equips: Array<Int>): Void;

 /**
  * Returns the equip slots of the actor.
  *
  * @returns {Array<Int>}
  * @memberof Game_Actor
  */
 public dynamic function equipSlots(): Array<Int>;

 /**
  * Returns the equipment of the actor.
  *
  * @returns {Array<EquipItem>}
  * @memberof Game_Actor
  */
 public dynamic function equips(): Array<EquipItem>;

 /**
  * Returns the weapon of the actor.
  *
  * @returns {Array<Weapon>}
  * @memberof Game_Actor
  */
 public dynamic function weapons(): Array<Weapon>;

 /**
  * Returns the armor of the actor.
  *
  * @returns {Array<Armor>}
  * @memberof Game_Actor
  */
 public dynamic function armors(): Array<Armor>;

 /**
  * Returns true if the actor has a weapon.
  *
  * @param {Weapon} weapon
  * @returns {Bool}
  * @memberof Game_Actor
  */
 public dynamic function hasWeapon(weapon: Weapon): Bool;

 /**
  * Returns true if the actor has armor.
  *
  * @param {Armor} armor
  * @returns {Bool}
  * @memberof Game_Actor
  */
 public dynamic function hasArmor(armor: Armor): Bool;

 /**
  * Returns true if the equip change is okay in the given slot.
  *
  * @param {Int} slotId
  * @returns {Bool}
  * @memberof Game_Actor
  */
 public dynamic function isEquipChangeOk(slotId: Int): Bool;

 /**
  * Changes the actor equipment in the given slot with the
  * given equip item. Places the original item into the party
  * inventory.
  * @param {Int} slotId
  * @param {EquipItem} item
  * @memberof Game_Actor
  */
 public dynamic function changeEquip(slotId: Int, item: EquipItem): Void;

 /**
  * Forces the actor to change equipment in the given slot
  * with the given equip item without placing the item back into
  * the party inventory.
  * @param {Int} slotId
  * @param {EquipItem} item
  * @memberof Game_Actor
  */
 public dynamic function forceChangeEquip(slotId: Int, item: EquipItem): Void;

 /**
  * Trades the new item with the old item in the party inventory.
  *
  * @param {EquipItem} newItem
  * @param {EquipItem} oldItem
  * @returns {Bool}
  * @memberof Game_Actor
  */
 public dynamic function tradeItemWithParty(newItem: EquipItem,
  oldItem: EquipItem): Bool;

 /**
  * Changes the actor equip with an item based on the equip id.
  *
  * @param {Int} etypeId
  * @param {Int} itemId
  * @memberof Game_Actor
  */
 public dynamic function changeEquipById(etypeId: Int, itemId: Int): Void;

 /**
  * Returns true if the actor is equipped with the specific item.
  *
  * @param {EquipItem} item
  * @returns {Bool}
  * @memberof Game_Actor
  */
 public dynamic function isEquipped(item: EquipItem): Bool;

 /**
  * Discards the given equip item from the actor; item
  * is not return to the party inventory.
  * @param {EquipItem} item
  * @memberof Game_Actor
  */
 public dynamic function discardEquip(item: EquipItem): Void;

 /**
  * Returns items the actor can't normally equip to the party inventory.
  *
  * @param {Bool} forcing
  * @memberof Game_Actor
  */
 public dynamic function releaseUnequippableItems(forcing: Bool): Void;

 /**
  * Clears the actor's equipment; items are returned to the inventory.
  *
  * @memberof Game_Actor
  */
 public dynamic function clearEquipments(): Void;

 /**
  * Optimize the actor's equipment.
  *
  * @memberof Game_Actor
  */
 public dynamic function optimizeEquipments(): Void;

 /**
  * Equips the best item in the given slot.
  *
  * @param {Int} slotId
  * @memberof Game_Actor
  */
 public dynamic function bestEquipItem(slotId: Int): Void;

 /**
  * Calculates the equip item performance and returns the sum/difference.
  *
  * @param {EquipItem} item
  * @returns {Int}
  * @memberof Game_Actor
  */
 public dynamic function calcEquipItemPerformance(item: EquipItem): Float;

 public dynamic function isSkillWtypeOk(skill: Skill): Bool;

 public dynamic function isWtypeEquipped(wtypeId: Int): Bool;

 /**
  * Refreshes the actor.
  *
  * @memberof Game_Actor
  */
 public dynamic function refresh(): Void;

 public dynamic function friendsUnit(): Game_Party;

 public dynamic function opponentsUnit(): Game_Troop;

 /**
  * Returns true if the actor is a member in battle.
  *
  * @returns {Bool}
  * @memberof Game_Actor
  */
 public dynamic function isBattleMember(): Bool;

 public dynamic function isFormationChangeOk(): Bool;

 /**
  * Returns the current class of the actor from the database.
  *
  * @returns {Class}
  * @memberof Game_Actor
  */
 public dynamic function currentClass(): RPGClass;

 /**
  * Returns true if the actor is the specified class from the database.
  *
  * @param {Class} gameClass
  * @returns {Bool}
  * @memberof Game_Actor
  */
 public dynamic function isClass(gameClass: RPGClass): Bool;

 /**
  * Returns the actor's skills; even if the skills are not usable.
  *
  * @returns {Array<Skill>}
  * @memberof Game_Actor
  */
 public dynamic function skills(): Array<Skill>;

 /**
  * Returns the usable skills of the actor.
  *
  * @returns {Array<Skill>}
  * @memberof Game_Actor
  */
 public dynamic function usableSkills(): Array<Skill>;

 /**
  * Returns the attack element ids.
  *
  * @returns {Array<Int>}
  * @memberof Game_Actor
  */
 public dynamic function attackElements(): Array<Int>;

 /**
  * Returns true if the actor has no weapon.
  *
  * @returns {Bool}
  * @memberof Game_Actor
  */
 public dynamic function hasNoWeapons(): Bool;

 /**
  * Returns the element id of barehanded attacks.
  * By default this is 1.
  *
  * @returns {Int}
  * @memberof Game_Actor
  */
 public dynamic function bareHandsElementId(): Int;

 /**
  * Returns the base value of the parameter.
  * @param paramId
  * @return Int
  */
 public dynamic function paramBase(paramId: ParameterId): Int;

 /**
  * Returns the first attack animation id.
  *
  * @returns {Int}
  * @memberof Game_Actor
  */
 public dynamic function attackAnimationId1(): Int;

 /**
  * Returns the second attack animation id.
  *
  * @returns {Int}
  * @memberof Game_Actor
  */
 public dynamic function attackAnimationId2(): Int;

 /**
  * Returns the animation id for a barehanded attack.
  *
  * @returns {Int}
  * @memberof Game_Actor
  */
 public dynamic function bareHandsAnimationId(): Int;

 /**
  * Change the actor experience points; leveling up the actor
  * if it's above the required exp for the current level.
  * If show is set to true, actor level up with be displayed.
  * @param {Int} exp
  * @param {Bool} show
  * @memberof Game_Actor
  */
 public dynamic function changeExp(exp: Int, show: Bool): Void;

 /**
  * Level up the actor.
  *
  * @memberof Game_Actor
  */
 public dynamic function levelUp(): Void;

 /**
  * Level down the actor.
  *
  * @memberof Game_Actor
  */
 public dynamic function levelDown(): Void;

 public dynamic function findNewSkills(lastSkills: Array<Skill>): Array<Skill>;

 /**
  * Displays the actor level up in a message window, with the learned skills.
  *
  * @param {Array<Skill>} newSkills
  * @memberof Game_Actor
  */
 public dynamic function displayLevelUp(newSkills: Array<Skill>): Void;

 /**
  * Gives the specified exp to the actor.
  *
  * @param {Int} exp
  * @memberof Game_Actor
  */
 public dynamic function gainExp(exp: Int): Void;

 /**
  * Returns the final exp rate of the actor based on if the actor
  * is a reserved party member or an active battle member.
  * @returns {Int}
  * @memberof Game_Actor
  */
 public dynamic function finalExpRate(): Int;

 /**
  * Returns the exp rate of actors not in battle; this is set in the database.
  *
  * @returns {Int}
  * @memberof Game_Actor
  */
 public dynamic function benchMembersExpRate(): Int;

 /**
  * Returns true if the actor should display level up in a message window.
  *
  * @returns {Bool}
  * @memberof Game_Actor
  */
 public dynamic function shouldDisplayLevelUp(): Bool;

 /**
  * Changes the actor level; if show is set to true,
  * the actor level will be displayed.
  * @param {Int} level
  * @param {Bool} show
  * @memberof Game_Actor
  */
 public dynamic function changeLevel(level: Int, show: Bool): Void;

 /**
  * Actor learns the specified skill given the skill id.
  *
  * @param {Int} skillId
  * @memberof Game_Actor
  */
 public dynamic function learnSkill(skillId: Int): Void;

 /**
  * Actor forgets the specified skill given the skill id from
  * the actor's usable skills.
  * @param {Int} skillId
  * @memberof Game_Actor
  */
 public dynamic function forgetSkill(skillId: Int): Void;

 /**
  * Returns true if the actor has learned the specified
  * skill given the specified skill id.
  * @param {Int} skillId
  * @returns {Bool}
  * @memberof Game_Actor
  */
 public dynamic function isLearnedSkill(skillId: Int): Bool;

 /**
  * Changes the actor class; if keep is true, the actor
  * will retain their experience points.
  * @param {Int} classId
  * @param {Bool} keepExp
  * @memberof Game_Actor
  */
 public dynamic function changeClass(classId: Int, keepExp: Bool): Void;

 public dynamic function setCharacterImage(characterName: String,
  characterIndex: Int): Void;

 /**
  * Sets the face image of the actor given the face image (from database)
  * and face index within the iamge.
  *
  * @param {String} faceName
  * @param {Int} faceIndex
  * @memberof Game_Actor
  */
 public dynamic function setFaceImage(faceName: String, faceIndex: Int): Void;

 /**
  * Sets the battler image of the actor; this is the sprite displayed
  * in the side view mode.
  * @param {String} battlerName
  * @memberof Game_Actor
  */
 public dynamic function setBattlerImage(battlerName: String): Void;

 /**
  * Returns true if the actor sprite is visible.
  *
  * @returns {Bool}
  * @memberof Game_Actor
  */
 public dynamic function isSpriteVisible(): Bool;

 /**
  * Starts the animation on the actor given the specified animation id;
  * if  mirror is set to true, the animation will be mirrored. If a delay is enter,
  * the animation will be delayed.
  * @param {Int} animationId
  * @param {Bool} mirror
  * @param {Int} delay
  * @memberof Game_Actor
  */
 public dynamic function startAnimation(animationId: Int, mirror: Bool,
  delay: Int): Void;

 /**
  * Performs the attack motion for the actor.
  *
  * @memberof Game_Actor
  */
 public dynamic function performAttack(): Void;

 /**
  * Perform the victory motion for the actor.
  *
  * @memberof Game_Actor
  */
 public dynamic function performVictory(): Void;

 /**
  * Performs the escape motion for the actor.
  *
  * @memberof Game_Actor
  */
 public dynamic function performEscape(): Void;

 /**
  * Creates the action list for the actor.
  *
  * @returns {Array<Game_Action>}
  * @memberof Game_Actor
  */
 public dynamic function makeActionList(): Array<Game_Action>;

 /**
  * Creates the auto battle actions for the game actor.
  *
  * @memberof Game_Actor
  */
 public dynamic function makeAutoBattleActions(): Void;

 public dynamic function makeConfusionActions(): Void;

 /**
  * Handler for when the player walks on the map scene.
  *
  * @memberof Game_Actor
  */
 public dynamic function onPlayerWalk(): Void;

 public dynamic function updateStateSteps(state: State): Void;

 /**
  * Shows the added states to the actor.
  *
  * @memberof Game_Actor
  */
 public dynamic function showAddedStates(): Void;

 /**
  * Shows the removed states from the actor.
  *
  * @memberof Game_Actor
  */
 public dynamic function showRemovedStates(): Void;

 public dynamic function stepsForTurn(): Int;

 public dynamic function turnEndOnMap(): Void;

 /**
  * Checks the effect of the floor on the actor.
  *
  * @memberof Game_Actor
  */
 public dynamic function checkFloorEffect(): Void;

 /**
  * Executes the floor dmaage on the actor.
  *
  * @memberof Game_Actor
  */
 public dynamic function executeFloorDamage(): Void;

 /**
  * Returns the basic floor damage.
  *
  * @returns {Int}
  * @memberof Game_Actor
  */
 public dynamic function basicFloorDamage(): Int;

 /**
  * Returns the max floor damage.
  *
  * @returns {Int}
  * @memberof Game_Actor
  */
 public dynamic function maxFloorDamage(): Int;

 /**
  * Perform damage to the actor on the map scene.
  *
  * @memberof Game_Actor
  */
 public dynamic function performMapDamage(): Void;

 /**
  * Clears all of the actor's animations.
  *
  * @memberof Game_Actor
  */
 public dynamic function clearActions(): Void;

 /**
  * Returns action the actor is inputting.
  *
  * @returns {Game_Action}
  * @memberof Game_Actor
  */
 public dynamic function inputtingAction(): Game_Action;

 public dynamic function selectNextCommand(): Bool;

 public dynamic function selectPreviousCommand(): Bool;

 /**
  * Returns the last menu skill of the actor.
  *
  * @returns {Skill}
  * @memberof Game_Actor
  */
 public dynamic function lastMenuSkill(): Skill;

 public dynamic function setLastMenuSkill(skill: Skill): Void;

 /**
  * Returns the last battle skill of the actor.
  *
  * @returns {Skill}
  * @memberof Game_Actor
  */
 public dynamic function lastBattleSkill(): Skill;

 public dynamic function setLastBattleSkill(skill: Skill): Void;

 /**
  * Returns the last command symbol that the actor used.
  *
  * @returns {String}
  * @memberof Game_Actor
  */
 public dynamic function lastCommandSymbol(): String;

 /**
  * Sets the last command symbol to the given symbol; this is the
  * selected command in the battle menu.
  * @param {String} symbol
  * @memberof Game_Actor
  */
 public dynamic function setLastCommandSymbol(symbol: String): Void;

 /**
  * Returns true if the item effect  has a special effect from game action.
  * @param item
  * @return Bool
  */
 public dynamic function testEscape(item: BaseItem): Bool;
}
