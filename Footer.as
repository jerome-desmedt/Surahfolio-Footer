package
{
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	
	[SWF(frameRate="40", backgroundColor="0x675E6C", width="1280", height="720")]
	public class Footer extends Sprite
	{
		public var footer:AsFooter;
		
		public function Footer()
		{
			stage.scaleMode=StageScaleMode.NO_SCALE;
			stage.align=StageAlign.TOP_LEFT;
			stage.addEventListener(Event.RESIZE, ResizeFooter);
			InitFooter();
		}
		private function InitFooter():void
		{
			footer=new AsFooter();
			ResizeFooter(null);
			addChild(footer);
		}
		private function ResizeFooter(e:Event):void
		{
			footer.footer_background.width=stage.stageWidth;
			footer.footer_text.x= (stage.stageWidth/2)-(footer.footer_text.width/2);
			footer.y = stage.stageHeight-footer.height; 
		}
	}
}