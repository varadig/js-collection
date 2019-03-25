package js.npm;
@:jsRequire('code-128-encoder')
extern class Code128Encoder {
    public function new():Void;
    public function encode(code:String):String;
}
