package js.npm.node.websocket;
@:jsRequire("websocket","server")
extern class WebSocketServer {
    public function new(config:Dynamic):Void;
    public function on(event:String,callback:Dynamic->Void):Void;
}
