import flash.events.KeyboardEvent;
import flash.events.Event;
import flash.events.MouseEvent;

instanceCharacter.gotoAndStop(3);

/*
 CONSTANTS TABLE
*/

// These contants are going to be used to quickly adjust values,
// Instead of just going to every function to scroll.

const SPEED_FOREGROUND:Number = 10;
const SPEED_MIDGROUND:Number = 5;
const SPEED_BACKGROUND:Number = 2.5;
const SPEED_BACKGROUND_DISTANT:Number = 1.25;
//const SPEED_BACKGROUND_FAR:Number = 1.25;
const ROTATION_SUN:Number = 0.25;
const ROTATION_STARS:Number = 0.1;

const GROUND_LEVEL:Number = stage.stageHeight * 0.5;

/*
 MOVEMENT KEYBOARD TABLE
*/

var canMove:Boolean = true;

var isRightPressed:Boolean;
var isLeftPressed:Boolean;
var isUpPressed:Boolean;

/*
 ENSURE THAT THE BACKGROUNDS ARE ON THE SAME Y AXIS
*/

instanceForegroundAlt.y = instanceForeground.y;
instanceMidgroundForeAlt.y = instanceMidgroundFore.y;
instanceMidgroundBackAlt.y = instanceMidgroundBack.y;
instanceBackgroundAlt.y = instanceBackground.y;
instanceBackgroundDistantAlt.y = instanceBackgroundDistant.y;

/*
 ENSURE THE CHARACTER IS ON THE GROUND
*/

instanceCharacter.y = GROUND_LEVEL;