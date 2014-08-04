package;


import flash.display.Bitmap;
import flash.display.Sprite;
import haxe.ui.toolkit.controls.Text;
import openfl.events.Event;
import flash.text.TextField;
import flash.text.TextFormat;
import openfl.Assets;



import haxe.ui.toolkit.core.Macros;
import haxe.ui.toolkit.core.Toolkit;
import haxe.ui.toolkit.core.Root;
import haxe.ui.toolkit.controls.Button;
import haxe.ui.toolkit.events.UIEvent;


import toobz.Toobz;
class Main extends Sprite {

	private var Background:Bitmap;
	private var Footer:Bitmap;
	private var Game:Toobz; 
	
	public function new () {
		
		super ();
		
		initialize ();
		construct ();
		
	}
	
	
	private function construct ():Void {
		
		Footer.smoothing = true;
		
		addChild (Background);
		addChild (Footer);
		// addChild (Game);

		
	}
	
	private function drawMenu():Void{

		//Using haxeUI for ui elements, which is cool
		// but documentation is nonexistent as of now.
		// Eventually we can define ui in xml, which is nicer.
		Toolkit.init();
		Toolkit.openFullscreen(function(root:Root){
			
			var title = new Text();
			title.text = "TOOOOBZ";
			title.x = 250;
			root.addChild(title);

			var but = new Button();
			but.x = 250;
			but.y = 400;
			but.text = "Play!";
			but.autoSize = true;

			// What to do when you click the play button
			but.onClick = function(e:UIEvent) {
			e.component.text = "You clicked me!";
			addChild(Game);
			root.dispose();
			};
			root.addChild(but);
		});
	}
	
	private function initialize ():Void {
		
		Background = new Bitmap (Assets.getBitmapData ("images/background_tile.png"));
		Footer = new Bitmap (Assets.getBitmapData ("images/center_bottom.png"));
		Game = new Toobz();
		drawMenu();
		
	}
	
	
	
}