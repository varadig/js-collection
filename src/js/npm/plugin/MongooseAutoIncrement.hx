package js.npm.plugin;
@:jsRequire("mongoose-auto-increment")
extern class MongooseAutoIncrement {
    public function new() :Void;
    public static function initialize(connection:Mongoose):Void;
}
