import flash.events.Event;

stage.addEventListener(Event.ENTER_FRAME, stageFrameMovementHandler);
stage.addEventListener(KeyboardEvent.KEY_DOWN, stageKeyboardDownHandler);
stage.addEventListener(KeyboardEvent.KEY_UP, stageKeyboardUpHandler);

var movementCounter:int = 0;
var idleCounter:int = 0;

function stageKeyboardDownHandler(event:KeyboardEvent):void
{
	if(event.keyCode == Keyboard.LEFT)
	{
		isLeftPressed = true;
	}
	
	if(event.keyCode == Keyboard.RIGHT)
	{
		isRightPressed = true;
	}
	
	if(event.keyCode == Keyboard.UP)
	{
		isUpPressed = true;
	}
}

function stageKeyboardUpHandler(event:KeyboardEvent):void
{
	isLeftPressed = false;
	isRightPressed = false;
	
	isIdle = true;
	isWalking = false;
	isTurning = false;
	isFalling = false;
	
	movementCounter = 1;
	idleCounter = 1;
}

function stageFrameMovementHandler(event:Event):void
{	
	if (isLeftPressed == true && canMove == true)
	{
		makeCharacterTurn();
		instanceSun.rotation += ROTATION_SUN;
		instanceCharacter.scaleX = -1;
		isIdle = false;
		
		if (instanceCharacter.x < stage.stageWidth * 0.25)
		{
			instanceCharacter.x = instanceCharacter.x;
			instanceForeground.x += SPEED_FOREGROUND;
			instanceForegroundAlt.x += SPEED_FOREGROUND;
			instanceMidgroundBack.x += SPEED_MIDGROUND;
			instanceMidgroundBackAlt.x += SPEED_MIDGROUND;
			instanceMidgroundFore.x += SPEED_MIDGROUND;
			instanceMidgroundForeAlt.x += SPEED_MIDGROUND;
			instanceBackground.x += SPEED_BACKGROUND;
			instanceBackgroundAlt.x += SPEED_BACKGROUND;
			instanceBackgroundDistant.x += SPEED_BACKGROUND_DISTANT;
			instanceBackgroundDistantAlt.x += SPEED_BACKGROUND_DISTANT;
			scrollingForeground();
			scrollingMidgroundBack();
			scrollingMidgroundFore();
			scrollingBackground();
			scrollingBackgroundDistant();

			repeatTheWall();			
			instanceWall.x += SPEED_MIDGROUND;
		}
		else
		{
			instanceCharacter.x -= SPEED_MIDGROUND;
		}
	}
	
	else if (isRightPressed == true && canMove == true)
	{
		makeCharacterTurn();
		instanceSun.rotation += ROTATION_SUN;
		instanceCharacter.scaleX = 1
		isIdle = false;
		
		if (instanceCharacter.x > stage.stageWidth * 0.75)
		{
			instanceCharacter.x = instanceCharacter.x;
			instanceForeground.x -= SPEED_FOREGROUND;
			instanceForegroundAlt.x -= SPEED_FOREGROUND;
			instanceMidgroundBack.x -= SPEED_MIDGROUND;
			instanceMidgroundBackAlt.x -= SPEED_MIDGROUND;
			instanceMidgroundFore.x -= SPEED_MIDGROUND;
			instanceMidgroundForeAlt.x -= SPEED_MIDGROUND;
			instanceBackground.x -= SPEED_BACKGROUND;
			instanceBackgroundAlt.x -= SPEED_BACKGROUND;
			instanceBackgroundDistant.x -= SPEED_BACKGROUND_DISTANT;
			instanceBackgroundDistantAlt.x -= SPEED_BACKGROUND_DISTANT;
			scrollingForeground();
			scrollingMidgroundBack();
			scrollingMidgroundFore();
			scrollingBackground();
			scrollingBackgroundDistant();
			
			repeatTheWall();
			instanceWall.x -= SPEED_MIDGROUND;
		}
		
		else
		{
			instanceCharacter.x += SPEED_MIDGROUND;
		}
	}
	
	if (isRightPressed == false && isLeftPressed == false)
	{
		makeCharacterUnturn();
	}
	
	else
	{
		//instanceCharacter.gotoAndStop(1);
	}
	
}

function makeCharacterTurn():void
{
	idleCounter = 1;
	movementCounter++;
	if (movementCounter >= 1 && movementCounter <= 4)
	{
		isIdle = false;
		isTurning = true;
		isWalking = false;
	}
	
	else if (movementCounter > 5)
	{
		isTurning = false;
		isWalking = true;
	}
	
	else
	{
		isIdle = true;
		isTurning = false;
		isWalking = false;
	}
}

function makeCharacterUnturn():void
{
	movementCounter = 1;
	idleCounter++;
	if (idleCounter >= 1 && idleCounter <= 4)
	{
		isIdle = false;
		isTurning = true;
		isWalking = false;
	}
	
	else if (idleCounter > 5)
	{
		isTurning = false;
		isIdle = true;
	}
	
	else
	{
		isIdle = true;
		isTurning = false;
		isWalking = false;
	}
}
