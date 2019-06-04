package js.npm.node.cron;
@:jsRequire("node-cron")

extern class NodeCron {

    public static function schedule(expression:String,func:Void->Void,?options:Dynamic):ScheduleTask;
    public static function validate(expression:String):Bool;

}


