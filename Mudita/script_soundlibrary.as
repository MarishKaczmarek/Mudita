var rocketlaunch:Sound_RocketLaunch = new Sound_RocketLaunch(); 
var balloonpop:Sound_BalloonPop = new Sound_BalloonPop();
var bodythud:Sound_BodyThud = new Sound_BodyThud();
var wallcollapse:Sound_BrickCollapse = new Sound_BrickCollapse();
var clickerpickedup:Sound_ClickerPickedUp = new Sound_ClickerPickedUp();
var clickerdetected:Sound_CollisionDetected = new Sound_CollisionDetected();
var clickererror:Sound_ClickerError = new Sound_ClickerError();
var ambiencegeneral:Sound_Ambience = new Sound_Ambience();

var soundClickerCounter:int = 0;

// Plays once when in the zone

function playClickerSound():void
{
	if (soundClickerCounter < 2 && sunIsPopped == false)
	{
		stageSoundChannel = clickerdetected.play();
	}
}

// Plays when the program loads

stageSoundChannel = ambiencegeneral.play();