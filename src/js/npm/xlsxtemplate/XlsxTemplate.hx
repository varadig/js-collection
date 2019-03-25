package js.npm.xlsxtemplate;
import haxe.extern.EitherType;
import js.npm.jszip.JSZip;
import js.node.Buffer;
@:jsRequire('xlsx-template')
extern class XlsxTemplate {
    public function new(?data:Buffer):Void;
    public function deleteSheet(sheetName:String):XlsxTemplate;
    public function copySheet(sheetName:String):XlsxTemplate;
    public function loadTemplate(data:Buffer):Void;
    public function substitute(sheetName:EitherType<String,Int>,substitutions:Dynamic):Void;
    public function generate(?options:XlsxTemplateOptions):JSZip;
    public function writeSharedStrings():Void;
    public function addSharedString(s:String):Int;
    public function stringIndex(s:String):Int;
    public function replaceString(oldStrings:String,newString:String):Int;

    //more coming soon...
}

typedef XlsxTemplateOptions=Dynamic;
