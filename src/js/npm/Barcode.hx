package js.npm;
@:jsRequire('barcode')
extern class Barcode {
    public function new(type:String,opts:{width:Int,height:Int,data:String}):Void;
    public function saveImage(output:Dynamic,callback:Dynamic->Void):Void;
    public function getBase64(callback:Dynamic->String->Void):Void;
}
