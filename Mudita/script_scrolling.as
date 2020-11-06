function scrollingForeground():void
{
	if (instanceForeground.x > instanceForeground.x * 0.25)
	{
		instanceForegroundAlt.x = instanceForeground.x;
		instanceForeground.x -= instanceForeground.width;
	}
	
	if (instanceForeground.x < instanceForeground.x * 0.75)
	{
		instanceForegroundAlt.x = instanceForeground.x;
		instanceForeground.x += instanceForeground.width;
	}
}

function scrollingMidgroundBack():void
{
	if (instanceMidgroundBack.x > instanceMidgroundBack.x * 0.25)
	{
		instanceMidgroundBackAlt.x = instanceMidgroundBack.x;
		instanceMidgroundBack.x -= instanceMidgroundBack.width;
	}
	
	if (instanceMidgroundBack.x < instanceMidgroundBack.x * 0.75)
	{
		instanceMidgroundBackAlt.x = instanceMidgroundBack.x;
		instanceMidgroundBack.x += instanceMidgroundBack.width;
	}
}

function scrollingMidgroundFore():void
{
	if (instanceMidgroundFore.x > instanceMidgroundFore.x * 0.25)
	{
		instanceMidgroundForeAlt.x = instanceMidgroundFore.x;
		instanceMidgroundFore.x -= instanceMidgroundFore.width - 40;
		// The 40 is removed to ensure that the two MidGround fores leave no space at the edge (the flowers extend over the width)
	}
	
	if (instanceMidgroundFore.x < instanceMidgroundFore.x * 0.75)
	{
		instanceMidgroundForeAlt.x = instanceMidgroundFore.x;
		instanceMidgroundFore.x += instanceMidgroundFore.width - 40;
		// The 40 is removed to ensure that the two MidGround fores leave no space at the edge (the flowers extend over the width)
	}
}

function scrollingBackground():void
{
	if (instanceBackground.x > instanceBackground.x * 0.25)
	{
		instanceBackgroundAlt.x = instanceBackground.x;
		instanceBackground.x -= instanceBackground.width;
	}
	
	if (instanceBackground.x < instanceBackground.x * 0.75)
	{
		instanceBackgroundAlt.x = instanceBackground.x;
		instanceBackground.x += instanceBackground.width;
	}
}

function scrollingBackgroundDistant():void
{
	if (instanceBackgroundDistant.x > instanceBackgroundDistant.x * 0.25)
	{
		instanceBackgroundDistantAlt.x = instanceBackgroundDistant.x;
		instanceBackgroundDistant.x -= instanceBackgroundDistant.width;
	}
	
	if (instanceBackgroundDistant.x < instanceBackgroundDistant.x * 0.75)
	{
		instanceBackgroundDistantAlt.x = instanceBackgroundDistant.x;
		instanceBackgroundDistant.x += instanceBackgroundDistant.width;
	}
}

function repeatTheWall():void
{
	if (instanceWall.x < stage.stageWidth * -2)
	{
		instanceWall.x += stage.stageWidth * 3.5;
		instanceWall.scaleX = 1
	}
	
	if (instanceWall.x > stage.stageWidth * 2)
	{
		instanceWall.x -= stage.stageWidth * 3.5;
		instanceWall.scaleX = -1;
	}
}