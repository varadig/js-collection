package js.npm.onesignal.node;

typedef Credentials = {
userAuthKey:String,
?app:{appAuthKey:String, appId:String},
?apps:Dynamic

}


@:jsRequire('onesignal-node',"Client")
extern class Client {
    public function new(credentials:Credentials):Void;
    @:overload(function(notification:Notification):Promise<{}> { })
    public function sendNotification(notification:Notification,callback:Dynamic->Dynamic->Dynamic->Void):Void;

}
@:jsRequire('onesignal-node',"Notification")
extern class Notification{
    public function new(initialBody:Dynamic):Void;

}


