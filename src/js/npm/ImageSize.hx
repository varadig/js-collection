package js.npm;
import js.node.Buffer;
import haxe.extern.EitherType;
@:jsRequire("image-size")

extern class ImageSize {

    @:overload(function(input:EitherType<String, Buffer>, callback:Dynamic -> Dimension -> Void):Void { })
    @:overload(function(input:EitherType<String, Buffer>):Promise<Dynamic>{ })
    static function sizeOf(input:EitherType<String, Buffer>):Dimension;
}
typedef Dimension = {
height:Int,
width:Int
}
