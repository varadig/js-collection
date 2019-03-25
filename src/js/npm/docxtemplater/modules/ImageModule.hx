package js.npm.docxtemplater.modules;
@:jsRequire("docxtemplater-image-module")

extern class ImageModule {
    public function new(opts:ImageModuleOptions):Void;
    public function optionsTransformer(opts:ImageModuleOptions,templater:Docxtemplater):ImageModuleOptions;
    public function set(opts:ImageModuleOptions):Void;
    public function parse(placeHolderContent:String):Dynamic;
}
typedef ImageModuleOptions = {
?centered:Bool,
getSize:String -> String -> String -> Array<Int>,
getImage:String -> String -> Dynamic
}
