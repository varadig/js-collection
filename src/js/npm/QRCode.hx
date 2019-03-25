package js.npm;
import js.node.Fs.FsPath;
import haxe.extern.EitherType;
@:jsRequire("qrcode-svg")
extern class QRCode {
    public function new(data:EitherType<QRCodeOptions, String>):Void;
    public function svg(?opt:Dynamic):Dynamic;
    public function save(file:FsPath, callback:Error -> Void):Void;
}

typedef QRCodeOptions = {
content:String,
?padding:String,
?width:Int,
?height:Int,
?color:EitherType<String, UInt>,
?background:EitherType<String, UInt>,
?ecl:QRCodeEcl
}

@:enum abstract QRCodeEcl(String) to String{
    var L = "L";
    var M = "M";
    var Q = "Q";
    var H = "H";
}
