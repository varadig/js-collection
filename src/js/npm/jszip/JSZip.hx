package js.npm.jszip;
import js.node.buffer.Buffer;
@:jsRequire("jszip")
extern class JSZip {
    public function new(?data:Buffer, ?options:Dynamic):Void;
    public function file(name:String, data:Dynamic, ?opt:Dynamic):Void;
    public function generate(options:Dynamic):JSZip;
    public function generateNodeStream(?opts:Dynamic):JSZip;
}
