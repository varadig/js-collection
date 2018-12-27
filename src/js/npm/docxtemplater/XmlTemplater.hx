package js.npm.docxtemplater;
import js.Promise;
typedef XmlTemplaterOptions = {
filePath:String,
modules:String,
fileTypeConfig:String,
?xmlFileNames:Array<String>,
?parser:Dynamic,
?linebreaks:Bool,
?delimeters:{?start:String, ?end:String}
}
@:jsRequire("xml-templater")
extern class XmlTemplater {
    public function new(content:String, options:XmlTemplaterOptions):Void;
    public function load(content:String):Void;
    public function setTags(?tags:Dynamic):Void;
    public function resolveTags(?tags:Dynamic):Promise<Dynamic>;
    public function getFullText():String;
    public function setModules(obj:Dynamic):Void;
    public function parse():XmlTemplater;
    public function errorChecker(errors:Array<Dynamic>):Void;
    public function baseNullGetter(part:Dynamic,sm:Dynamic):Dynamic;
    public function getOptions():Dynamic;
    public function render(to:String):XmlTemplater;
}
