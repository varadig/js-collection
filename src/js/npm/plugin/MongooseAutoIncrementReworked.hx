package js.npm.plugin;

import haxe.extern.EitherType;
import js.Promise;
@:jsRequire("mongoose-auto-increment-reworked", "MongooseAutoIncrementID")
extern class MongooseAutoIncrementReworked{
    @:isVar public var isReady(default, never):Bool;

    public function new(schema:Schema<Dynamic>, modelName:String, ?options:PluginOptions):Void;
    public function applyPlugin():Promise<Dynamic>;
    public static function initialise(?schemaNema:String):Void;
    public static function getDefaults():PluginOptions;
    public static function isReady(schema:Schema<Dynamic>, modelName:String):Bool;
    public static function plugin(schema:Schema<Dynamic>, ?options:SchemaPluginOptions):Promise<Dynamic>;
    public static function setDefaults(nemOpts:PluginOptions):Void;
}

typedef SchemaPluginOptions = {
modelName:String
}
typedef PluginOptions = {
?field:String,
?incrementBy:Int,
?nextCount:EitherType<String, Bool>,
?resetCount:EitherType<String, Bool>,
?startAt:Int,
?unique:Bool
}
