import flash.events.Event;
import flash.events.KeyboardEvent;

// Attach the Clicker to the Wall

var instanceClicker:PropClicker = new PropClicker();
instanceClicker.scaleX = 0.25;
instanceClicker.scaleY = 0.25;
instanceClicker.alpha = 0;

instanceWall.gotoAndStop(1);

stage.addEventListener(Event.ENTER_FRAME, collisionWallHandler);
stage.addEventListener(Event.ENTER_FRAME, fadeWallHandler);
stage.addEventListener(Event.ENTER_FRAME, propClickerHandler);

function propClickerHandler(event:Event):void
{
	instanceClicker.x = instanceWall.x;
	instanceClicker.y = instanceWall.y;
}

var isWallFading:Boolean;
var isClickerFading:Boolean;

function collisionWallHandler(event:Event):void
{
	if (instanceWall.hitTestObject(instanceCharacter) == true)
	{
		canMove = false;
		isWalking = false;
		isHittingWall = true;
		wallStable = false;
		wallCrumbling = true;
		isRightPressed = false;
		isLeftPressed = false;
		wallCrumble();
	}
}

var wallCrumbleTimer:int = 1;

function wallCrumble():void
{
	wallCrumbleTimer++;
	if (wallCrumbleTimer == 2)
	{
		stageSoundChannel = bodythud.play();
	}
	
	if (wallCrumbleTimer == 15)
	{
		stageSoundChannel = wallcollapse.play(); 
	}
	
	if (wallCrumbleTimer == 60)
	{
		spawnClicker();
		isClickerFading = true;
	}
	
	if (wallCrumbleTimer > 95)
	{
		isWallFading = true;
		canMove = true;
		isHittingWall = false;
		stage.removeEventListener(Event.ENTER_FRAME, collisionWallHandler);
	}
}

function fadeWallHandler(event:Event):void
{
	if (isWallFading == true)
	{
		if (instanceWall.alpha > 0)
		{
			instanceWall.alpha -= 0.05;
		}
		
		else if (instanceWall.alpha <= 0)
		{
			isWallFading = false;
			removeChild(instanceWall);
		}
	}
}

function fadeClickerHandler(event:Event):void
{
	if (isClickerFading == true)
	{
		if (instanceClicker.alpha < 1)
		{
			instanceClicker.alpha += 0.05;
		}
		
		else if (instanceClicker.alpha == 1)
		{
			trace("Clicker is now fully spawned");
		}
	}

}

function spawnClicker():void
{
	addChild(instanceClicker);
	stage.addEventListener(Event.ENTER_FRAME, fadeClickerHandler);
}

// Once the Wall crumbles, the player can now pick up the CLICKER

stage.addEventListener(Event.ENTER_FRAME, pickUpClickerHandler);
stage.addEventListener(Event.ENTER_FRAME, sunCollisionHandler);

function pickUpClickerHandler(event:Event):void
{
	if (instanceClicker.hitTestObject(instanceCharacter) == true)
	{
		removeChild(instanceClicker);
		stage.removeEventListener(Event.ENTER_FRAME, pickUpClickerHandler);
		addUIElementClicker();
		playerHasClicker = true;
		stageSoundChannel = clickerpickedup.play();
	}
}

function sunCollisionHandler(event:Event):void
{
	if (instanceSunBox.hitTestObject(instanceCharacter) == true)
	{
		if (playerHasClicker == true)
		{
			trace(soundClickerCounter);
			soundClickerCounter++;
			clickerState = true;
			playClickerSound();
		}
	}
	
	else if (instanceSunBox.hitTestObject(instanceCharacter) == false)
	{
		if (playerHasClicker == true)
		{
			trace(soundClickerCounter);
			soundClickerCounter = 0;
			clickerState = false;
		}
	}
}

stage.addEventListener(KeyboardEvent.KEY_DOWN, spaceButtonHandler);

function spaceButtonHandler (event:KeyboardEvent):void
{
	if (clickerState == true && sunIsPopped == false && event.keyCode == Keyboard.SPACE)
	{
		launchRocket();
	}
	
	else if (clickerState == false && sunIsPopped == false && event.keyCode == Keyboard.SPACE)
	{
		if (playerHasClicker == true)
		{
			stageSoundChannel = clickererror.play();
		}
		
		else
		{
		}
	}
	
	else if (clickerState == true && sunIsPopped == false && event.keyCode == Keyboard.SPACE)
	{
		stageSoundChannel = clickererror.play();
	}
	
	else if (clickerState == false && sunIsPopped == true && event.keyCode == Keyboard.SPACE)
	{
		stageSoundChannel = clickererror.play();
	}
}