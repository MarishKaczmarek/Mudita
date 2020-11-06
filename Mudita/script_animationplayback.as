import flash.events.Event;

// * ANIMATION TABLE FOR CHARACTER TEMPLATE * //
// 1 - Idle (front-facing)
// 2 - Walking (side-ways)
// 3 - Turning (3/4)
// 4 - Jumping (sideways)
// 5 - Falling
// 6 - Colliding With Wall

var isIdle:Boolean = true;
var isWalking:Boolean;
var isTurning:Boolean;
var isJumping:Boolean;
var isFalling:Boolean;
var isHittingWall:Boolean;
var isPressingClicker:Boolean;

// * ANIMATION TABLE FOR WALL
// 1 - Stable
// 2 - Crumbling

var wallStable:Boolean = true;
var wallCrumbling:Boolean;

// * ANIMATION TABLE FOR UI ELEMENT - CLICKER
// 1 - Off
// 2 - On

var playerHasClicker:Boolean;
var clickerState:Boolean;
var sunIsPopped:Boolean;

stage.addEventListener(Event.ENTER_FRAME, stageFrameAnimationHandler);

function stageFrameAnimationHandler(event:Event):void
{
	// PLAYER ANIMATIONS
	
	if (isIdle == true && isWalking == false && isHittingWall == false && isTurning == false && isPressingClicker == false)
	{
		instanceCharacter.gotoAndStop(1);
	}
	
	else if (isIdle == false && isWalking == false && isHittingWall == false && isTurning == true && isPressingClicker == false)
	{
		instanceCharacter.gotoAndStop(3);
	}
	
	else if (isIdle == false && isWalking == true && isHittingWall == false && isTurning == false && isPressingClicker == false)
	{
		instanceCharacter.gotoAndStop(2);
	}
	
	else if (isIdle == false && isWalking == false && isHittingWall == true && isTurning == true && isPressingClicker == false)
	{
		instanceCharacter.gotoAndStop(6);
	}
	
	else if (isIdle == false && isWalking == true && isHittingWall == true && isTurning == false && isPressingClicker == false)
	{
		instanceCharacter.gotoAndStop(6);
	}
	
	else if (isIdle == false && isWalking == false && isHittingWall == true && isTurning == false && isPressingClicker == false)
	{
		instanceCharacter.gotoAndStop(6);
	}
	
	else if (isIdle == true && isWalking == false && isHittingWall == false && isTurning == false && isPressingClicker == true)
	{
		instanceCharacter.gotoAndStop(7);
	}
	
	// WALL ANIMATIONS
	
	if (wallStable == true)
	{
		instanceWall.gotoAndStop(1);
	}
	
	if (wallCrumbling == true)
	{
		instanceWall.gotoAndStop(2);
	}
	
	// CLICKER ANIMATIONS
	
	if (clickerState == false)
	{
		instanceInterfaceClicker.gotoAndStop(1);
	}
	
	if (clickerState == true && sunIsPopped == false)
	{
		instanceInterfaceClicker.gotoAndStop(2);
	}
}