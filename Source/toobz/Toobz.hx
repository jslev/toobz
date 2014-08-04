package toobz;

import flash.display.Sprite;
import flash.text.TextField;
import flash.display.Shape;
import flash.geom.Rectangle;
import flash.geom.Point;
import flash.display.GradientType;
class Toobz extends Sprite
{
	
	private static var NUM_ROWS:UInt = 10;
	private static var NUM_COLUMNS:UInt = 10;
	private var Score:TextField;
	private static var Name:String;
	private var OtherText:TextField;
	var grad:GradientType;
	var i:Int;

	public function new ()
	{
		super ();
		startGame ();
	}
	
	private function startGame():Void
	{

		drawGrid ();

	}


	private function drawGrid():Array<Array<Sprite>>
	{
		var squareWidth = 50;
		var squareHeight =  50;

		var color:UInt = 0xaa00cc;
		var pad = 5;

	 	var counter = 0;
	 	var x, y;

	 	var i:Int;
	 	var j:Int;

		//Initialize empty 2d array corresponding to tile grid
		var tileGrid:Array<Array<Sprite>> = [for (i in 0...NUM_ROWS) [for (j in 0...NUM_COLUMNS) null]];

		//Populate it with actual stuff!
		for (i in 0...NUM_ROWS)
		{

			for (j in 0...NUM_COLUMNS)
			{
				tileGrid[i][j] = new Sprite();
				tileGrid[i][j].graphics.beginFill(color);
				tileGrid[i][j].graphics.drawRoundRect( squareWidth*i, squareHeight*j, squareWidth - pad, squareHeight - pad, 0.25*squareWidth , 0.25*squareHeight);

				addChild(tileGrid[i][j]);
				++counter;
			}
		}
		return tileGrid;
	}
}

