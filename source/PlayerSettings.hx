import flixel.FlxG;

class PlayerSettings
{
	static public var controls(get, null):Controls;

	static public function init():Void
	{
		get_controls();
		var numGamepads = FlxG.gamepads.numActiveGamepads;
		if (numGamepads > 0)
		{
			var gamepad = FlxG.gamepads.getByID(0);
			if (gamepad == null)
				throw 'Unexpected null gamepad. id:0';
		}
	}

	static inline function get_controls():Controls
	{
		if (controls == null)
			return controls = new Controls("controls",Solo);
		return controls;
	} 
}
