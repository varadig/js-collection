package js.npm.docxtemplater;
import js.Promise;
@:jsRequire("docxtemplater")
extern class Docxtemplater {
    public function new():Void;
    public function getModuleApiVersion():String;
    public function verifyApiVersion(neededVersion:String):Bool;
    public function setModules(obj:Dynamic):Void;
    public function sendEvent(eventName:String):Void;
    public function attachModule(module:Dynamic,?options:Dynamic):Docxtemplater;
    public function setOptions(options:Dynamic):Docxtemplater;
//TODO change dynamic to  zip object
    public function loadZip(zip:Dynamic):Docxtemplater;
    public function compileFile(fileName:String):Void;
    public function resolveData(data:Dynamic):Promise<Dynamic>;
    public function compile():Docxtemplater;
    public function updateFileTypeConfig():Docxtemplater;
    public function render():Docxtemplater;
    public function syncZip():Void;
    public function setData(tags:Dynamic):Docxtemplater;
    public function getZip():JSZip;
    public function createTemplateClass(path:String):XmlTemplater;
    public function createTemplateClassFromContent(content:Dynamic,filePath:String):XmlTemplater;
    public function getFullText(path:String):String;
    public function getTemplatedFiles():Dynamic;


}
