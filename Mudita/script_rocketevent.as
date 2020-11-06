instanceRocketLaunch.gotoAndStop(1);
instanceRocketLand.gotoAndStop(1);
instanceOverlay.gotoAndStop(1);
instanceForeground.gotoAndStop(1);
instanceForegroundAlt.gotoAndStop(1);
instanceMidgroundBack.gotoAndStop(1);
instanceMidgroundBackAlt.gotoAndStop(1);
instanceMidgroundFore.gotoAndStop(1);
instanceMidgroundForeAlt.gotoAndStop(1);
instanceBackground.gotoAndStop(1);
instanceBackgroundAlt.gotoAndStop(1);
instanceBackgroundDistant.gotoAndStop(2);
instanceBackgroundDistantAlt.gotoAndStop(1);
instanceBackgroundDistant.gotoAndStop(1);

var popTheSunCounter:int;
var startTheCountdown:Boolean;

stage.addEventListener(Event.ENTER_FRAME, propRocketHandler);

function propRocketHandler(event:Event):void
{
	if (startTheCountdown == true)
	{
		isPressingClicker = true;
		canMove = false;
		popTheSunCounter++;
		instanceCharacter.gotoAndStop(7);
		if (popTheSunCounter > 120)
		{
			instanceRocketLaunch.gotoAndStop(1);
			instanceRocketLand.gotoAndStop(2);
		}
		
		if (popTheSunCounter > 240)
		{
			instanceRocketLand.gotoAndStop(1);
		}
		
		if (popTheSunCounter > 255)
		{
			instanceOverlay.gotoAndStop(3);
		}
		
		if (popTheSunCounter == 256)
		{
			stageSoundChannel = balloonpop.play();
		}
		
		if (popTheSunCounter > 260)
		{
			popTheSun();
			startTheCountdown = false;
			popTheSunCounter = 1;
			trace(popTheSunCounter);
		}
		
	}
	
	else
	{
	}
}

function launchRocket():void
{
	stageSoundChannel = rocketlaunch.play();
	instanceRocketLaunch.gotoAndStop(2);
	startTheCountdown = true;
}

function popTheSun():void
{
	removeChild(instanceSun);
	instanceOverlay.gotoAndStop(2);
	instanceForeground.gotoAndStop(2);
	instanceForegroundAlt.gotoAndStop(2);
	instanceMidgroundBack.gotoAndStop(2);
	instanceMidgroundBackAlt.gotoAndStop(2);
	instanceMidgroundFore.gotoAndStop(2);
	instanceMidgroundForeAlt.gotoAndStop(2);
	instanceBackground.gotoAndStop(2);
	instanceBackgroundAlt.gotoAndStop(2);
	instanceBackgroundDistant.gotoAndStop(2);
	instanceBackgroundDistantAlt.gotoAndStop(2);
	sunIsPopped = true;
	isPressingClicker = false;
	canMove = true;
}