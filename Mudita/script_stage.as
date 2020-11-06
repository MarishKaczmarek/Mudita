for (var s:int = 1; s <= 10; s++)
{
	var instanceStar:PropStar = new PropStar();
	instanceStar.x = Math.random() * stage.stageWidth;
	instanceStar.y = Math.random() * stage.stageHeight / 2;
	instanceStar.rotation = Math.random() * 360;
	instanceStar.alpha = Math.random();
	instanceStar.scaleX = Math.random();
	instanceStar.scaleY = instanceStar.scaleX;
	stage.addChildAt(instanceStar, 0);
	
	var instanceStar2:PropStar2 = new PropStar2();
	instanceStar2.x = Math.random() * stage.stageWidth;
	instanceStar2.y = Math.random() * stage.stageHeight / 2;
	instanceStar2.rotation = Math.random() * 360;
	instanceStar2.alpha = Math.random();
	instanceStar2.scaleX = Math.random();
	instanceStar2.scaleY = instanceStar2.scaleX;
	stage.addChildAt(instanceStar2, 0);
	
	var instanceStar3:PropStar3 = new PropStar3();
	instanceStar3.x = Math.random() * stage.stageWidth;
	instanceStar3.y = Math.random() * stage.stageHeight / 2;
	instanceStar3.rotation = Math.random() * 360;
	instanceStar3.alpha = Math.random();
	instanceStar3.scaleX = Math.random();
	instanceStar3.scaleY = instanceStar3.scaleX;
	stage.addChildAt(instanceStar3, 0);
}