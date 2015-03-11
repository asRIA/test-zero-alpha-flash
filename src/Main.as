package 
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Loader;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.net.URLRequest;
	
	public class Main extends Sprite 
	{
		
		public function Main():void 
		{
			var loader:Loader = new Loader();
			loader.contentLoaderInfo.addEventListener(Event.COMPLETE, onCompleteHanlder);
			loader.load(new URLRequest("test_transparent.png"))
		}
		
		private function onCompleteHanlder(e:Event):void 
		{
			var loader:Loader = e.currentTarget.loader;
			var bd:BitmapData = (loader.content as Bitmap).bitmapData;
			var emptyColor:int = 0;
			for (var i:int = 0, i_max:int = bd.width; i < i_max; i++) 
			{
				for (var j:int = 0, j_max:int = bd.height; j < j_max; j++) 
				{
					var pixel:uint = bd.getPixel(i, j);
					var pixel32:uint = bd.getPixel32(i, j);
					if (pixel == 0 && pixel32 == 0) {
						emptyColor++;
					}
				}
			}
			trace( "emptyColor : " + emptyColor + " from " + (bd.width * bd.height));
		}
	}
}